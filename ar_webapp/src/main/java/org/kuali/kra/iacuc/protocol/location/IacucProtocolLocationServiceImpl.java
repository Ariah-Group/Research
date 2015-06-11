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
package org.kuali.kra.iacuc.protocol.location;

import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.protocol.protocol.location.ProtocolLocationBase;
import org.kuali.kra.protocol.protocol.location.ProtocolLocationServiceImplBase;
import org.kuali.rice.coreservice.framework.parameter.ParameterService;

public class IacucProtocolLocationServiceImpl extends ProtocolLocationServiceImplBase implements IacucProtocolLocationService {

    @Override
    protected ProtocolLocationBase getNewProtocolLocationInstanceHook() {
        return new IacucProtocolLocation();
    }

    @Override
    protected String getDefaultProtocolOrganizationTypeCodeHook() {
        return Constants.DEFAULT_PROTOCOL_ORGANIZATION_TYPE_CODE;
    }

    /**
     * Retrieve the Organization ID of the default Performing Organization that
     * is set during creation of a Protocol.
     *
     * @return Default performing organization
     */
    @Override
    protected String getDefaultProtocolOrganizationIdHook() {

        String defaultOrganizationId = KraServiceLocator.getService(ParameterService.class).getParameterValueAsString(Constants.MODULE_NAMESPACE_IACUC,
                Constants.PARAMETER_COMPONENT_DOCUMENT, Constants.ARIAH_PARAM_IACUC_DEFAULT_PERFORMING_ORG_ID);

        return defaultOrganizationId;
    }
}
