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
package org.kuali.kra.lookup;

import org.kuali.kra.infrastructure.Constants;
import org.kuali.rice.kns.lookup.KualiLookupableHelperServiceImpl;
import org.kuali.rice.krad.bo.BusinessObject;

import java.util.List;
import java.util.Map;

public class ActiveFlagLookupableHelperServiceImpl extends KualiLookupableHelperServiceImpl {

    /**
     *
     * This is for activeFlag. It's boolean, but saved as 'N/F'. So, it caused
     * trouble for lookup
     *
     * @see
     * org.kuali.core.lookup.KualiLookupableHelperServiceImpl#getSearchResults(java.util.Map)
     *
     */
    public List<? extends BusinessObject> getSearchResults(Map<String, String> fieldValues) {
        if (fieldValues.get(Constants.ON_OFF_CAMPUS_FLAG).equalsIgnoreCase("Y")) {
            fieldValues.put(Constants.ON_OFF_CAMPUS_FLAG, Constants.ON_CAMPUS_FLAG);
        } else if (fieldValues.get(Constants.ON_OFF_CAMPUS_FLAG).equalsIgnoreCase("N")) {
            fieldValues.put(Constants.ON_OFF_CAMPUS_FLAG, Constants.OFF_CAMPUS_FLAG);
        }
        return super.getSearchResults(fieldValues);
    }

}
