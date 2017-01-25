/**
 * Copyright 2016 The Ariah Group, Inc.
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
package org.ariahgroup.research.proposaldevelopment.dao.impl;

import java.sql.SQLException;
import java.util.List;
import org.apache.ojb.broker.accesslayer.LookupException;
import org.apache.ojb.broker.query.Criteria;
import org.apache.ojb.broker.query.QueryFactory;
import org.ariahgroup.research.proposaldevelopment.bo.PropRelatedProposal;

import org.ariahgroup.research.proposaldevelopment.dao.RelatedProposalsDao;
import org.kuali.rice.core.framework.persistence.ojb.dao.PlatformAwareDaoBaseOjb;

/**
 *
 * @author The Ariah Group, Inc.
 */
public class RelatedProposalsDaoOjb extends PlatformAwareDaoBaseOjb implements RelatedProposalsDao {

    private static org.apache.commons.logging.Log LOG = org.apache.commons.logging.LogFactory.getLog(RelatedProposalsDaoOjb.class);

    /**
     *
     * @return @throws LookupException
     * @throws SQLException
     */
    @Override
    public List<PropRelatedProposal> getRelatedProposals(String proposalNumber) throws LookupException, SQLException {

        // look up and populate with a custom OR query the related proposals
        Criteria criteria = new Criteria();
        criteria.addOrCriteria(criteria);

        Criteria crit1 = new Criteria();
        crit1.addEqualTo("proposalNumber1", proposalNumber);

        Criteria crit2 = new Criteria();
        crit2.addEqualTo("proposalNumber2", proposalNumber);

        crit1.addOrCriteria(crit2);

        org.apache.ojb.broker.query.QueryByCriteria query = QueryFactory.newQuery(PropRelatedProposal.class, crit1);
        //query.addOrderByDescending("sequenceNumber");

        LOG.error("getRelatedProposals running... : query = " + query.toString());

        List<PropRelatedProposal> relatedProps = (List<PropRelatedProposal>) getPersistenceBrokerTemplate().getCollectionByQuery(query);

        if (relatedProps == null || relatedProps.isEmpty()) {
            LOG.error("getRelatedProposals returning 0 records");
        } else {
            LOG.error("getRelatedProposals returning " + relatedProps.size() + " records");
        }

        return relatedProps;
    }

}
