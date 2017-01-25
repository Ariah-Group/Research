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

import org.apache.ojb.broker.PersistenceBroker;
import org.apache.ojb.broker.metadata.CollectionDescriptor;
import org.apache.ojb.broker.query.Criteria;
import org.apache.ojb.broker.query.Query;
import org.apache.ojb.broker.query.QueryByCriteria;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 *
 * @author Araih Group, Inc.
 */
public class RelatedProposalsQueryCustomizer extends org.apache.ojb.broker.accesslayer.QueryCustomizerDefaultImpl {

    private static org.apache.commons.logging.Log LOG = org.apache.commons.logging.LogFactory.getLog(RelatedProposalsQueryCustomizer.class);
    private final Map<String, String> queryMap = new HashMap<String, String>();

    /**
     *
     * @see
     * org.apache.ojb.broker.accesslayer.QueryCustomizerDefaultImpl#customizeQuery(java.lang.Object,
     * org.apache.ojb.broker.PersistenceBroker,
     * org.apache.ojb.broker.metadata.CollectionDescriptor,
     * org.apache.ojb.broker.query.QueryByCriteria)
     */
    @Override
    public Query customizeQuery(Object anObject, PersistenceBroker aBroker, CollectionDescriptor aCod, QueryByCriteria aQuery) {

        LOG.error("customizeQuery running...");

        if (anObject != null) {
            LOG.error("customizeQuery : anObject = " + anObject.toString());
        }

        Iterator<String> keys = queryMap.keySet().iterator();

        // get first proposalNumber
        Criteria crit1 = aQuery.getCriteria();
        String key = keys.next();
        String value = queryMap.get(key);

        LOG.error("customizeQuery : 1 key = " + key + " , value = " + value);

        crit1.addEqualTo(key, value);

        // get second proposal number
        key = keys.next();
        value = queryMap.get(key);

        LOG.error("customizeQuery : 2 key = " + key + " , value = " + value);

        Criteria crit2 = new Criteria();
        crit2.addEqualTo(key, value);

        crit1.addOrCriteria(crit2);

        LOG.error("customizeQuery : query = " + aQuery.toString());

        return aQuery;
    }

    /**
     * Override this method, if developer needs more than just supplying values
     * to the 'where' clause
     *
     * @see
     * org.apache.ojb.broker.accesslayer.QueryCustomizerDefaultImpl#addAttribute(java.lang.String,
     * java.lang.String)
     */
    @Override
    public void addAttribute(String name, String value) {
        queryMap.put(name, value);
    }
}
