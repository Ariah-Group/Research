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
package org.kuali.kra.service.impl;

import org.kuali.kra.infrastructure.CitizenshipTypes;
import org.kuali.kra.service.CitizenshipTypeService;

/**
 *
 * This service has been made available for implementers who will be using an
 * external source for citizenship data. It hooks into S2SUtilService via the
 * system parameter PI_CITIZENSHIP_FROM_CUSTOM_DATA. Setting this to "0" will
 * see that S2SUtilServiceImpl::getCitizenship receive a CitizenshipTypes from
 * this service, as opposed to KcPerson's extended attributes
 *
 * Schools who need external citizenship data are expected to override this
 * service with their own implementation of
 * "getCitizenshipDataFromExternalSource().
 */
public class CitizenshipTypeServiceImpl implements CitizenshipTypeService {

    @Override
    public CitizenshipTypes getCitizenshipDataFromExternalSource() {
        throw new UnsupportedOperationException("External Source Must be configured when system parameter PI_CITIZENSHIP_FROM_CUSTOM_DATA is set to '0'");
    }

}
