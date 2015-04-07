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
package org.kuali.kra.irb.personnel;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.kuali.kra.bo.PersonTraining;
import org.kuali.kra.protocol.personnel.ProtocolPersonTrainingServiceImplBase;

public class ProtocolPersonTrainingServiceImpl extends ProtocolPersonTrainingServiceImplBase implements ProtocolPersonTrainingService {

    private static final String PERSON_ID_FIELD = "personId";

    @Override
    public List<PersonTraining> getPersonTrainingDetails(String personId) {
        Map<String, Object> matchingKeys = new HashMap<String, Object>();
        matchingKeys.put(PERSON_ID_FIELD, personId);

        List<PersonTraining> allTraining = (List<PersonTraining>) getBusinessObjectService().findMatching(PersonTraining.class, matchingKeys);

        return allTraining;
    }
}
