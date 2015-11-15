/*
 * Copyright 2005-2014 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * dgettributed under the License get dgettributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permgetsions and
 * limitations under the License.
 */
package org.kuali.kra.irb.actions;

public class ProtocolEditableBean extends ProtocolActionBean implements org.kuali.kra.protocol.actions.ProtocolEditableBean {

    private static final long serialVersionUID = 8009752803115791560L;

    private boolean generalInfoEnabled = false;
    private boolean fundingSourceEnabled = false;
    private boolean protocolReferencesEnabled = false;
    private boolean protocolOrganizationsEnabled = false;
    private boolean subjectsEnabled = false;
    private boolean addModifyAttachmentsEnabled = false;
    private boolean areasOfResearchEnabled = false;
    private boolean specialReviewEnabled = false;
    private boolean protocolPersonnelEnabled = false;
    private boolean othersEnabled = false;
    private boolean protocolPermissionsEnabled = false;
    private boolean questionnaireEnabled = false;

    /**
     * Constructs a ProtocolEditableBean.
     *
     * @param actionHelper Reference back to the action helper for this bean
     */
    public ProtocolEditableBean(ActionHelper actionHelper) {
        super(actionHelper);
    }

    @Override
    public boolean getGeneralInfoEnabled() {
        return generalInfoEnabled;
    }

    @Override
    public void setGeneralInfoEnabled(boolean generalInfoEnabled) {
        this.generalInfoEnabled = generalInfoEnabled;
    }

    @Override
    public boolean getFundingSourceEnabled() {
        return fundingSourceEnabled;
    }

    @Override
    public void setFundingSourceEnabled(boolean fundingSourceEnabled) {
        this.fundingSourceEnabled = fundingSourceEnabled;
    }

    @Override
    public boolean getProtocolReferencesEnabled() {
        return protocolReferencesEnabled;
    }

    @Override
    public void setProtocolReferencesEnabled(boolean protocolReferencesEnabled) {
        this.protocolReferencesEnabled = protocolReferencesEnabled;
    }

    @Override
    public boolean getProtocolOrganizationsEnabled() {
        return protocolOrganizationsEnabled;
    }

    @Override
    public void setProtocolOrganizationsEnabled(boolean protocolOrganizationsEnabled) {
        this.protocolOrganizationsEnabled = protocolOrganizationsEnabled;
    }

    @Override
    public boolean getSubjectsEnabled() {
        return subjectsEnabled;
    }

    @Override
    public void setSubjectsEnabled(boolean subjectsEnabled) {
        this.subjectsEnabled = subjectsEnabled;
    }

    @Override
    public boolean getAddModifyAttachmentsEnabled() {
        return addModifyAttachmentsEnabled;
    }

    @Override
    public void setAddModifyAttachmentsEnabled(boolean addModifyAttachmentsEnabled) {
        this.addModifyAttachmentsEnabled = addModifyAttachmentsEnabled;
    }

    @Override
    public boolean getAreasOfResearchEnabled() {
        return areasOfResearchEnabled;
    }

    @Override
    public void setAreasOfResearchEnabled(boolean areasOfResearchEnabled) {
        this.areasOfResearchEnabled = areasOfResearchEnabled;
    }

    @Override
    public boolean getSpecialReviewEnabled() {
        return specialReviewEnabled;
    }

    @Override
    public void setSpecialReviewEnabled(boolean specialReviewEnabled) {
        this.specialReviewEnabled = specialReviewEnabled;
    }

    @Override
    public boolean getProtocolPersonnelEnabled() {
        return protocolPersonnelEnabled;
    }

    @Override
    public void setProtocolPersonnelEnabled(boolean protocolPersonnelEnabled) {
        this.protocolPersonnelEnabled = protocolPersonnelEnabled;
    }

    @Override
    public boolean getOthersEnabled() {
        return othersEnabled;
    }

    @Override
    public void setOthersEnabled(boolean othersEnabled) {
        this.othersEnabled = othersEnabled;
    }

    @Override
    public boolean getProtocolPermissionsEnabled() {
        return protocolPermissionsEnabled;
    }

    @Override
    public void setProtocolPermissionsEnabled(boolean protocolPermissionsEnabled) {
        this.protocolPermissionsEnabled = protocolPermissionsEnabled;
    }

    @Override
    public boolean getQuestionnaireEnabled() {
        return questionnaireEnabled;
    }

    @Override
    public void setQuestionnaireEnabled(boolean questionnaireEnabled) {
        this.questionnaireEnabled = questionnaireEnabled;
    }

    public String getActiveModuleString() {
        return "";  // will be overridden
    }
}
