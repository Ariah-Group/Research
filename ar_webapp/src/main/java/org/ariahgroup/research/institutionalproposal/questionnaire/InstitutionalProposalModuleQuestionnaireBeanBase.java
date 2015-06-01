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
package org.ariahgroup.research.institutionalproposal.questionnaire;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.kuali.kra.bo.CoeusModule;
import org.kuali.kra.bo.CoeusSubModule;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.institutionalproposal.home.InstitutionalProposal;
import org.kuali.kra.krms.KrmsRulesContext;
import org.kuali.kra.questionnaire.answer.ModuleQuestionnaireBean;
import org.kuali.rice.krad.service.BusinessObjectService;

/**
 * Generic base bean for Institutional Proposal questionnaires.
 *
 * @author The Ariah Group, Inc.
 */
public class InstitutionalProposalModuleQuestionnaireBeanBase extends ModuleQuestionnaireBean {

    private InstitutionalProposal institutionalProposal;

    /**
     * Create a new instance of InstitutionalProposalModuleQuestionnaireBeanBase object using the specified institutionalProposal parameter.
     * @param institutionalProposal InstitutionalProposal to use to populate the bean.
     */
    public InstitutionalProposalModuleQuestionnaireBeanBase(InstitutionalProposal institutionalProposal) {
        super(CoeusModule.INSTITUTIONAL_PROPOSAL_MODULE_CODE, institutionalProposal.getInstProposalNumber(), CoeusSubModule.ZERO_SUBMODULE, institutionalProposal.getSequenceNumber().toString(),
                institutionalProposal.getInstitutionalProposalDocument().getDocumentHeader().getWorkflowDocument().isApproved());
        this.institutionalProposal = institutionalProposal;
        setInstitutionalProposalSubItemCode(CoeusSubModule.ZERO_SUBMODULE);
    }

    /**
     * 
     * @param moduleItemCode
     * @param moduleItemKey
     * @param moduleSubItemCode
     * @param moduleSubItemKey
     * @param finalDoc 
     */
    public InstitutionalProposalModuleQuestionnaireBeanBase(String moduleItemCode, String moduleItemKey, String moduleSubItemCode, String moduleSubItemKey, boolean finalDoc) {
        super(moduleItemCode, moduleItemKey, moduleSubItemCode, moduleSubItemKey, finalDoc);
    }

    /**
     * 
     * @param subModuleCode 
     */
    protected void setInstitutionalProposalSubItemCode(String subModuleCode) {
        setModuleSubItemCode(subModuleCode);
    }

    /**
     * 
     * @return 
     */
    @Override
    public KrmsRulesContext getKrmsRulesContextFromBean() {
        if (getInstitutionalProposal() != null) {
            return getInstitutionalProposal().getKrmsRulesContext();
        } else {
            Map<String, Object> values = new HashMap<String, Object>();
            values.put("proposalNumber", getModuleItemKey());
            values.put("sequenceNumber", getModuleSubItemKey());
            List<InstitutionalProposal> instProposals = (List<InstitutionalProposal>) KraServiceLocator.getService(BusinessObjectService.class).findMatching(InstitutionalProposal.class, values);
            if (instProposals != null && !instProposals.isEmpty()) {
                return instProposals.get(0).getInstitutionalProposalDocument();
            } else {
                return null;
            }
        }
    }

    /**
     * 
     * @param o
     * @return 
     */
    @Override
    public boolean equals(Object o) {
        boolean retVal = false;
        if ((o != null) && (o instanceof InstitutionalProposalModuleQuestionnaireBeanBase)) {
            InstitutionalProposalModuleQuestionnaireBeanBase pmqb = (InstitutionalProposalModuleQuestionnaireBeanBase) o;
            retVal = ((this.getModuleItemCode().equals(pmqb.getModuleItemCode()))
                    && (this.getModuleItemKey().equals(pmqb.getModuleItemKey()))
                    && (this.getModuleSubItemCode().equals(pmqb.getModuleSubItemCode()))
                    && (this.getModuleSubItemKey().equals(pmqb.getModuleSubItemKey()))
                    && (this.isFinalDoc() == pmqb.isFinalDoc()));
        }
        return retVal;
    }

    /**
     * Get the institutionalProposal used by this bean.
     * @return 
     */
    public InstitutionalProposal getInstitutionalProposal() {
        return institutionalProposal;
    }

    /**
     * Set the institutionalProposal used by this bean.
     * @param institutionalProposal 
     */
    public void setInstitutionalProposal(InstitutionalProposal institutionalProposal) {
        this.institutionalProposal = institutionalProposal;
    }
}
