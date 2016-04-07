/*
 * Copyright 2016 The Ariah Group, Inc.
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
package org.ariahgroup.research.committee.dao.impl;

import java.util.Collection;
import org.apache.ojb.broker.query.Criteria;
import org.apache.ojb.broker.query.Query;
import org.apache.ojb.broker.query.QueryFactory;
import org.apache.ojb.broker.query.ReportQueryByCriteria;
import org.ariahgroup.research.committee.dao.CommitteeFinderDao;
import org.kuali.rice.core.framework.persistence.ojb.dao.PlatformAwareDaoBaseOjb;
import org.kuali.rice.krad.bo.BusinessObject;

/**
 *
 * @author The Ariah Group, Inc.
 */
public class CommitteeFinderDaoObjImpl extends PlatformAwareDaoBaseOjb implements CommitteeFinderDao {

    private static final String COMMITTEE_ID = "committeeId";
    private static final String SEQUENCE_NUM = "sequenceNumber";

    public <T extends BusinessObject> Collection<T> getCommitteeById(Class<T> clazz, String committeeId) {

        Criteria criteria = new Criteria();
        criteria.addEqualTo(COMMITTEE_ID, committeeId);

        Criteria subCriteria = new Criteria();
        subCriteria.addEqualTo(COMMITTEE_ID, committeeId);

        ReportQueryByCriteria subQuery = new ReportQueryByCriteria(clazz, subCriteria);
        subQuery.setAttributes(new String[]{"MAX(" + SEQUENCE_NUM + ")"});

        criteria.addGreaterOrEqualThan(SEQUENCE_NUM, subQuery);

        Query query = QueryFactory.newQuery(clazz, criteria);
        return (Collection<T>) getPersistenceBrokerTemplate().getCollectionByQuery(query);
    }

}
