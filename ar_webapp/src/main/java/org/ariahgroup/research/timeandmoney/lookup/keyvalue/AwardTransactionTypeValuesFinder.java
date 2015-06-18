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
package org.ariahgroup.research.timeandmoney.lookup.keyvalue;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.timeandmoney.transactions.AwardTransactionType;
import org.kuali.rice.core.api.util.ConcreteKeyValue;
import org.kuali.rice.core.api.util.KeyValue;
import org.kuali.rice.krad.service.BusinessObjectService;
import org.kuali.rice.krad.uif.control.UifKeyValuesFinderBase;

/**
 * Values Finder lookup for Award Transaction Type.
 *
 * @author The Ariah Group, Inc.
 */
public class AwardTransactionTypeValuesFinder extends UifKeyValuesFinderBase {

    /**
     * Retrieve list of ACTIVE AwardTransactionType's sorted by the
     * 'description' field ascending.
     *
     * @return List of AwardTransactionType objects.
     */
    @Override
    public List<KeyValue> getKeyValues() {
        List<KeyValue> keyValues = new ArrayList<KeyValue>();

        Map<String, String> paramFields = new HashMap<String, String>();
        paramFields.put("active", "Y");

        Collection<AwardTransactionType> types = (Collection<AwardTransactionType>) KraServiceLocator
                .getService(BusinessObjectService.class).findMatchingOrderBy(AwardTransactionType.class, paramFields, "description", true);

        for (AwardTransactionType type : types) {
            keyValues.add(new ConcreteKeyValue(type.getAwardTransactionTypeCode().toString(), type.getDescription()));
        }

        return keyValues;
    }
}
