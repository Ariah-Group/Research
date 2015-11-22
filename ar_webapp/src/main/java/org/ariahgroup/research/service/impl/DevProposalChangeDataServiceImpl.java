/**
 * Copyright 2015 The Ariah Group, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */
package org.ariahgroup.research.service.impl;

import java.awt.Component;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.ariahgroup.research.proposaldevelopment.notification.ChangedDataNotificationRenderer;
import org.ariahgroup.research.proposaldevelopment.notification.ChangedDataNotificationService;
import org.ariahgroup.research.service.DevProposalChangeDataService;
import org.kuali.kra.common.notification.service.KcNotificationService;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.kra.proposaldevelopment.bo.ProposalChangedData;
import org.kuali.kra.proposaldevelopment.notification.ProposalDevelopmentNotificationContext;
import org.kuali.kra.proposaldevelopment.service.ProposalDevelopmentService;
import org.kuali.rice.core.api.CoreApiServiceLocator;
import org.kuali.rice.core.api.config.property.ConfigurationService;
import org.kuali.rice.kim.api.group.Group;
import org.kuali.rice.krad.bo.PersistableBusinessObject;
import org.kuali.rice.krad.datadictionary.DataDictionaryEntry;
import org.kuali.rice.krad.datadictionary.DataObjectEntry;
import org.kuali.rice.krad.datadictionary.RelationshipDefinition;
import org.kuali.rice.krad.datadictionary.validation.AttributeValueReader;
import org.kuali.rice.krad.datadictionary.validation.DictionaryObjectAttributeValueReader;
import org.kuali.rice.krad.datadictionary.validation.capability.Constrainable;
import org.kuali.rice.krad.service.BusinessObjectService;
import org.kuali.rice.krad.service.DataDictionaryService;
import org.kuali.rice.krad.service.KRADServiceLocator;
import org.kuali.rice.krad.service.KRADServiceLocatorWeb;
import org.kuali.rice.krad.service.PersistenceStructureService;
import org.kuali.rice.krad.service.XmlObjectSerializerService;
import org.kuali.rice.krad.util.ObjectUtils;

/**
 *
 * @author Ariah Group
 */
public class DevProposalChangeDataServiceImpl implements DevProposalChangeDataService {

    private BusinessObjectService boSvc;
    private DataDictionaryService dataDictionaryService;
    private XmlObjectSerializerService serializerService;
    private PersistenceStructureService persistenceStructureService;
    private ConfigurationService configurationService;
    private ChangedDataNotificationService changedDataNotificationService;
    public static final String MESSAGE_DELETED = "message.deleted";
    public static final String MESSAGE_ADDED = "message.added";
    public static final String[] ATTRIBUTE_NAMES_TO_IGNORE = {"extension", "executiveSummaryRequired", "sponsorDeadlineRequired", "proposalCoordinatorRequired", "proposalStateTypeCode", "proposalTypeCode", "updateTimestamp", "updateUser"};
    protected List<String> attrsToIgnore = Arrays.asList(ATTRIBUTE_NAMES_TO_IGNORE);

    @Override
    public Map<String, ProposalChangedData> getChangedFields(DevelopmentProposal proposalEdited) {

        Map<String, ProposalChangedData> results = new HashMap<String, ProposalChangedData>();

        Map<String, String> primaryKeys = new HashMap<String, String>();
        primaryKeys.put("proposalNumber", proposalEdited.getProposalNumber());

        DevelopmentProposal proposalExisting = (DevelopmentProposal) getBusinessObjectService().findByPrimaryKey(DevelopmentProposal.class, primaryKeys);   //getSerializerService().fromXml(xml);

        if (proposalExisting == null) {
            return results;

        } else {
            final String entryName = DevelopmentProposal.class.getCanonicalName();
            final String proposalNumber = proposalEdited.getProposalNumber();
            DataDictionaryEntry entry = getDataDictionaryService().getDataDictionary().getDictionaryObjectEntry(entryName);
            AttributeValueReader attrReaderExisting = new DictionaryObjectAttributeValueReader(proposalExisting, entryName, entry);
            AttributeValueReader attrReaderEdited = new DictionaryObjectAttributeValueReader(proposalEdited, entryName, entry);
            ArrayList<String> attributeNamePrefix = new ArrayList<String>();

            results.putAll(createChangesForFields(proposalNumber, entry, attrReaderExisting, attrReaderEdited, attributeNamePrefix, attrsToIgnore));

            // look for changes in related objects
            for (RelationshipDefinition relnDefn : entry.getRelationships()) {
                String relatedClassCanonicalName = relnDefn.getTargetClass().getCanonicalName();
                DataDictionaryEntry relatedObjectEntry = getDataDictionaryService().getDataDictionary().getDictionaryObjectEntry(relatedClassCanonicalName);

                Object existingRelatedObject = attrReaderExisting.getValue(relnDefn.getObjectAttributeName());
                AttributeValueReader existingRelatedObjectReader = new DictionaryObjectAttributeValueReader(
                        existingRelatedObject,
                        relatedClassCanonicalName, relatedObjectEntry);

                Object editedRelatedObject = attrReaderEdited.getValue(relnDefn.getObjectAttributeName());
                AttributeValueReader editedRelatedObjectReader = new DictionaryObjectAttributeValueReader(
                        editedRelatedObject,
                        relatedClassCanonicalName, relatedObjectEntry);

                if (!((existingRelatedObject == null) && (editedRelatedObject == null))) {

                    attributeNamePrefix.add(relnDefn.getObjectAttributeName());
                    int pathCount = attributeNamePrefix.size();
                    final String path = StringUtils.join(attributeNamePrefix, ".");

                    // if one is null then value changed
                    if (existingRelatedObject == null) {
                        // related object added
                        final String comments = ((DataObjectEntry) relatedObjectEntry).getObjectLabel() + " - "
                                + getConfigurationService().getPropertyValueAsString(MESSAGE_ADDED);
                        results.put(path, createChangedData(proposalNumber, (PersistableBusinessObject) editedRelatedObject, path, comments));
                    } else if (editedRelatedObject == null) {
                        // related object deleted
                        final String comments = ((DataObjectEntry) relatedObjectEntry).getObjectLabel() + " - "
                                + getConfigurationService().getPropertyValueAsString(MESSAGE_DELETED);
                        results.put(path, createChangedData(proposalNumber, (PersistableBusinessObject) existingRelatedObject, path, comments));
                    } else {
                        // both not null, compare values
                        results.putAll(createChangesForFields(proposalNumber, relatedObjectEntry, existingRelatedObjectReader, editedRelatedObjectReader, attributeNamePrefix, attrsToIgnore));
                    }
                    // remove parent attribute names for this 'branch'
                    for (int p = pathCount; p <= attributeNamePrefix.size(); p++) {
                        attributeNamePrefix.remove(p - 1);
                    }
                }
            }
            return results;
        }
    }

    /**
     * create changes for fields
     *
     * @param proposalNumber - the proposal number to set
     * @param entry - the data dictionary object for the object whose fields are
     * being checked for changes
     * @param attrReaderExisting - attribute reader for the existing object
     * @param attrReaderEdited - attribute reader for the (possibly) edite
     * object
     * @param attributeNamePrefix - the attribute prefix, useful for nested
     * objects and collections
     * @param attrsToIgnore TODO
     */
    protected Map<String, ProposalChangedData> createChangesForFields(
            final String proposalNumber, DataDictionaryEntry entry,
            AttributeValueReader attrReaderExisting,
            AttributeValueReader attrReaderEdited, List<String> attributeNamePrefix, List<String> attrsToIgnore) {

        //      System.out.println("Calling createChangesForFields for proposalNumber = " + proposalNumber);
        Map<String, ProposalChangedData> results = new HashMap<String, ProposalChangedData>();
        List<Constrainable> definitions = attrReaderExisting.getDefinitions();

        for (Constrainable definition : definitions) {
            String attributeName = definition.getName();

            attrReaderExisting.setAttributeName(attributeName);
            attrReaderEdited.setAttributeName(attributeName);

            if (attrReaderExisting.isReadable() && !attrsToIgnore.contains(attributeName)) {
                // System.out.println("attributeName " + attributeName + " NOT in attrsToIgnore");
                Object existingValue = attrReaderExisting.getValue(attributeName);
                Object newValue = attrReaderEdited.getValue(attributeName);

                //      System.out.println("proposalNumber = " + proposalNumber + " , attributeName = " + attributeName);
                //      System.out.println("          existingValue = " + existingValue);
                //      System.out.println("          newValue = " + newValue);
                if (valueChanged(newValue, existingValue)) {

                    attributeNamePrefix.add(attributeName);
                    ProposalChangedData changedData = new ProposalChangedData();
                    String path = StringUtils.join(attributeNamePrefix, ".");
                    //     System.out.println("valueChanged true, path = " + path);
                    changedData.setAttributeName(path);
                    changedData.setOldDisplayValue(ObjectUtils.formatPropertyValue(existingValue));
                    changedData.setDisplayValue(ObjectUtils.formatPropertyValue(newValue));
                    changedData.setColumnName(path);
                    changedData.setComments(entry.getAttributeDefinition(attributeName).getLabel());
                    changedData.setProposalNumber(proposalNumber);
                    results.put(path, changedData);
                    attributeNamePrefix.remove(attributeNamePrefix.size() - 1);
                } else {
                    //    System.out.println("valueChanged false");
                }
            } else {
                //  System.out.println("attributeName " + attributeName + " is IN attrsToIgnore");
            }
        }

        results.putAll(getChangedCollectionFields(attrReaderExisting, attrReaderEdited, proposalNumber, attributeNamePrefix));

        return results;
    }

    /**
     * determine if a value has changed
     *
     * @param newValue
     * @param existingValue
     * @return true if there is a change, false otherwise
     * @see
     * org.kuali.rice.krad.uif.modifier.CompareFieldCreateModifier.performValueComparison(Group,
     * Component, Object, String)
     */
    protected boolean valueChanged(Object newValue, Object existingValue) {
        boolean valueChanged = false;

        if (newValue == null && existingValue == null) {
            // values both the same, so haven't changed
            valueChanged = false;
        } else if (newValue == null || existingValue == null) {
            // then only 1 of the values is null, so something HAS changed
            valueChanged = true;
        } else {
            // both not null, compare values to see if value changed
            valueChanged = !newValue.equals(existingValue);
        }

        return valueChanged;
    }

    /**
     * get info on changed collection fields for an object compared to values in
     * the database
     *
     * @param attrReaderExisting - attribute reader for the existing saved data
     * @param attrReaderEdited - - attribute reader for the user submitted
     * (possibly edited) data
     * @param proposalNumber - the proposal number to use in the changed data
     * objects
     * @param attributeNamePrefix - a list holding parent attribute names
     * @param objectClass - the class of the persistable business object whose
     * collections we wish to check for changes
     * @return the changed fields if there is a database copy and changes exist,
     * false otherwise
     * <p>
     * the key is the path to the attribute e.g. proposalPersons[1]
     * (add/delete), proposalPersons[1].userName (edit) </p>
     */
    protected Map<String, ProposalChangedData> getChangedCollectionFields(
            AttributeValueReader attrReaderExisting, AttributeValueReader attrReaderEdited, String proposalNumber, List<String> attributeNamePrefix) {

        Map<String, ProposalChangedData> results = new HashMap<String, ProposalChangedData>();
        final Class<? extends Object> objectClass = attrReaderExisting.getObject().getClass();

        //  System.out.println("Calling getChangedCollectionFields for proposalNumber = " + proposalNumber + " , class = " + objectClass.getCanonicalName());
        @SuppressWarnings("rawtypes")

        final String messageDeleted = getConfigurationService().getPropertyValueAsString(MESSAGE_DELETED);
        final String messageAdded = getConfigurationService().getPropertyValueAsString(MESSAGE_ADDED);

        Map<String, Class> ojbCollectionDefs = getPersistenceStructureService().listCollectionObjectTypes(objectClass);
        for (String collectionName : ojbCollectionDefs.keySet()) {

            //  System.out.println("    proposalNumber = " + proposalNumber + " , collectionName = " + collectionName);
            if (getPersistenceStructureService().isCollectionUpdatable(objectClass, collectionName)) {
                //    System.out.println("    proposalNumber = " + proposalNumber + " , collectionName = " + collectionName + " isUpdatable");
                Collection<? extends PersistableBusinessObject> editedCollection = attrReaderEdited.getValue(collectionName);
                Collection<? extends PersistableBusinessObject> existingCollection = attrReaderExisting.getValue(collectionName);
                // set collections to empty if null, to avoid npes while iterating
                if (editedCollection == null) {
                    editedCollection = Collections.emptyList();
                }
                if (existingCollection == null) {
                    existingCollection = Collections.emptyList();
                }
                // look for deletions
                final Class<?> collectionClass = ojbCollectionDefs.get(collectionName);
                String objectLabel = getDataDictionaryService().getDataDictionary().getBusinessObjectEntryForConcreteClass(
                        collectionClass.getCanonicalName()).getObjectLabel();
                //      System.out.println("      objectLabel = " + objectLabel);

                Map<String, ProposalChangedData> deletedData = createChangeDataForCollection(objectLabel, proposalNumber, collectionName,
                        editedCollection, existingCollection, messageDeleted, attributeNamePrefix);

                // look for additions
                Map<String, ProposalChangedData> addedData = createChangeDataForCollection(objectLabel, proposalNumber, collectionName,
                        existingCollection, editedCollection, messageAdded, attributeNamePrefix);

                results.putAll(deletedData);
                results.putAll(addedData);

                /*
                 *  look for edits to collection items if an item is not newly added
                 */
                final String entryName = collectionClass.getCanonicalName();
                DataDictionaryEntry entry = getDataDictionaryService().getDataDictionary().getDictionaryObjectEntry(
                        entryName);
                //      System.out.println("    proposalNumber = " + proposalNumber + " , entryName = " + entryName + " , existingCollection.size : " + existingCollection.size());
                //      System.out.println("    proposalNumber = " + proposalNumber + " , entryName = " + entryName + " , editedCollection.size : " + editedCollection.size());
                for (PersistableBusinessObject existingItem : existingCollection) {
                    //         System.out.println("           existingItem.toString = " + existingItem.toString());
                    int index = 0;
                    for (Iterator<? extends PersistableBusinessObject> i = editedCollection.iterator(); i.hasNext();) {
                        final PersistableBusinessObject editedItem = (PersistableBusinessObject) i.next();
                        if (ObjectUtils.equalByKeys(editedItem, existingItem)) {
                            AttributeValueReader itemReaderExisting = new DictionaryObjectAttributeValueReader(existingItem, entryName, entry);
                            AttributeValueReader itemReaderEdited = new DictionaryObjectAttributeValueReader(editedItem, entryName, entry);
                            if (!isCollectionItemNewOrDeleted(collectionName, results, index)) {
                                String attributeNamePrefixForCollectionItem = getAttributeNameSuffixForCollectionItem(collectionName, null, index);
                                attributeNamePrefix.add(attributeNamePrefixForCollectionItem);
                                int pathCount = attributeNamePrefix.size();
                                results.putAll(createChangesForFields(proposalNumber, entry, itemReaderExisting, itemReaderEdited, attributeNamePrefix, attrsToIgnore));
                                // remove parent attribute names for this 'branch'
                                for (int p = pathCount; p <= attributeNamePrefix.size(); p++) {
                                    attributeNamePrefix.remove(p - 1);
                                }
                            }
                        }
                    }
                    index += 1;
                }
            }
        }

        return results;
    }

    /**
     * check whether the changed data so far contains a key to indicate that
     * this is item is either new or deleted and therefore skip creating changes
     * for fields
     *
     * @param collectionName - the attribute name prefix
     * @param changedData - the changed data
     * @param index TODO
     * @return true if the changed data results contain new or deleted changed
     * data for the item with this prefix
     */
    protected boolean isCollectionItemNewOrDeleted(String collectionName, Map<String, ProposalChangedData> changedData, int index) {

        //   System.out.println("Calling isCollectionItemNewOrDeleted for collectionName = " + collectionName + " , index = " + index);
        String[] comments = {getConfigurationService().getPropertyValueAsString(MESSAGE_DELETED),
            getConfigurationService().getPropertyValueAsString(MESSAGE_ADDED)};

        for (String path : changedData.keySet()) {
            //    System.out.println("            path = " + path);
            for (String comment : comments) {
                String attribNameSuff = getAttributeNameSuffixForCollectionItem(collectionName, comment, index);
                //      System.out.println("      attribNameSuff = " + attribNameSuff + " , comment = " + comment);
                if (path.endsWith(attribNameSuff)) {
                    return true;
                }
            }
        }
        return false;
    }

    /**
     * create a changed data object for deleted or added collection item
     *
     * @param collectionObjectLabel - the label to use for the collection item
     * @param proposalNumber - the proposal number
     * @param collectionName - the collection name i.e. the YYY in getYYY
     * @param hayStackCollection - the collection to search whether a given item
     * exists
     * @param needleCollection - the collection whose items are checked for
     * existence in hayStackCollection
     * @param commentMessage
     * @param attributeNamePrefix - a list holding parent attribute names
     * @return the changed data if any, an empty list otherwise
     */
    protected Map<String, ProposalChangedData> createChangeDataForCollection(String collectionObjectLabel, String proposalNumber,
            String collectionName, Collection<? extends PersistableBusinessObject> hayStackCollection,
            Collection<? extends PersistableBusinessObject> needleCollection, String commentMessage, List<String> attributeNamePrefix) {

        Map<String, ProposalChangedData> results = new HashMap<String, ProposalChangedData>();
        int index = 0;
        for (PersistableBusinessObject needle : needleCollection) {
            if (!ObjectUtils.collectionContainsObjectWithIdentitcalKey(hayStackCollection, needle)) {
                attributeNamePrefix.add(getAttributeNameSuffixForCollectionItem(collectionName,
                        commentMessage, index));
                final String path = StringUtils.join(attributeNamePrefix, ".");
                final String comments = collectionObjectLabel + " - " + commentMessage;

                ProposalChangedData changedData = createChangedData(
                        proposalNumber, needle, path, comments);
                changedData.setNewOrDeletedCollectionItem(true);
                results.put(path, changedData);
                attributeNamePrefix.remove(attributeNamePrefix.size() - 1);
            }
            index += 1;
        }

        return results;
    }

    /**
     * create changed data
     *
     * @param proposalNumber - the proposal number (foreign key)
     * @param object - the object to create the changed data for
     * @param path - the unique path to this object
     * @param comments - the comments
     * @return changed data
     */
    protected ProposalChangedData createChangedData(String proposalNumber, PersistableBusinessObject object, final String path,
            final String comments) {
        ProposalChangedData changedData = new ProposalChangedData();
        changedData.setAttributeName(path);
        changedData.setDisplayValue(getDisplayFields(object));
        changedData.setProposalNumber(proposalNumber);
        changedData.setComments(comments);
        changedData.setColumnName(path);

        return changedData;
    }

    /**
     * show a BO's fields using the label and value
     *
     * @param bo - the bo to display fields
     * @return the fields in the format label:value, label2: value2. empty
     * string if no data dictionary attribute definitions found
     */
    public String getDisplayFields(PersistableBusinessObject bo) {
        final String entryName = bo.getClass().getCanonicalName();
        DataDictionaryEntry entry = getDataDictionaryService().getDataDictionary().getDictionaryObjectEntry(entryName);
        AttributeValueReader attrReader = new DictionaryObjectAttributeValueReader(bo, entryName, entry);
        StringBuilder buffer = new StringBuilder(100);
        for (Constrainable defn : attrReader.getDefinitions()) {
            // leave out null values
            Object value = attrReader.getValue(defn.getName());
            if (value != null) {
                buffer.append(attrReader.getLabel(defn.getName()));
                buffer.append(": ");
                buffer.append(value);
                buffer.append(", ");
            }
        }

        return buffer.toString();
    }

    /**
     * used in creating the path to the collection item, which is used as a key
     * to the map of changed data
     *
     * @param collectionName - the collection name e.g proposalPersons
     * @param commentMessage - optional comment message
     * @param index - the collection index
     * @return the attribute name suffix
     */
    protected String getAttributeNameSuffixForCollectionItem(
            String collectionName, String commentMessage, int index) {
        StringBuilder buffer = new StringBuilder(100);
        buffer.append(collectionName);
        buffer.append("[");
        buffer.append(index);
        buffer.append("]");
        if (!StringUtils.isEmpty(commentMessage)) {
            buffer.append("<");
            buffer.append(commentMessage);
            buffer.append(">");
        }

        return buffer.toString();
    }

    /**
     * @return the boSvc
     */
    public BusinessObjectService getBusinessObjectService() {
        if (boSvc == null) {
            boSvc = KRADServiceLocator.getBusinessObjectService();
        }
        return boSvc;
    }

    /**
     * @param boSvc the boSvc to set
     */
    public void setBusinessObjectService(BusinessObjectService boSvc) {
        this.boSvc = boSvc;
    }

    /**
     * @return Returns the dataDictionaryService.
     */
    public DataDictionaryService getDataDictionaryService() {
        if (dataDictionaryService == null) {
            dataDictionaryService = KRADServiceLocatorWeb.getDataDictionaryService();
        }
        return dataDictionaryService;
    }

    /**
     * @param dataDictionaryService The dataDictionaryService to set.
     */
    public void setDataDictionaryService(DataDictionaryService dataDictionaryService) {
        this.dataDictionaryService = dataDictionaryService;
    }

    /**
     * @return the serializerService
     */
    public XmlObjectSerializerService getSerializerService() {
        if (serializerService == null) {
            serializerService = KRADServiceLocator.getXmlObjectSerializerService();
        }
        return serializerService;
    }

    /**
     * @param serializerService the serializerService to set
     */
    public void setSerializerService(XmlObjectSerializerService serializerService) {
        this.serializerService = serializerService;
    }

    /**
     * @return the persistenceStructureService
     */
    public PersistenceStructureService getPersistenceStructureService() {
        if (persistenceStructureService == null) {
            persistenceStructureService = KRADServiceLocator.getPersistenceStructureService();
        }
        return persistenceStructureService;
    }

    /**
     * @param persistenceStructureService the persistenceStructureService to set
     */
    public void setPersistenceStructureService(
            PersistenceStructureService persistenceStructureService) {
        this.persistenceStructureService = persistenceStructureService;
    }

    /**
     * @return the configurationService
     */
    public ConfigurationService getConfigurationService() {
        if (configurationService == null) {
            configurationService = CoreApiServiceLocator.getKualiConfigurationService();
        }
        return configurationService;
    }

    /**
     * @param configurationService the configurationService to set
     */
    public void setConfigurationService(ConfigurationService configurationService) {
        this.configurationService = configurationService;
    }

    @Override
    public void saveChangeData(Map<String, ProposalChangedData> changedData) {
        for (ProposalChangedData change : changedData.values()) {
            change.setChangeNumber(getNextChangeNumber(change.getProposalNumber(), change.getColumnName()));
            getBusinessObjectService().save(change);
        }
    }

    /**
     * generate a change number
     *
     * @param proposalNumber - the proposal number
     * @param columnName - the column name - attribute name or path
     * @return the next incremental change number for this unique combination of
     * proposal number and column name
     */
    protected int getNextChangeNumber(String proposalNumber, String columnName) {
        int changeNumber = 0;
        Map<String, Object> keyMap = new HashMap<String, Object>();
        keyMap.put("proposalNumber", proposalNumber);
        keyMap.put("columnName", columnName);
        List<ProposalChangedData> changedDataList = (List<ProposalChangedData>) getBusinessObjectService().findMatchingOrderBy(
                ProposalChangedData.class, keyMap, "changeNumber", true);
        if (CollectionUtils.isNotEmpty(changedDataList)) {
            changeNumber = ((ProposalChangedData) changedDataList.get(changedDataList.size() - 1)).getChangeNumber();
        }

        return ++changeNumber;
    }

    @Override
    public Collection<ProposalChangedData> getChangeDataForProposal(String proposalNumber) {
        Collection<ProposalChangedData> changes = new ArrayList<ProposalChangedData>();
        DevelopmentProposal propObj = KRADServiceLocator.getBusinessObjectService().findBySinglePrimaryKey(
                DevelopmentProposal.class, proposalNumber);
        if (propObj == null) {
            return changes;
        } else {
            propObj.refreshNonUpdateableReferences();
            return propObj.getProposalChangedDataList();
        }
    }

    @Override
    public void sendChangeDataNotification(Collection<ProposalChangedData> changedData, DevelopmentProposal developmentProposal) {
        ChangedDataNotificationRenderer renderer = new ChangedDataNotificationRenderer(developmentProposal, changedData);
        renderer.setProposalDevelopmentService(KraServiceLocator.getService(ProposalDevelopmentService.class));
        ProposalDevelopmentNotificationContext context = new ProposalDevelopmentNotificationContext(
                developmentProposal,
                "104",
                "Development Proposal Data Updates Tracking",
                renderer);
        getChangedDataNotificationService().sendNotification(context);

    }

    public ChangedDataNotificationService getChangedDataNotificationService() {
        if (changedDataNotificationService == null) {
            changedDataNotificationService = KraServiceLocator.getService(ChangedDataNotificationService.class);
        }
        return changedDataNotificationService;
    }

    public void setChangedDataNotificationService(ChangedDataNotificationService changedDataNotificationService) {
        this.changedDataNotificationService = changedDataNotificationService;
    }

}
