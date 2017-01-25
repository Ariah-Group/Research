/**
 * Copyright 2017 The Ariah Group, Inc.
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
package org.ariahgroup.research.proposaldevelopment.dao;

import java.sql.SQLException;
import java.util.List;
import org.apache.ojb.broker.accesslayer.LookupException;
import org.ariahgroup.research.proposaldevelopment.bo.PropRelatedProposal;

/**
 * Interface representing the data access object for retrieving devproposals
 * that are related to a devproposal.
 *
 * @author The Ariah Group, Inc.
 */
public interface RelatedProposalsDao {

    /**
     * Retrieve a List of related proposals
     *
     * @param proposalNumber
     * @return
     * @throws LookupException
     * @throws SQLException
     */
    public List<PropRelatedProposal> getRelatedProposals(String proposalNumber) throws LookupException, SQLException;

}
