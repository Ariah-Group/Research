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
package org.ariahgroup.research.institutionalproposal.auth;

import org.kuali.kra.authorization.Task;
import org.kuali.kra.infrastructure.TaskGroupName;
import org.kuali.kra.institutionalproposal.home.InstitutionalProposal;

/**
 * An InstitutionalProposal Task is a task that performs an action against an
 * Institutional Proposal.  To assist authorization, the Institutional Proposal is available.
 */
public final class InstitutionalProposalTask extends Task {
    
    private InstitutionalProposal institutionalProposal;
    
    /**
     * Constructs an InstitutionalProposalTask.
     * @param taskName the name of the task
     * @param institutionalProposal the institutionalProposal
     */
    public InstitutionalProposalTask(String taskName, InstitutionalProposal institutionalProposal) {
        super(TaskGroupName.INSTPROPOSAL, taskName);
        this.institutionalProposal = institutionalProposal;
    }

    /**
     * Get the InstitutionalProposal.
     * @return the InstitutionalProposal
     */
    public InstitutionalProposal getInstitutionalProposal() {
        return institutionalProposal;
    }
}
