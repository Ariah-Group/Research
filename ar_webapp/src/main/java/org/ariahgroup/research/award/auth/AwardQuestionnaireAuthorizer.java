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

public class AwardQuestionnaireAuthorizer extends AwardAuthorizer {

    /**
     * @author The Ariah Group, Inc.
     * 
     * @param userId
     * @param task
     * @return 
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