/*
 * Copyright 2017 The Ariah Group, Inc.
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

import org.apache.commons.lang.StringUtils;
import org.kuali.kra.bo.UnitAdministrator;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.service.UnitService;
import org.kuali.rice.kew.api.identity.Id;
import org.kuali.rice.kew.api.identity.PrincipalId;
import org.kuali.rice.kew.api.rule.RoleName;
import org.kuali.rice.kew.engine.RouteContext;
import org.kuali.rice.kew.routeheader.DocumentContent;
import org.kuali.rice.kew.rule.GenericRoleAttribute;
import org.kuali.rice.kew.rule.QualifiedRoleName;
import org.w3c.dom.NodeList;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.kuali.kra.bo.Unit;
import org.kuali.kra.infrastructure.RoleConstants;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.kra.proposaldevelopment.bo.ProposalPerson;
import org.kuali.kra.proposaldevelopment.bo.ProposalPersonRole;
import org.kuali.kra.proposaldevelopment.bo.ProposalPersonUnit;
import org.kuali.rice.krad.service.BusinessObjectService;

public class ProposalUnitAdminTypeRoleAttribute extends GenericRoleAttribute {

    /**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = 2837085891084714072L;
    private String unitAdminTypeCode;
    private static org.apache.commons.logging.Log LOG = org.apache.commons.logging.LogFactory.getLog(ProposalUnitAdminTypeRoleAttribute.class);

    @Override
    public List<String> getQualifiedRoleNames(String roleName, DocumentContent documentContent) {

        // set default rolename
        String roleNameToAdd = RoleConstants.UNIT_ADMIN_WORKFLOW_ROLE_NAME;
        
        if (roleName.contains(":")) {
            unitAdminTypeCode = roleName.split(":")[0];
            roleNameToAdd = roleName.split(":")[1];
        } else {
            unitAdminTypeCode = roleName;
        }

        List<String> qualifiedRoleNames = new ArrayList<String>();
        qualifiedRoleNames.add(roleNameToAdd);

        return qualifiedRoleNames;
    }

    @Override
    public List<RoleName> getRoleNames() {
        RoleName role = RoleName.Builder.create("org.ariahgroup.research.workflow.ProposalUnitAdminTypeRoleAttribute",
                RoleConstants.UNIT_ADMIN_WORKFLOW_ROLE_NAME, RoleConstants.UNIT_ADMIN_WORKFLOW_ROLE_NAME).build();
        return Collections.singletonList(role);
    }

    @Override
    public Map<String, String> getProperties() {
        // intentionally unimplemented...not intending on using this attribute client-side
        return null;
    }

    private UnitService getUnitService() {
        return KraServiceLocator.getService(UnitService.class);
    }

    @Override
    protected List<Id> resolveRecipients(RouteContext routeContext, QualifiedRoleName qualifiedRoleName) {
        List<Id> members = new ArrayList<Id>();

        DocumentContent dc = routeContext.getDocumentContent();
        NodeList nodes = dc.getDocument().getElementsByTagName("proposalNumber");
        String developmentProposalNumber = nodes.item(0).getTextContent();

        BusinessObjectService businessObjectService = KraServiceLocator.getService(BusinessObjectService.class);
        DevelopmentProposal proposalDevelopmentDocument = businessObjectService.findBySinglePrimaryKey(DevelopmentProposal.class, developmentProposalNumber);

        List<Unit> addedUnits = new ArrayList<Unit>();

        // Add the Lead Unit of the Proposal
        addedUnits.add(proposalDevelopmentDocument.getUnit());

        for (ProposalPerson proposalPerson : proposalDevelopmentDocument.getProposalPersons()) {

            // for either PI or COI, get their home UNIT NUMBER (a.k.a. Primary Department Code)
            if (proposalPerson.getProposalPersonRoleId().equals(ProposalPersonRole.PRINCIPAL_INVESTIGATOR)
                    || proposalPerson.getProposalPersonRoleId().equals(ProposalPersonRole.CO_INVESTIGATOR)) {

                Unit unit = null;

                if (proposalPerson.getPersonId() != null && proposalPerson.getPerson() != null) {
                    // then we're dealing with a PERSON, not a ROLODEX
                    // Get their HOME UNIT of the Person
                    unit = proposalPerson.getPerson().getUnit();
                    if (unit != null && !addedUnits.contains(unit)) {
                        addedUnits.add(unit);
                    }
                }

                for (ProposalPersonUnit propPersonUnit : proposalPerson.getUnits()) {

                    unit = propPersonUnit.getUnit();
                    if (unit != null && !addedUnits.contains(unit)) {
                        addedUnits.add(unit);
                    }

                }
            }
        }

        for (Unit unit : addedUnits) {

            String tempUnitNum = unit.getUnitNumber();
            boolean keepGoing = true;
            Unit tempUnit = unit;

            // loop while there are no Unit Admins found 
            while (keepGoing && tempUnitNum != null && tempUnitNum.length() > 0 && !tempUnitNum.equals("-1")) {

                // retrieve all unit admins if any
                List<UnitAdministrator> unitAdministrators = getUnitService().retrieveUnitAdministratorsByUnitNumber(tempUnitNum);

                if (unitAdministrators.isEmpty()) {
                    // if no unit admins found, jump up to the unit's PARENT unit and check there
                    tempUnitNum = tempUnit.getParentUnitNumber();
                    tempUnit = tempUnit.getParentUnit();
                    continue;

                } else {
                    // for each unit admin see if it is a valid type
                    for (UnitAdministrator unitAdministrator : unitAdministrators) {

                        if (StringUtils.isNotBlank(unitAdministrator.getPersonId())
                                && StringUtils.equals(unitAdministrator.getUnitAdministratorTypeCode(), unitAdminTypeCode)) {
                            PrincipalId prinId = new PrincipalId(unitAdministrator.getPersonId());
                            // make sure a duplicate isn't added in the event multiple units are used
                            // that end up having the same parent unit and thus the same parent unit admin
                            if (!members.contains(prinId)) {
                                members.add(prinId);
                            }
                            keepGoing = false;
                        }
                    }

                    if (keepGoing) {
                        // then UNIT ADMIN were found, but not of the correct type

                        tempUnitNum = tempUnit.getParentUnitNumber();
                        tempUnit = tempUnit.getParentUnit();

                        continue;
                    }
                }
            }
        }

        return members;
    }

}
