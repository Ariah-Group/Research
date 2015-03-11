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
package org.kuali.kra.infrastructure;

import org.kuali.kra.budget.RateDecimal;
import org.kuali.rice.core.web.format.BigDecimalFormatter;

import java.math.BigDecimal;

public class RateDecimalFormatter extends BigDecimalFormatter {
    private static final long serialVersionUID = 4658319828434873892L;

    /**
     * Overidden to create a RateDecimal from a String
     */
    @Override
    protected Object convertToObject(String target) {
        return new RateDecimal((BigDecimal)super.convertToObject(target));
    }
    
    @Override
    public Object format(Object obj) {
        return super.format((BigDecimal)super.convertToObject(obj.toString()));
    }
}
