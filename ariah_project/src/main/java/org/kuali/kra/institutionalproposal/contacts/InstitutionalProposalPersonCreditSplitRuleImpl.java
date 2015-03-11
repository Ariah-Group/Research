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
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.institutionalproposal.contacts;

import org.kuali.kra.institutionalproposal.rules.InstitutionalProposalCreditSplitAuditError;
import org.kuali.kra.proposaldevelopment.bo.InvestigatorCreditType;
import org.kuali.kra.rules.ResearchDocumentRuleBase;
import org.kuali.rice.core.api.util.type.KualiDecimal;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/**
 * This class...
 */
public class InstitutionalProposalPersonCreditSplitRuleImpl extends ResearchDocumentRuleBase implements
        InstitutionalProposalPersonCreditSplitRule {

    private static final KualiDecimal MAX_TOTAL_VALUE = new KualiDecimal(100.00);

    /**
     * @see org.kuali.kra.institutionalproposal.contacts.InstitutionalProposalPersonCreditSplitRule#checkInstitutionalProposalPersonCreditSplitTotals(org.kuali.kra.nstitutionaliroposal.contacts.InstitutionalProposalPersonCreditSplitRuleEvent)
     */
    public boolean checkInstitutionalProposalPersonCreditSplitTotals(InstitutionalProposalPersonCreditSplitRuleEvent event) {
        boolean retval = true; 
        for(InvestigatorCreditType creditType: loadInvestigatorCreditTypes()) {
            if(creditType.addsToHundred()) {
                KualiDecimal value = event.getTotalsByCreditSplitType().get(creditType.getInvCreditTypeCode());
                if(value == null) {
                    break;   // value may not have been initialized yet, so we don't want to block save
                }
                if(!MAX_TOTAL_VALUE.subtract(value).isZero()) {
                    InstitutionalProposalCreditSplitAuditError.addAuditError(PROPOSAL_PERSON_CREDIT_SPLIT_ERROR_MSG_KEY, creditType.getDescription());
                    retval = false;
                }
            }
        }
        
        return retval;
        
    }
    
    @SuppressWarnings("unchecked")
    Collection<InvestigatorCreditType> loadInvestigatorCreditTypes() {
        Map<String,String> valueMap = new HashMap<String, String>();
        valueMap.put("active", "true");
        return getBusinessObjectService().findMatching(InvestigatorCreditType.class, valueMap);
    }


    
}
