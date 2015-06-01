/*
 * Copyright 2015
 * 

 */
package org.ariahgroup.research.institutionalproposal.auth;

import org.kuali.kra.authorization.Task;
import org.kuali.kra.authorization.TaskAuthorizerImpl;
import org.kuali.kra.institutionalproposal.home.InstitutionalProposal;
import org.kuali.kra.service.KraAuthorizationService;

/**
 * An Award Authorizer determines if a user can perform
 * a given task on an award.  
 */
public abstract class InstitutionalProposalAuthorizer extends TaskAuthorizerImpl {
    
    private KraAuthorizationService kraAuthorizationService;
    
    /**
     * @see org.kuali.kra.authorization.TaskAuthorizer#isAuthorized(java.lang.String, org.kuali.kra.authorization.Task)
     */
    public final boolean isAuthorized(String userId, Task task) {
        return isAuthorized(userId, (InstitutionalProposalTask) task); 
    }

    /**
     * Is the user authorized to execute the given Award task?
     * @param username the user's unique username
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
     * Does the given user has the permission for this award?
     * @param username the unique username of the user
     * @param award the award
     * @param permissionName the name of the permission
     * @return true if the person has the permission; otherwise false
     */
    protected final boolean hasPermission(String userId, InstitutionalProposal instProp, String permissionName) {
        return kraAuthorizationService.hasPermission(userId, instProp, permissionName);
    }
}
