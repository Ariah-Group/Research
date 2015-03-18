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
package org.ariahgroup.research.service;

import java.util.List;

import org.kuali.kra.bo.Unit;
import org.kuali.kra.bo.UnitAdministrator;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;

/**
 * adds custom methods to the default implementation
 *
 * @author The Ariah Group, Inc.
 *
 */
public interface UnitService extends org.kuali.kra.service.UnitService {

    /**
     * retrieve all unit admins with the given admin type description up the
     * hierarchy for the specified unit
     *
     * @param unitHierarchy - the hierarchy of units
     * @return a list of unit administrators if found, otherwise an empty list
     */
    public List<UnitAdministrator> retrieveUnitAdminsByAdminTypes(List<String> adminTypes,
            List<Unit> unitHierarchy);

    /**
     * checks if a unit admin with the given principal id exists in the given
     * list
     *
     * @param admins - a list of unit admins
     *
     * @param principalId - the principal id of the admin (if they are an admin)
     * to check
     * @return true if the principalId belongs to a unit admin in the list,
     * false otherwise
     * @see #retrieveUnitAdminsByAdminTypes(List, List)
     */
    public boolean findUnitAdmin(List<UnitAdministrator> admins, String principalId);

    /**
     * find out whether a principal is a unit admin in the hierarchy in which
     * the proposal belongs and has the specified admin types
     *
     * @param proposal - the proposal whose owning unit to start searching from
     * @param principalId - the principal id of the principal
     * @param qualifiedAdminTypes - the admin type(s) that a the principal
     * should belong to
     * @return true if the principal is found as an admin with any of the given
     * types, false otherwise
     */
    public boolean isQualifiedUnitAdminForProposal(DevelopmentProposal proposal, String principalId, List<String> qualifiedAdminTypes);

}
