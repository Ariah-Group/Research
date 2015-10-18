/*
 * Copyright 2005-2014 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
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
package org.kuali.kra.authorizer;

import org.kuali.kra.authorization.Task;
import org.kuali.kra.authorization.TaskAuthorizerImpl;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.TimeAndMoneyPermissionConstants;

/**
 * The Create Time And Money Authorizer checks to see if the user has permission
 * to create a a time and money document for an Award. The user must have the
 * Create Time And Money Document permission in any of the units in order to create 
 * a time and money document.
 * 
 */
public class CreateTimeAndMoneyAuthorizer extends TaskAuthorizerImpl {

    /**
     * @see org.kuali.kra.authorization.TaskAuthorizer#isAuthorized(java.lang.String, org.kuali.kra.authorization.Task)
     */
    @Override
    public boolean isAuthorized(String userId, Task task) {
        //return true;
        return hasUnitPermission(userId, Constants.MODULE_NAMESPACE_TIME_AND_MONEY, TimeAndMoneyPermissionConstants.CREATE_TIME_AND_MONEY_DOCUMENT); 
    }
}
