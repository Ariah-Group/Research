/*
 * Copyright 2005-2014 The Kuali Foundation
 *
 * Licensed under the Educational Community License, Version 2.0 (the License);
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.osedu.org/licenses/ECL-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.proposaldevelopment.bo;

import org.kuali.kra.bo.KraPersistableBusinessObjectBase;

public class ProposalChangedData extends KraPersistableBusinessObjectBase {

    private Integer changeDataId;
    
    private Integer changeNumber;

    private String columnName;

    private String attributeName;

    private String proposalNumber;

    private String changedValue;

    private String comments;

    private String displayValue;

    private String oldDisplayValue;

    private ProposalColumnsToAlter editableColumn;

    private boolean newOrDeletedCollectionItem;

    /**
     * used to determine what to show on the notification message
     * <p>
     * For deleted/new collection items, show the comment only, otherwise, show
     * the comment (field label) and new/old values.</p>
     * <p>
     * This value is not stored in the db, it is only used while preparing a
     * notification before document save</p>
     *
     * @return the newOrDeletedCollectionItem
     */
    public boolean isNewOrDeletedCollectionItem() {
        return newOrDeletedCollectionItem;
    }

    /**
     * @param newOrDeletedCollectionItem the newOrDeletedCollectionItem to set
     */
    public void setNewOrDeletedCollectionItem(boolean newOrDeletedCollectionItem) {
        this.newOrDeletedCollectionItem = newOrDeletedCollectionItem;
    }    
    
    public ProposalChangedData() {
        super();
    }

    public Integer getChangeNumber() {
        return changeNumber;
    }

    public void setChangeNumber(Integer changeNumber) {
        this.changeNumber = changeNumber;
    }

    public String getColumnName() {
        return columnName;
    }

    public void setColumnName(String columnName) {
        this.columnName = columnName;
    }

    public String getProposalNumber() {
        return proposalNumber;
    }

    public void setProposalNumber(String proposalNumber) {
        this.proposalNumber = proposalNumber;
    }

    public String getChangedValue() {
        return changedValue;
    }

    public void setChangedValue(String changedValue) {
        this.changedValue = changedValue;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getDisplayValue() {
        return displayValue;
    }

    public void setDisplayValue(String displayValue) {
        this.displayValue = displayValue;
    }

    public String getOldDisplayValue() {
        return oldDisplayValue;
    }

    public void setOldDisplayValue(String oldDisplayValue) {
        this.oldDisplayValue = oldDisplayValue;
    }

    public ProposalColumnsToAlter getEditableColumn() {
        return editableColumn;
    }

    public void setEditableColumn(ProposalColumnsToAlter editableColumn) {
        this.editableColumn = editableColumn;
    }

    public String getAttributeName() {
        return attributeName;
    }

    public void setAttributeName(String attributeName) {
        this.attributeName = attributeName;
    }

    /**
     * @return the changeDataId
     */
    public Integer getChangeDataId() {
        return changeDataId;
    }

    /**
     * @param changeDataId the changeDataId to set
     */
    public void setChangeDataId(Integer changeDataId) {
        this.changeDataId = changeDataId;
    }
}
