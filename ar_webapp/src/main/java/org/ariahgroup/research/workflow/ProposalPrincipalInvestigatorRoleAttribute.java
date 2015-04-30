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
package org.ariahgroup.research.workflow;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.kra.proposaldevelopment.bo.ProposalPerson;
import org.kuali.kra.proposaldevelopment.bo.ProposalPersonRole;
import org.kuali.kra.service.KcPersonService;
import org.kuali.rice.kew.api.identity.Id;
import org.kuali.rice.kew.api.identity.PrincipalId;
import org.kuali.rice.kew.api.rule.RoleName;
import org.kuali.rice.kew.engine.RouteContext;
import org.kuali.rice.kew.routeheader.DocumentContent;
import org.kuali.rice.kew.rule.GenericRoleAttribute;
import org.kuali.rice.kew.rule.QualifiedRoleName;
import org.kuali.rice.krad.service.BusinessObjectService;
import org.w3c.dom.NodeList;

/**
 * 
 * @author The Ariah Group, Inc.
 */
public class ProposalPrincipalInvestigatorRoleAttribute extends GenericRoleAttribute {

    KcPersonService personService;

    @Override
    public List<String> getQualifiedRoleNames(String roleName, DocumentContent documentContent) {
        List<String> qualifiedRoleNames = new ArrayList<String>();
        qualifiedRoleNames.add(ProposalPersonRole.PRINCIPAL_INVESTIGATOR);

        return qualifiedRoleNames;
    }

    @Override
    public List<RoleName> getRoleNames() {

        RoleName role = RoleName.Builder.create("org.ariahgroup.research.workflow.ProposalPrincipalInvestigatorRoleAttribute",
                ProposalPersonRole.PRINCIPAL_INVESTIGATOR, ProposalPersonRole.PRINCIPAL_INVESTIGATOR).build();
        return Collections.singletonList(role);
    }

    @Override
    public Map<String, String> getProperties() {
        // intentionally unimplemented...not intending on using this attribute
        // client-side
        return null;
    }

    @Override
    protected List<Id> resolveRecipients(RouteContext routeContext, QualifiedRoleName qualifiedRoleName) {

        String routedByUserPrincipalId = routeContext.getDocument().getRoutedByUserWorkflowId();

        DocumentContent dc = routeContext.getDocumentContent();
        NodeList nodes = dc.getDocument().getElementsByTagName("proposalNumber");
        String developmentProposalNumber = nodes.item(0).getTextContent();
        BusinessObjectService businessObjectService = KraServiceLocator.getService(BusinessObjectService.class);
        DevelopmentProposal proposalDevelopmentDocument = businessObjectService.findBySinglePrimaryKey(DevelopmentProposal.class, developmentProposalNumber);

        List<Id> members = new ArrayList<Id>();

        for (ProposalPerson proposalPerson : proposalDevelopmentDocument.getProposalPersons()) {

            if (proposalPerson.getProposalPersonRoleId().equals(ProposalPersonRole.PRINCIPAL_INVESTIGATOR)) {

                // do NULL check to ensure they are a PERSON, not a Rolodex
                if (proposalPerson.getPersonId() != null && !proposalPerson.getPersonId().equals(routedByUserPrincipalId)) {
                    members.add(new PrincipalId(proposalPerson.getPersonId()));
                }
            }
        }

        return members;
    }

    /**
     * Gets the businessObjectService attribute.
     *
     * @return Returns the businessObjectService.
     */
    public KcPersonService getPersonService() {
        personService = (KcPersonService) KraServiceLocator.getService(KcPersonService.class);
        return personService;
    }

}
