/*
 * Copyright 2016 The Ariah Group, Inc.
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

import org.kuali.kra.authorization.Task;
import org.kuali.kra.authorization.TaskAuthorizerImpl;
import org.kuali.kra.institutionalproposal.home.InstitutionalProposal;
import org.kuali.kra.service.KraAuthorizationService;

/**
 * An InstitutionalProposal Authorizer determines if a user can perform
 * a given task on an InstitutionalProposal.  
 */
public abstract class InstitutionalProposalAuthorizer extends TaskAuthorizerImpl {
    
    private KraAuthorizationService kraAuthorizationService;
    
    /**
     * @see org.kuali.kra.authorization.TaskAuthorizer#isAuthorized(java.lang.String, org.kuali.kra.authorization.Task)
     */
    @Override
    public final boolean isAuthorized(String userId, Task task) {
        return isAuthorized(userId, (InstitutionalProposalTask) task); 
    }

    /**
     * Is the user authorized to execute the given Award task?
     * @param userId the user's unique username
     * @param task the award task
     * @return true if the user is authorized; otherwise false
     */
    public abstract boolean isAuthorized(String userId, InstitutionalProposalTask task);
    
    /**
     * Set the Kra Authorization Service.  Usually injected by the Spring Framework.
     * @param kraAuthorizationService
     */
    public void setKraAuthorizationService(KraAuthorizationService kraAuthorizationService) {
        this.kraAuthorizationService = kraAuthorizationService;
    }
    
    /**
     * Does the given user has the permission for this InstitutionalProposal?
     * @param userId the unique username of the user
     * @param instProp the InstitutionalProposal
     * @param permissionName the name of the permission
     * @return true if the person has the permission; otherwise false
     */
    protected final boolean hasPermission(String userId, InstitutionalProposal instProp, String permissionName) {
        return kraAuthorizationService.hasPermission(userId, instProp, permissionName);
    }
}
