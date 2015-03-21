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
package org.ariahgroup.research.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang.StringUtils;
import org.ariahgroup.research.service.UnitService;
import org.kuali.kra.bo.Unit;
import org.kuali.kra.bo.UnitAdministrator;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.rice.krad.service.BusinessObjectService;

/**
 * adds custom methods to the default implementation of unit service
 *
 * @author The Ariah Group, Inc.
 *
 */
public class UnitServiceImpl extends org.kuali.kra.service.impl.UnitServiceImpl implements UnitService {

    @Override
    public List<UnitAdministrator> retrieveUnitAdminsByAdminTypesAll(String unitAdminTypeCode) {

        List<UnitAdministrator> unitAdmins = new ArrayList<UnitAdministrator>();

        if (unitAdminTypeCode == null || unitAdminTypeCode.isEmpty()) {
            return unitAdmins;
        } else {

            if (super.getBusinessObjectService() == null) {
                super.setBusinessObjectService(KraServiceLocator.getService(BusinessObjectService.class));
            }

            Map<String, String> queryMap = new HashMap<String, String>();
            queryMap.put("unitAdministratorTypeCode", unitAdminTypeCode);
            unitAdmins = (List<UnitAdministrator>) super.getBusinessObjectService().findMatching(UnitAdministrator.class, queryMap);

            return unitAdmins;
        }
    }

    @Override
    public List<UnitAdministrator> retrieveUnitAdminsByAdminTypes(
            List<String> adminTypes, List<Unit> unitHierarchy) {
        ArrayList<UnitAdministrator> unitAdmins = new ArrayList<UnitAdministrator>();

        if (unitHierarchy == null || unitHierarchy.isEmpty()) {
            return unitAdmins;
        }
        if (adminTypes == null || adminTypes.isEmpty()) {
            return unitAdmins;
        } else {
            for (Unit unit : unitHierarchy) {
                if (unit != null) {
                    for (UnitAdministrator admin : unit.getUnitAdministrators()) {
                        for (String adminTypeCode : adminTypes) {
                            if (admin.getUnitAdministratorTypeCode().equalsIgnoreCase(adminTypeCode)) {
                                unitAdmins.add(admin);
                            }
                        }
                    }
                }
            }
            return unitAdmins;
        }
    }

    @Override
    public boolean findUnitAdmin(
            List<UnitAdministrator> admins, String principalId) {
        if (admins == null || admins.isEmpty()) {
            return false;
        } else if (StringUtils.isEmpty(principalId)) {
            return false;
        }

        for (UnitAdministrator admin : admins) {
            if (admin != null && admin.getPersonId().equals(principalId)) {
                return true;
            }
        }

        return false;
    }

    @Override
    public boolean isQualifiedUnitAdminForProposal(
            DevelopmentProposal developmentProposal, String principalId,
            List<String> qualifiedAdminTypes) {
        List<Unit> hierarchy = getUnitHierarchyForUnit(developmentProposal.getOwnedByUnitNumber());
        List<UnitAdministrator> admins = retrieveUnitAdminsByAdminTypes(qualifiedAdminTypes, hierarchy);

        return findUnitAdmin(admins, principalId);
    }
}
