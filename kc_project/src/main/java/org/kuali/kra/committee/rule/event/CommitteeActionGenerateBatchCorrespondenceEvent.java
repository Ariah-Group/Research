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
package org.kuali.kra.committee.rule.event;

import org.kuali.kra.committee.rules.CommitteeActionGenerateBatchCorrespondenceRule;
import org.kuali.kra.common.committee.rule.event.CommitteeActionGenerateBatchCorrespondenceEventBase;
import org.kuali.kra.common.committee.rules.CommitteeActionGenerateBatchCorrespondenceRuleBase;
import org.kuali.rice.krad.document.Document;

import java.sql.Date;

public class CommitteeActionGenerateBatchCorrespondenceEvent extends CommitteeActionGenerateBatchCorrespondenceEventBase {

    public CommitteeActionGenerateBatchCorrespondenceEvent(String errorPathPrefix, Document document, String batchCorrespondenceTypeCode, Date startDate, Date endDate, String committeeId) {
        super(errorPathPrefix, document, batchCorrespondenceTypeCode, startDate, endDate, committeeId);
    }

    @Override
    protected CommitteeActionGenerateBatchCorrespondenceRuleBase getNewCommitteeActionGenerateBatchCorrespondenceRuleInstanceHook() {
        return new CommitteeActionGenerateBatchCorrespondenceRule();
    }

}
