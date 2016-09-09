/*
 * Copyright 2005-2014 The Kuali Foundation
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
package org.kuali.kra.s2s.validator;

import org.kuali.kra.infrastructure.Constants;
import org.kuali.rice.kns.util.AuditError;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.ariahgroup.research.bo.S2sErrorMessage;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.rice.krad.service.BusinessObjectService;

public class S2SErrorHandler {

    private static final Log LOG = LogFactory.getLog(S2SErrorHandler.class);

    public static AuditError getError(String key) {

        AuditError error = null;

        Map<String, Object> fieldValues1 = new HashMap<String, Object>();
        fieldValues1.put("messageKey", key);
        List<S2sErrorMessage> errorList = (List<S2sErrorMessage>) KraServiceLocator.getService(BusinessObjectService.class).findMatching(S2sErrorMessage.class, fieldValues1);

        if (errorList != null && errorList.size() > 0) {
            S2sErrorMessage errorObj = errorList.get(0);

            String errorFixLink = errorObj.getFixLink() == null || errorObj.getFixLink().equals("") ? Constants.GRANTS_GOV_PAGE + "."
                    + Constants.GRANTS_GOV_PANEL_ANCHOR : errorObj.getFixLink();

            error = new AuditError(errorObj.getMessageKey() == null ? Constants.NO_FIELD : errorObj.getMessageKey(), errorObj.getMessageDecription(), errorFixLink);

        }

        if (error == null) {

            LOG.warn("S2SErrorHandler.getError passed key that does NOT map to error message : Key = " + key);
            AuditError defaultError = new AuditError(Constants.NO_FIELD, key + " is not valid", Constants.GRANTS_GOV_PAGE + "."
                    + Constants.GRANTS_GOV_PANEL_ANCHOR);

            return defaultError;
        } else {
            return error;
        }
    }
}
