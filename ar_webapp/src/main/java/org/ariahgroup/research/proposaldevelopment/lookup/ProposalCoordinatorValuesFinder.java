/**
 * Copyright 2015 The Ariah Group, Inc.
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
package org.ariahgroup.research.proposaldevelopment.lookup;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.ariahgroup.research.service.UnitService;
import org.kuali.kra.bo.Unit;
import org.kuali.kra.bo.UnitAdministrator;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.proposaldevelopment.web.struts.form.ProposalDevelopmentForm;
import org.kuali.rice.core.api.util.ConcreteKeyValue;
import org.kuali.rice.core.api.util.KeyValue;
import org.kuali.rice.coreservice.framework.parameter.ParameterService;
import org.kuali.rice.kns.util.KNSGlobalVariables;
import org.kuali.rice.kns.web.struts.form.KualiForm;
import org.kuali.rice.krad.keyvalues.KeyValuesBase;

/**
 * retrieve proposal coordinators belonging to the current unit and up the
 * hierarchy
 *
 * @author The Ariah Group, Inc.
 *
 */
public class ProposalCoordinatorValuesFinder extends KeyValuesBase {

    private UnitService unitSvc;
    private final Log log = LogFactory.getLog(getClass());
    /**
     *
     */
    private static final long serialVersionUID = 6035592397101570903L;

    /* (non-Javadoc)
     * @see org.kuali.rice.krad.keyvalues.KeyValuesFinder#getKeyValues()
     */
    /**
     * retrieve the key values
     *
     * @return
     */
    @Override
    public List<KeyValue> getKeyValues() {
        String ownedByUnitNumber = null;
        ArrayList<KeyValue> result = null;
        // retrieve the owning unit number from the document
        try {

            KualiForm form = KNSGlobalVariables.getKualiForm();
            if (form instanceof ProposalDevelopmentForm) {
                ProposalDevelopmentForm pdForm = (ProposalDevelopmentForm) KNSGlobalVariables.getKualiForm();
                ProposalDevelopmentDocument doc = pdForm.getProposalDevelopmentDocument();
                DevelopmentProposal developmentProposal = doc.getDevelopmentProposal();
                ownedByUnitNumber = developmentProposal.getOwnedByUnitNumber();
            }

        } catch (Exception e) {
            log.error("unable to retrieve the owning unit number from document", e);
        }
        if (ownedByUnitNumber == null) {
            result = new ArrayList<KeyValue>();
            // add default blank entry
            result.add(new ConcreteKeyValue("", "select"));

            ParameterService paramServ = (ParameterService) KraServiceLocator.getService(ParameterService.class);

            String unitAdminPropCoordTypeCode = paramServ.getParameterValueAsString(Constants.MODULE_NAMESPACE_PROPOSAL_DEVELOPMENT,
                    Constants.PARAMETER_COMPONENT_DOCUMENT, Constants.ARIAH_PROPDEV_PROPOSAL_COORDINATOR_UNITADMINTYPECODE);

            if (unitAdminPropCoordTypeCode != null && !unitAdminPropCoordTypeCode.isEmpty()) {
                List<UnitAdministrator> unitAdmins = getUnitSvc().retrieveUnitAdminsByAdminTypesAll(unitAdminPropCoordTypeCode);
                for (UnitAdministrator unitAdmin : unitAdmins) {
                    result.add(new ConcreteKeyValue(unitAdmin.getPerson().getUserName(),
                            unitAdmin.getPerson().getFullName()));
                }
            }

        } else {
            result = getKeyValues(ownedByUnitNumber);
        }

        return result;
    }

    /**
     * get the key values for a specified unit number
     *
     * @param ownedByUnitNumber - the unit number
     * @return
     */
    public ArrayList<KeyValue> getKeyValues(String ownedByUnitNumber) {
        ArrayList<KeyValue> result = new ArrayList<KeyValue>();
        // add default blank entry
        result.add(new ConcreteKeyValue("", "select"));

        List<Unit> hierarchy = getUnitSvc().getUnitHierarchyForUnit(ownedByUnitNumber);
        List<String> adminTypes = new ArrayList<String>();

        ParameterService paramServ = (ParameterService) KraServiceLocator.getService(ParameterService.class);

        String unitAdminPropCoordTypeCode = paramServ.getParameterValueAsString(Constants.MODULE_NAMESPACE_PROPOSAL_DEVELOPMENT,
                Constants.PARAMETER_COMPONENT_DOCUMENT, Constants.ARIAH_PROPDEV_PROPOSAL_COORDINATOR_UNITADMINTYPECODE);

        adminTypes.add(unitAdminPropCoordTypeCode);
        List<UnitAdministrator> unitAdmins = getUnitSvc().retrieveUnitAdminsByAdminTypes(adminTypes, hierarchy);
        for (UnitAdministrator unitAdmin : unitAdmins) {
            result.add(new ConcreteKeyValue(unitAdmin.getPerson().getUserName(),
                    unitAdmin.getPerson().getFullName()));
        }
        return result;
    }

    /**
     * @return the unitSvc from {@link KraServiceLocator} or a mock
     */
    public UnitService getUnitSvc() {
        if (unitSvc == null) {
            unitSvc = KraServiceLocator.getService(UnitService.class);
        }
        return unitSvc;
    }

    /**
     * @param unitSvc the unitSvc to set
     */
    public void setUnitSvc(UnitService unitSvc) {
        this.unitSvc = unitSvc;
    }
}
