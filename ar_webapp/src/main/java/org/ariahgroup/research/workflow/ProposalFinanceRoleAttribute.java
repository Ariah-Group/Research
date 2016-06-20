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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.kuali.kra.bo.KcPerson;
import org.kuali.kra.bo.Unit;
import org.kuali.kra.bo.UnitAdministrator;
import org.kuali.kra.budget.BudgetDecimal;
import org.kuali.kra.budget.core.Budget;
import org.kuali.kra.budget.document.BudgetDocument;
import org.kuali.kra.budget.versions.BudgetDocumentVersion;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.infrastructure.RoleConstants;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.kra.proposaldevelopment.bo.ProposalPerson;
import org.kuali.kra.proposaldevelopment.bo.ProposalPersonRole;
import org.kuali.kra.proposaldevelopment.bo.ProposalPersonUnit;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.service.KcPersonService;
import org.kuali.kra.service.UnitService;
import org.kuali.rice.coreservice.framework.parameter.ParameterService;
import org.kuali.rice.kew.api.identity.Id;
import org.kuali.rice.kew.api.identity.PrincipalId;
import org.kuali.rice.kew.api.rule.RoleName;
import org.kuali.rice.kew.engine.RouteContext;
import org.kuali.rice.kew.routeheader.DocumentContent;
import org.kuali.rice.kew.rule.GenericRoleAttribute;
import org.kuali.rice.kew.rule.QualifiedRoleName;
import org.kuali.rice.kim.api.role.RoleMembership;
import org.kuali.rice.kim.api.role.RoleService;
import org.kuali.rice.krad.service.BusinessObjectService;
import org.kuali.rice.krad.service.DocumentService;
import org.w3c.dom.NodeList;

/**
 *
 * @author The Ariah Group, Inc.
 */
public class ProposalFinanceRoleAttribute extends GenericRoleAttribute {

    private static final long serialVersionUID = -4407634595023746251L;

    @Override
    public List<String> getQualifiedRoleNames(String roleName, DocumentContent documentContent) {
        List<String> qualifiedRoleNames = new ArrayList<String>();
        qualifiedRoleNames.add(roleName);
        return qualifiedRoleNames;
    }

    @Override
    public List<RoleName> getRoleNames() {
        RoleName role = RoleName.Builder.create("org.ariahgroup.research.workflow.ProposalFinanceRoleAttribute",
                RoleConstants.UNIT_ADMIN_WORKFLOW_ROLE_NAME, RoleConstants.UNIT_ADMIN_WORKFLOW_ROLE_NAME).build();
        return Collections.singletonList(role);
    }

    @Override
    public Map<String, String> getProperties() {
        // intentionally unimplemented...not intending on using this attribute client-side
        return null;
    }

    protected UnitService getUnitService() {
        return KraServiceLocator.getService(UnitService.class);
    }

    @Override
    protected List<Id> resolveRecipients(RouteContext routeContext, QualifiedRoleName qualifiedRoleName) {
        List<Id> members = new ArrayList<Id>();

        ParameterService parameterService = KraServiceLocator.getService(ParameterService.class);

        final boolean isParamAlwaysEnabled = parameterService.getParameterValueAsBoolean(ProposalDevelopmentDocument.class,
                Constants.ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_ALWAYS_ENABLED, true);

        final String paramSendToCode = parameterService.getParameterValueAsString(ProposalDevelopmentDocument.class,
                Constants.ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_RECIP_SENDTO, null);

        final String paramPrincipalIds = parameterService.getParameterValueAsString(ProposalDevelopmentDocument.class,
                Constants.ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_RECIP_PRINCIPALIDS, null);

        final String paramRoleIds = parameterService.getParameterValueAsString(ProposalDevelopmentDocument.class,
                Constants.ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_RECIP_ROLEIDS, null);

        final String paramUnitAdminTypeCode = parameterService.getParameterValueAsString(ProposalDevelopmentDocument.class,
                Constants.ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_RECIP_UNITADMINTYPECODE, null);

        final boolean isParamUnderRecoveryEnabled = parameterService.getParameterValueAsBoolean(ProposalDevelopmentDocument.class,
                Constants.ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_UNDERRECOV_ENABLED, null);

        final String paramUnderRecoveryMinAmount = parameterService.getParameterValueAsString(ProposalDevelopmentDocument.class,
                Constants.ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_UNDERRECOV_AMOUNT, null);

        final boolean isParamCostShareEnabled = parameterService.getParameterValueAsBoolean(ProposalDevelopmentDocument.class,
                Constants.ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_COSTSHARE_ENABLED, null);

        final String paramCostShareMinAmount = parameterService.getParameterValueAsString(ProposalDevelopmentDocument.class,
                Constants.ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_COSTSHARE_AMOUNT, null);

        // if all 3 triggers are disabled, then immediately exit
        if (!isParamAlwaysEnabled && !isParamUnderRecoveryEnabled && !isParamCostShareEnabled) {
            return members;
        }

        // load the DevelopmentProposal
        DocumentContent dc = routeContext.getDocumentContent();
        NodeList nodes = dc.getDocument().getElementsByTagName("proposalNumber");
        String developmentProposalNumber = nodes.item(0).getTextContent();
        BusinessObjectService businessObjectService = KraServiceLocator.getService(BusinessObjectService.class);
        DevelopmentProposal proposalDevelopmentDocument = businessObjectService.findBySinglePrimaryKey(DevelopmentProposal.class, developmentProposalNumber);

        boolean financeStepTriggered = false;

        if (isParamAlwaysEnabled) {
            // then the ALWAYS TRIGGER is on, and we ignore the other 2 triggers
            financeStepTriggered = true;
        } else {
            //
            // check BOTH triggers conditions
            //
            if (isParamUnderRecoveryEnabled) {

                int underRecovMinAmount = 0;

                try {
                    underRecovMinAmount = Integer.parseInt(paramUnderRecoveryMinAmount);
                } catch (Exception e) {
                    // ignored
                }

                List<BudgetDocumentVersion> budDocVersions = proposalDevelopmentDocument.getProposalDocument().getBudgetDocumentVersions();
                String budgetDocumentNumberToRetrieve = null;

                if (budDocVersions != null) {

                    // find the FINAL budget version number
                    int numBudgetVersion = budDocVersions.size();
                    for (int i = 0; i < numBudgetVersion; i++) {
                        BudgetDocumentVersion budVer = budDocVersions.get(i);

                        if (budVer.getBudgetVersionOverview().isFinalVersionFlag()) {
                            budgetDocumentNumberToRetrieve = budVer.getBudgetVersionOverview().getDocumentNumber();
                        }
                    }

                    // if a budget doc number for a FINAL budget was found, then process, else do nothing so ZERO is returned
                    if (budgetDocumentNumberToRetrieve != null) {
                        try {
                            // retrieve the actual BudgetDocument
                            DocumentService docService = KraServiceLocator.getService(DocumentService.class);
                            BudgetDocument budgetDoc = (BudgetDocument) docService.getByDocumentHeaderId(budgetDocumentNumberToRetrieve);

                            // retrieve the actual Budget
                            Budget actualBudget = budgetDoc.getBudget();

                            BudgetDecimal underrecov = actualBudget.getUnderrecoveryAmount();

                            if (underrecov.intValue() > underRecovMinAmount) {
                                // then the budget's underrecovery amount is GREATER than the value specified
                                // in the parameter so we've TRIGGERED the condition
                                financeStepTriggered = true;
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
            //
            if (isParamCostShareEnabled) {

                int costShareMinAmount = 0;

                try {
                    costShareMinAmount = Integer.parseInt(paramCostShareMinAmount);
                } catch (Exception e) {
                    // ignored
                }

                List<BudgetDocumentVersion> budDocVersions = proposalDevelopmentDocument.getProposalDocument().getBudgetDocumentVersions();
                String budgetDocumentNumberToRetrieve = null;

                if (budDocVersions != null) {

                    // find the FINAL version (greatest budget version number)
                    int numBudgetVersion = budDocVersions.size();
                    for (int i = 0; i < numBudgetVersion; i++) {
                        BudgetDocumentVersion budVer = budDocVersions.get(i);

                        if (budVer.getBudgetVersionOverview().isFinalVersionFlag()) {
                            budgetDocumentNumberToRetrieve = budVer.getBudgetVersionOverview().getDocumentNumber();
                        }
                    }

                    // if a budget doc number for a FINAL budget was found, then process, else do nothing so ZERO is returned
                    if (budgetDocumentNumberToRetrieve != null) {
                        try {
                            // retrieve the actual BudgetDocument
                            DocumentService docService = KraServiceLocator.getService(DocumentService.class);
                            BudgetDocument budgetDoc = (BudgetDocument) docService.getByDocumentHeaderId(budgetDocumentNumberToRetrieve);

                            // retrieve the actual Budget
                            Budget actualBudget = budgetDoc.getBudget();

                            BudgetDecimal costshareamount = actualBudget.getCostSharingAmount();

                            if (costshareamount.intValue() > costShareMinAmount) {
                                // then the budget's CostSHaring amount is GREATER than the value specified
                                // in the parameter so we've TRIGGERED the condition
                                financeStepTriggered = true;
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }

        // if the Finance WOrkflow step has been triggered via any of the above conditions
        if (financeStepTriggered) {

            // if the recipient type is one or more people
            if ("PERSON".equalsIgnoreCase(paramSendToCode)) {
                // if the parameter specifying the list of people is empty, short-circuit
                if (paramPrincipalIds == null || paramPrincipalIds.isEmpty()) {
                    return members;
                }

                String[] principalIdAry = null;

                if (paramPrincipalIds.contains(",")) {
                    principalIdAry = paramPrincipalIds.split("[,]");
                } else if (paramPrincipalIds.contains(";")) {
                    principalIdAry = paramPrincipalIds.split("[;]");
                } else {
                    // else not a delimited list and should be a single value
                    principalIdAry = new String[1];
                    principalIdAry[0] = paramPrincipalIds;
                }

                if (principalIdAry != null) {
                    KcPersonService kcPersonService = KraServiceLocator.getService(KcPersonService.class);

                    for (int i = 0; i < principalIdAry.length; i++) {
                        String principalIdToAdd = principalIdAry[i];
                        KcPerson person = kcPersonService.getKcPersonByPersonId(principalIdToAdd);
                        // ensure each person assigned is real and is active
                        if (person != null && person.getActive()) {
                            members.add(new PrincipalId(principalIdToAdd));
                        }
                    }
                }

            } else if ("ROLE".equalsIgnoreCase(paramSendToCode)) {
                // if the recipient type is one or more Roles
                //
                // if the parameter specifying the list of roles is empty, short-circuit
                if (paramRoleIds == null || paramRoleIds.isEmpty()) {
                    return members;
                }

                String[] roleIdAry = null;

                if (paramRoleIds.contains(",")) {
                    roleIdAry = paramRoleIds.split("[,]");
                } else if (paramRoleIds.contains(";")) {
                    roleIdAry = paramRoleIds.split("[;]");
                } else {
                    // if the parameter specifying the list of people is empty, short-circuit
                    roleIdAry = new String[1];
                    roleIdAry[0] = paramRoleIds;
                }

                if (roleIdAry != null) {

                    List<String> roleIds = new ArrayList<String>();

                    for (int i = 0; i < roleIdAry.length; i++) {
                        String roleIdToLookup = roleIdAry[i];
                        roleIds.add(roleIdToLookup);
                    }

                    RoleService roleManagementService = KraServiceLocator.getService(RoleService.class);
                    KcPersonService kcPersonService = KraServiceLocator.getService(KcPersonService.class);
                    List<RoleMembership> membershipInfoList = roleManagementService.getRoleMembers(roleIds, new HashMap<String, String>());

                    for (RoleMembership memberShipInfo : membershipInfoList) {
                        String personId = memberShipInfo.getMemberId();
                        KcPerson person = kcPersonService.getKcPersonByPersonId(personId);
                        // ensure each person assigned the role is still active
                        if (person != null && person.getActive()) {
                            members.add(new PrincipalId(personId));
                        }
                    }
                }

            } else if ("UNITADMIN".equalsIgnoreCase(paramSendToCode)) {
                // recipient type is set to Unit Administrators, so check the list of unit admin type codes 
                if (paramUnitAdminTypeCode == null || paramUnitAdminTypeCode.isEmpty()) {
                    return members;
                }

                List<Unit> addedUnits = new ArrayList<Unit>();

                // add the Lead Unit of the Proposal
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
                                        && StringUtils.equals(unitAdministrator.getUnitAdministratorTypeCode(), paramUnitAdminTypeCode)) {
                                    members.add(new PrincipalId(unitAdministrator.getPersonId()));
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
            } else {
                // no valid recipient type specified, do nothing for now
            }
        }

        return members;
    }
}
