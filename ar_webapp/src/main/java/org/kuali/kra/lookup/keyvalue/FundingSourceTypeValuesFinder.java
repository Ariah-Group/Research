/*
 * Copyright 2005-2010 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.lookup.keyvalue;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.kuali.kra.bo.CoeusModule;

import org.kuali.kra.bo.FundingSourceType;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.rice.core.api.util.ConcreteKeyValue;
import org.kuali.rice.core.api.util.KeyValue;
import org.kuali.rice.krad.service.BusinessObjectService;
import org.kuali.rice.krad.uif.control.UifKeyValuesFinderBase;

public class FundingSourceTypeValuesFinder extends UifKeyValuesFinderBase {

    private BusinessObjectService businessObjectService;

    @Override
    public List<KeyValue> getKeyValues() {

        List<KeyValue> keyValues = new ArrayList<KeyValue>();
        Collection<FundingSourceType> fundingSourceTypes = (Collection<FundingSourceType>) KraServiceLocator
                .getService(BusinessObjectService.class).findAll(FundingSourceType.class);

        for (FundingSourceType fundingSourceType : fundingSourceTypes) {

            if (fundingSourceType.getFundingSourceTypeFlag()) {

                boolean moduleActive = false;

                if (fundingSourceType.getDisablCoeusModuleId() == 0) {
                    moduleActive = true;
                } else {
                    Map<String, Integer> primaryKeys = new HashMap<String, Integer>();
                    primaryKeys.put("moduleCode", fundingSourceType.getDisablCoeusModuleId());

                    CoeusModule module = (CoeusModule) getBusinessObjectService().findByPrimaryKey(CoeusModule.class, primaryKeys);

                    if (module != null) {
                        moduleActive = module.isActive();
                    }
                }
                
                if (moduleActive) {
                    keyValues.add(new ConcreteKeyValue(fundingSourceType.getFundingSourceTypeCode(), fundingSourceType.getDescription()));
                }
            }
        }

        keyValues.add(0, new ConcreteKeyValue("", "select"));
        return keyValues;
    }

    protected BusinessObjectService getBusinessObjectService() {
        if (businessObjectService == null) {
            businessObjectService = KraServiceLocator.getService(BusinessObjectService.class);
        }
        return businessObjectService;
    }

    public void setBusinessObjectService(BusinessObjectService businessObjectService) {
        this.businessObjectService = businessObjectService;
    }
}
