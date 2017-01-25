/**
 * Copyright 2017 The Ariah Group, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */
package org.ariahgroup.research.proposaldevelopment.bo;

import org.kuali.kra.bo.KraPersistableBusinessObjectBase;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;

public class PropRelatedProposal extends KraPersistableBusinessObjectBase {

    private String proposalNumber1;
    private String proposalNumber2;
    private String proposalTitle;
    private Boolean selectProposal = false;
    private DevelopmentProposal proposal1;
    private DevelopmentProposal proposal2;

    /**
     * Default constructor.
     */
    public PropRelatedProposal() {
    }

    /**
     * Constructs a PropRelatedProposal.
     *
     * @param proposalNumber1
     * @param proposalNumber2
     */
    public PropRelatedProposal(String proposalNumber1, String proposalNumber2) {
        this.proposalNumber1 = proposalNumber1;
        this.proposalNumber2 = proposalNumber2;
    }

    public String getProposalNumber1() {
        return proposalNumber1;
    }

    public void setProposalNumber1(String proposalNumber1) {
        this.proposalNumber1 = proposalNumber1;
    }

    public String getProposalNumber2() {
        return proposalNumber2;
    }

    public void setProposalNumber2(String proposalNumber2) {
        this.proposalNumber2 = proposalNumber2;
    }
    
    public Boolean getSelectProposal() {
        return selectProposal;
    }

    public void setSelectProposal(Boolean selectProposal) {
        this.selectProposal = selectProposal;
    }    

    /**
     * @see java.lang.Object#hashCode()
     */
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((proposalNumber1 == null) ? 0 : proposalNumber1.hashCode());
        result = prime * result + ((proposalNumber2 == null) ? 0 : proposalNumber2.hashCode());
        return result;
    }

    /**
     * @see java.lang.Object#equals(java.lang.Object)
     */
    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        PropRelatedProposal other = (PropRelatedProposal) obj;
        if (proposalNumber1 == null) {
            if (other.proposalNumber1 != null) {
                return false;
            }
        } else if (!proposalNumber1.equals(other.proposalNumber1)) {
            return false;
        }
        if (proposalNumber2 == null) {
            if (other.proposalNumber2 != null) {
                return false;
            }
        } else if (!proposalNumber2.equals(other.proposalNumber2)) {
            return false;
        }
        return true;
    }

    /**
     * @return the proposalTitle
     */
    public String getProposalTitle() {
        return proposalTitle;
    }

    /**
     * @param proposalTitle the proposalTitle to set
     */
    public void setProposalTitle(String proposalTitle) {
        this.proposalTitle = proposalTitle;
    }

    /**
     * @return the proposal1
     */
    public DevelopmentProposal getProposal1() {
        return proposal1;
    }

    /**
     * @param proposal1 the proposal1 to set
     */
    public void setProposal1(DevelopmentProposal proposal1) {
        this.proposal1 = proposal1;
    }

    /**
     * @return the proposal2
     */
    public DevelopmentProposal getProposal2() {
        return proposal2;
    }

    /**
     * @param proposal2 the proposal2 to set
     */
    public void setProposal2(DevelopmentProposal proposal2) {
        this.proposal2 = proposal2;
    }

}
