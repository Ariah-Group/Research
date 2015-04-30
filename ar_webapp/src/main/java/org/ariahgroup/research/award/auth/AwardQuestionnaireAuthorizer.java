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
package org.ariahgroup.research.award.auth;

import org.kuali.kra.award.document.authorization.AwardTask;
import org.kuali.kra.award.document.authorizer.AwardAuthorizer;
import org.kuali.kra.award.home.Award;
import org.kuali.kra.infrastructure.PermissionConstants;

/**
 * Authorizer class to determine ability to add answers to Award Questionnaires. 
 * If the award is NOT in view only mode, and is NOT in workflow, and the current 
 * user has "Modify Award" permission, then the user is able to add answers to the questionnaire.
 * 
 * @author The Ariah Group, Inc.
 */
public class AwardQuestionnaireAuthorizer extends AwardAuthorizer {

    /**
     * Checks to see if the current user is authorized to answer an award questionnaire.
     * 
     * @param userId Principal ID of the current user.
     * @param task AwardTask type.
     * @return True if the user is authorized to answer an award questionnaire. False otherwise.
     */
    @Override
    public boolean isAuthorized(String userId, AwardTask task) {

        Award award = task.getAward();

        // seperated out as separate booleans to allow easier debugging
        boolean bool1 = !award.getAwardDocument().isViewOnly();
        boolean bool2 = (!kraWorkflowService.isInWorkflow(award.getAwardDocument()));
        boolean bool3 = hasPermission(userId, award, PermissionConstants.AWARD_MODIFY_AWARD);
        
        return bool1 && bool2 && bool3;
    }
}
