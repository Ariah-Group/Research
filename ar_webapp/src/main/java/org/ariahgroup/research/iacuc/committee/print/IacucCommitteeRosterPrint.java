/*
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
package org.ariahgroup.research.iacuc.committee.print;

import org.kuali.kra.common.committee.print.TemplatePrintBase;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.rice.coreservice.framework.parameter.ParameterService;

/**
 * This class provides the implementation for printing IACUC Committee Roster.
 *
 */
public class IacucCommitteeRosterPrint extends TemplatePrintBase {

    private static final long serialVersionUID = -4077775486854400861L;

    @Override
    public String getProtoCorrespTypeCode() {

        ParameterService paramServ = (ParameterService) KraServiceLocator.getService(ParameterService.class);

        String iacucCorrespTypeCodeRoster = paramServ.getParameterValueAsString(Constants.MODULE_NAMESPACE_IACUC,
                Constants.PARAMETER_COMPONENT_DOCUMENT, Constants.ARIAH_IACUC_CORRESP_TYPE_CODE_ROSTER);

        return iacucCorrespTypeCodeRoster;
    }
}
