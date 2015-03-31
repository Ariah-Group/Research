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
 *
 * ------------------------------------------------------
 * Updates made after January 1, 2015 are :
 * Copyright 2015 The Ariah Group, Inc.
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
package org.kuali.kra.irb.protocol.location;

import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.protocol.protocol.location.ProtocolLocationBase;
import org.kuali.kra.protocol.protocol.location.ProtocolLocationServiceImplBase;
import org.kuali.rice.coreservice.framework.parameter.ParameterService;

public class ProtocolLocationServiceImpl extends ProtocolLocationServiceImplBase implements ProtocolLocationService {

    /**
     * Retrieve the Organization ID of the default Performing Organization that
     * is set during creation of a Protocol.
     *
     */
    @Override
    protected String getDefaultProtocolOrganizationIdHook() {
        String defaultOrganizationId = KraServiceLocator.getService(ParameterService.class).getParameterValueAsString(Constants.MODULE_NAMESPACE_PROTOCOL,
                Constants.PARAMETER_COMPONENT_DOCUMENT, Constants.ARIAH_PARAM_IRB_DEFAULT_PERFORMING_ORG_ID);

        return defaultOrganizationId;
    }

    @Override
    protected String getDefaultProtocolOrganizationTypeCodeHook() {
        return Constants.DEFAULT_PROTOCOL_ORGANIZATION_TYPE_CODE;
    }

    @Override
    protected ProtocolLocationBase getNewProtocolLocationInstanceHook() {
        return new ProtocolLocation();
    }
}