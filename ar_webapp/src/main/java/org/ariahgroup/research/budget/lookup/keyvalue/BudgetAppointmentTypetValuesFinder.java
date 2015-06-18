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
package org.ariahgroup.research.budget.lookup.keyvalue;

import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.rice.core.api.util.ConcreteKeyValue;
import org.kuali.rice.core.api.util.KeyValue;
import org.kuali.rice.krad.uif.control.UifKeyValuesFinderBase;

import java.util.*;
import org.kuali.kra.budget.personnel.AppointmentType;
import org.kuali.rice.krad.service.BusinessObjectService;

public class BudgetAppointmentTypetValuesFinder extends UifKeyValuesFinderBase {

    @Override
    public List<KeyValue> getKeyValues() {
        List<KeyValue> keyValues = new ArrayList<KeyValue>();

        Map<String, String> paramFields = new HashMap<String, String>();
        paramFields.put("active", "Y");

        Collection<AppointmentType> apptTypes = (Collection<AppointmentType>) KraServiceLocator
                .getService(BusinessObjectService.class).findMatchingOrderBy(AppointmentType.class, paramFields, "description", true);

        for (AppointmentType aptType : apptTypes) {
            keyValues.add(new ConcreteKeyValue(aptType.getAppointmentTypeCode(), aptType.getDescription()));
        }

        return keyValues;
    }
}