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
 *
 * ------------------------------------------------------
 * Updates made after January 1, 2015 are :
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
package org.kuali.kra.dao.ojb;

import org.kuali.kra.common.printing.PendingReportBean;
import org.kuali.kra.dao.PendingReportDao;
import org.kuali.kra.institutionalproposal.contacts.InstitutionalProposalPerson;
import org.kuali.kra.institutionalproposal.home.InstitutionalProposal;
import org.kuali.kra.service.ServiceHelper;
import org.kuali.rice.kew.api.exception.WorkflowException;

import java.util.*;
import org.kuali.kra.institutionalproposal.document.authorization.InstitutionalProposalDocumentAuthorizer;
import org.kuali.rice.kim.api.identity.Person;
import org.kuali.rice.krad.util.GlobalVariables;

/**
 * OJB implementation of PendingReportDao using OJB Report Query (see
 * http://db.apache.org/ojb/docu/guides/query.html#Report+Queries)
 */
public class PendingReportDaoOjb extends BaseReportDaoOjb implements PendingReportDao {

    @Override
    public List<PendingReportBean> queryForPendingSupport(String personId) throws WorkflowException {
        List<PendingReportBean> data = new ArrayList<PendingReportBean>();
        Person user = GlobalVariables.getUserSession().getPerson();
        InstitutionalProposalDocumentAuthorizer authorizer = new InstitutionalProposalDocumentAuthorizer();
        
        for (InstitutionalProposalPerson ipPerson : executePendingSupportQuery(personId)) {
            lazyLoadProposal(ipPerson);

            // ipPerson.getInstitutionalProposal().getInstitutionalProposalDocument()!=null CHECK 
            // is REQUIRED as the auth-check canOpen will fail in the depths of RICE otherwise.
            if (ipPerson.getInstitutionalProposal()!= null && ipPerson.getInstitutionalProposal().getInstitutionalProposalDocument()!= null
                    && authorizer.canOpen(ipPerson.getInstitutionalProposal().getInstitutionalProposalDocument(), user)) {

                PendingReportBean bean = buildPendingReportBean(ipPerson);
                if (bean != null) {
                    data.add(bean);
                }
            }
        }
        return data;
    }

    private PendingReportBean buildPendingReportBean(InstitutionalProposalPerson ipPerson) throws WorkflowException {
        InstitutionalProposal proposal = ipPerson.getInstitutionalProposal();
        PendingReportBean bean = null;
        if (shouldDataBeIncluded(proposal.getInstitutionalProposalDocument()) && proposal.isActiveVersion()) {
            bean = new PendingReportBean(ipPerson);
        }
        return bean;
    }

    @SuppressWarnings("unchecked")
    private Collection<InstitutionalProposalPerson> executePendingSupportQuery(String personId) {
        return getBusinessObjectService().findMatching(InstitutionalProposalPerson.class, Collections.singletonMap("personId", personId));
    }

    private void lazyLoadProposal(InstitutionalProposalPerson ipPerson) {
        if (ipPerson.getInstitutionalProposal() == null) {
            ServiceHelper svcHelper = ServiceHelper.getInstance();
            Map<String, Object> searchParams = new HashMap<String, Object>();
            searchParams.put("proposalNumber", ipPerson.getProposalNumber());
            searchParams.put("sequenceNumber", ipPerson.getSequenceNumber());
//            Map searchParms = svcHelper.buildCriteriaMap(new String[]{"proposalNumber", "sequenceNumber"},
//                                                                           new Object[]{ipPerson.getProposalNumber(), ipPerson.getSequenceNumber()});
            InstitutionalProposal proposal = (InstitutionalProposal) getBusinessObjectService().findMatching(InstitutionalProposal.class, searchParams).iterator().next();
            ipPerson.setInstitutionalProposal(proposal);
        }
    }

}
