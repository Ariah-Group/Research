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
package org.kuali.kra.proposaldevelopment.rule;

import org.kuali.kra.proposaldevelopment.rule.event.SaveNarrativesEvent;
import org.kuali.rice.krad.rules.rule.BusinessRule;


/**
 * Interface for saving proposal narratives
 *
 * @author $Author: gmcgrego $
 * @version $Revision: 1.2 $
 */
public interface SaveNarrativesRule extends BusinessRule {
    
    /**
     * Rule invoked upon saving narratives 
     * @return boolean
     */
    public boolean processSaveNarrativesBusinessRules(SaveNarrativesEvent saveNarrativesEvent);
}
