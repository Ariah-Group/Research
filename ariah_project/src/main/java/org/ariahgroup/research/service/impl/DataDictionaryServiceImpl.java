/**
 * Copyright 2015 The Ariah Group, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.ariahgroup.research.service.impl;

import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.ariahgroup.research.datadictionary.DataDictionary;
import org.kuali.rice.krad.datadictionary.InactivationBlockingMetadata;
import org.kuali.rice.krad.uif.UifConstants.ViewType;
import org.kuali.rice.krad.uif.view.View;

/**
 * @author The Ariah Group, Inc.
 *
 */
public class DataDictionaryServiceImpl extends org.kuali.rice.kns.service.impl.DataDictionaryServiceImpl {

    private DataDictionary dataDictionary;

    /**
     * @param dataDictionary the dataDictionary to set
     */
    public void setDataDictionary(DataDictionary dataDictionary) {
        this.dataDictionary = dataDictionary;
    }

    /**
     * overrides default method to provide a customized - {@link DataDictionary}
     */
    public DataDictionary getDataDictionary() {
        if (dataDictionary == null) {
            dataDictionary = new DataDictionary();
        }

        return dataDictionary;
    }

    public void addDataDictionaryLocations(String namespaceCode, List<String> locations) throws IOException {
        for (String location : locations) {
            getDataDictionary().addConfigFileLocation(namespaceCode, location);
        }
    }

    /**
     * @see
     * org.kuali.rice.krad.service.DataDictionaryService#containsDictionaryObject(java.lang.String)
     */
    public boolean containsDictionaryObject(String id) {
        return getDataDictionary().containsDictionaryObject(id);
    }

    /**
     * Default constructor.
     */
    public DataDictionaryServiceImpl() {
        this.setDataDictionary(new DataDictionary());
    }

    public DataDictionaryServiceImpl(DataDictionary dataDictionary) {
        this.setDataDictionary(dataDictionary);
    }

    /**
     * Returns all of the inactivation blocks registered for a particular
     * business object
     *
     * @see
     * org.kuali.rice.krad.service.DataDictionaryService#getAllInactivationBlockingDefinitions(java.lang.Class)
     */
    public Set<InactivationBlockingMetadata> getAllInactivationBlockingDefinitions(
            @SuppressWarnings("rawtypes") Class inactivationBlockedBusinessObjectClass) {
        Set<InactivationBlockingMetadata> blockingClasses
                = getDataDictionary().getAllInactivationBlockingMetadatas(inactivationBlockedBusinessObjectClass);
        if (blockingClasses == null) {
            return Collections.emptySet();
        }
        return blockingClasses;
    }

    /**
     * @see
     * org.kuali.rice.krad.service.DataDictionaryService#getDictionaryObject(java.lang.String)
     */
    public Object getDictionaryObject(String id) {
        return getDataDictionary().getDictionaryObject(id);
    }

    /**
     * @see
     * org.kuali.rice.krad.service.DataDictionaryService#getViewByTypeIndex(java.lang.String,
     * java.util.Map)
     */
    public View getViewByTypeIndex(ViewType viewTypeName, Map<String, String> indexKey) {
        return getDataDictionary().getViewByTypeIndex(viewTypeName, indexKey);
    }

    /**
     * @see
     * org.kuali.rice.krad.service.DataDictionaryService#getViewIdByTypeIndex(org.kuali.rice.krad.uif.UifConstants.ViewType,
     * java.util.Map<java.lang.String,java.lang.String>)
     */
    public String getViewIdByTypeIndex(ViewType viewTypeName, Map<String, String> indexKey) {
        return getDataDictionary().getViewIdByTypeIndex(viewTypeName, indexKey);
    }

    /**
     * @see
     * org.kuali.rice.krad.service.DataDictionaryService#getViewById(java.lang.String)
     */
    public View getViewById(String viewId) {
        return getDataDictionary().getViewById(viewId);
    }
}
