/**
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
package org.ariahgroup.research.service.impl;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.kuali.kra.bo.KcPerson;
import org.kuali.kra.common.permissions.Permissionable;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.infrastructure.RoleConstants;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.service.KcPersonService;

/**
 * adds custom processing to default implementation
 *
 * @author The Ariah Group, Inc.
 *
 */
public class KraAuthorizationServiceImpl extends org.kuali.kra.service.impl.KraAuthorizationServiceImpl {

    private KcPersonService localKcPersonService;

    /* (non-Javadoc)
     * @see org.kuali.kra.service.impl.KraAuthorizationServiceImpl#getPersonsInRole(org.kuali.kra.common.permissions.Permissionable, java.lang.String)
     */
    /**
     * adds the proposal coordinator to the proposal users list with aggregator
     * role
     */
    @Override
    public List<KcPerson> getPersonsInRole(Permissionable permissionable,
            String roleName) {
        List<KcPerson> list = super.getPersonsInRole(permissionable, roleName);

        return (addProposalCoordinatorAggregatorRole(list, permissionable, roleName));
    }

    /**
     * Add the specified proposal coordinator to the list of proposal aggregators.
     *
     * @param persons - the persons existing with the specified role name
     * @param permissionable - the permissionable e.g. a proposal document
     * @param roleName - the role
     * @return the original list with an entry added for the proposal
     * coordinator if they exists on the development proposal extension BO, if
     * the role is {@link RoleConstants#AGGREGATOR},
     */
    public List<KcPerson> addProposalCoordinatorAggregatorRole(List<KcPerson> persons, Permissionable permissionable, String roleName) {
        if (roleName.equals(RoleConstants.AGGREGATOR) && permissionable != null && permissionable instanceof ProposalDevelopmentDocument) {
            final DevelopmentProposal developmentProposal = ((ProposalDevelopmentDocument) permissionable).getDevelopmentProposal();
            String proposalCoordinatorValue = developmentProposal.getProposalCoordinatorPrincipalName();
            if (!StringUtils.isBlank(proposalCoordinatorValue)) {
                KcPerson person = getLocalKcPersonService().getKcPersonByUserName(proposalCoordinatorValue);
                if (person != null) {
                    // add person only if they do not exist in the provided list
                    boolean exists = false;
                    for (KcPerson currentPerson : persons) {
                        if (proposalCoordinatorValue.equals(currentPerson.getUserName())) {
                            exists = true;
                            break;
                        }
                    }
                    if (!exists) {
                        persons.add(person);
                    }
                }
            }
        }

        return persons;
    }

    /**
     * Looks up and returns the KcPersonService.
     *
     * @return the person service.
     */
    protected KcPersonService getLocalKcPersonService() {
        if (this.localKcPersonService == null) {
            this.localKcPersonService = KraServiceLocator.getService(KcPersonService.class);
        }
        return this.localKcPersonService;
    }

    /**
     * @param localKcPersonService the localKcPersonService to set
     */
    public void setLocalKcPersonService(KcPersonService localKcPersonService) {
        this.localKcPersonService = localKcPersonService;
    }
}
