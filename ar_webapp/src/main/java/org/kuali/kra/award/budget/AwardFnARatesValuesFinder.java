/*
 * Copyright 2005-2014 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.osedu.org/licenses/ECL-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.award.budget;

import org.kuali.kra.award.budget.document.AwardBudgetDocument;
import org.kuali.kra.budget.rates.RateType;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.rice.core.api.util.ConcreteKeyValue;
import org.kuali.rice.core.api.util.KeyValue;
import org.kuali.rice.coreservice.framework.parameter.ParameterService;
import org.kuali.rice.krad.service.KeyValuesService;
import org.kuali.rice.krad.uif.control.UifKeyValuesFinderBase;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.kuali.rice.krad.service.BusinessObjectService;

/**
 * Provides a KeyValue lookup of FnA Rate Types.
 * 
 */
public class AwardFnARatesValuesFinder extends UifKeyValuesFinderBase {

    KeyValuesService keyValuesService = (KeyValuesService) KraServiceLocator.getService("keyValuesService");
    ParameterService parameterService = (ParameterService) KraServiceLocator.getService(ParameterService.class);

    /**
     * Constructs the list of Rate Types. Each entry in the list is a &lt;key,
     * value&gt; pair, where the "key" is the unique Rate Type Code and the
     * "value" is the Rate Type description that is viewed by a user. The list
     * is obtained from the RATE_TYPE database table and is filtered by a Rate
     * Class Code matching the value of the Parameter
     * "awardBudgetDefaultFnARateClassCode" .
     *
     * @return the list of &lt;key, value&gt; pairs of RateTypes. The first
     * entry is always &lt;"", "select:"&gt;.
     * @see org.kuali.rice.krad.keyvalues.KeyValuesFinder#getKeyValues()
     */
    @Override
    public List<KeyValue> getKeyValues() {
        List<KeyValue> matchingAwardFnARateTypes = filterRateTypes();
        matchingAwardFnARateTypes.add(0, new ConcreteKeyValue("", "select"));
        return matchingAwardFnARateTypes;
    }

    private List<KeyValue> filterRateTypes() {

        // retrieve parameter
        String fnaRateClassCode = parameterService.getParameterValueAsString(AwardBudgetDocument.class, Constants.AWARD_BUDGET_DEFAULT_FNA_RATE_CLASS_CODE);

        // define filter
        Map<String, String> paramFields = new HashMap<String, String>();
        paramFields.put("rateClassCode", fnaRateClassCode);

        // lookup records and return ONLY those matching the filter
        Collection<RateType> awardFnARateTypes = (Collection<RateType>) KraServiceLocator
                .getService(BusinessObjectService.class).findMatchingOrderBy(RateType.class, paramFields, "description", true);

        List<KeyValue> keyValues = new ArrayList<KeyValue>();
        for (RateType rateType : awardFnARateTypes) {
            keyValues.add(new ConcreteKeyValue(rateType.getRateTypeCode(), rateType.getDescription()));
        }
        return keyValues;
    }
}
