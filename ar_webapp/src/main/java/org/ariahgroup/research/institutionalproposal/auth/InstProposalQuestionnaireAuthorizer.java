/*
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
package org.ariahgroup.research.institutionalproposal.auth;

import org.kuali.kra.infrastructure.PermissionConstants;
import org.kuali.kra.institutionalproposal.home.InstitutionalProposal;

/**
 * Authorizer class to determine ability to add answers to Inst Proposal
 * Questionnaires. If the InstProp is NOT in view only mode, and is NOT in
 * workflow, and the current user has "Modify Inst Proposal" permission, then
 * the user is able to add answers to the questionnaire.
 *
 * @author The Ariah Group, Inc.
 */
public class InstProposalQuestionnaireAuthorizer extends InstitutionalProposalAuthorizer {

    /**
     * Checks to see if the current user is authorized to answer an award
     * questionnaire.
     *
     * @param userId Principal ID of the current user.
     * @param task AwardTask type.
     * @return True if the user is authorized to answer an award questionnaire.
     * False otherwise.
     */
    @Override
    public boolean isAuthorized(String userId, InstitutionalProposalTask task) {

        InstitutionalProposal instProp = task.getInstitutionalProposal();

        // seperated out as separate booleans to allow easier debugging
        boolean bool1 = !instProp.getInstitutionalProposalDocument().isViewOnly();
        boolean bool2 = (!kraWorkflowService.isInWorkflow(instProp.getInstitutionalProposalDocument()));
        boolean bool3 = hasPermission(userId, instProp, PermissionConstants.EDIT_INSTITUTE_PROPOSAL);

        return bool1 && bool2 && bool3;
    }
}
