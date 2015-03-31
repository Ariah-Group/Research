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
package org.kuali.kra.iacuc.personnel;

import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.protocol.personnel.ProtocolPersonnelRuleBase;
import org.kuali.kra.protocol.personnel.ProtocolPersonnelService;
import org.kuali.kra.rule.BusinessRuleInterface;

/**
 * Runs the rule processing for saving a <code>ProtocolPerson</code>.
 */
public class SaveIacucProtocolPersonnelRule extends ProtocolPersonnelRuleBase implements BusinessRuleInterface<SaveIacucProtocolPersonnelEvent> {


    /**
     * {@inheritDoc}
     * @see org.kuali.kra.rule.BusinessRuleInterface#processRules(org.kuali.kra.rule.event.KraDocumentEventBaseExtension)
     */
    public boolean processRules(SaveIacucProtocolPersonnelEvent event) {
        return processSaveProtocolPersonnelEvent(event);
    }

    @Override
    public ProtocolPersonnelService getProtocolPersonnelServiceHook() {
        return (ProtocolPersonnelService)KraServiceLocator.getService("iacucProtocolPersonnelService");
    }
    
}
