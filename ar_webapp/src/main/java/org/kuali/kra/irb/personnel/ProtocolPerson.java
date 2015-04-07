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

import java.util.ArrayList;
import java.util.List;
import org.kuali.kra.bo.PersonTraining;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.protocol.personnel.ProtocolPersonBase;

public class ProtocolPerson extends ProtocolPersonBase {

    private static final long serialVersionUID = 3226064839786525909L;
    private static final String PERSON_TRAINED_TRUE = "Yes";
    private static final String PERSON_TRAINED_FALSE = "No";
    
        /**
     * Sequence name constant for IRB Protocol Person ID
     */
    public static final String SEQUENCE_NAME_IRB_PROTOCOL_PERSONID = "SEQ_IRB_PROTOCOL_PERSON_ID";    
    
    private List<PersonTraining> personTrainings;

    public ProtocolPerson() {
        super();
        setPersonTrainings(new ArrayList<PersonTraining>());
    }
    
    public String getPersonTrainedStatus() {
        return getPersonTrainings().size() > 0 ? PERSON_TRAINED_TRUE : PERSON_TRAINED_FALSE;
    }

    public void syncTrainings() {
        setPersonTrainings(getIrbProtocolPersonTrainingService().getPersonTrainingDetails(getPersonId()));
    }
    
    @Override
    protected void postLoad() {
        super.postLoad();
        setPersonTrainings(getIrbProtocolPersonTrainingService().getPersonTrainingDetails(getPersonId()));
    }

    @Override
    protected void postPersist() {
        super.postPersist();
        setPersonTrainings(getIrbProtocolPersonTrainingService().getPersonTrainingDetails(getPersonId()));
    }

    protected ProtocolPersonTrainingService getIrbProtocolPersonTrainingService() {
        return (ProtocolPersonTrainingService) KraServiceLocator.getService("protocolPersonTrainingService");
    }
    
    /**
     * @return the personTrainings
     */
    public List<PersonTraining> getPersonTrainings() {
        return personTrainings;
    }

    /**
     * @param personTrainings the personTrainings to set
     */
    public void setPersonTrainings(List<PersonTraining> personTrainings) {
        this.personTrainings = personTrainings;
    }    
    
}
