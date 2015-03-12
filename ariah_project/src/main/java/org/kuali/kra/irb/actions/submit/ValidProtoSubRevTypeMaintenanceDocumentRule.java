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
package org.kuali.kra.irb.actions.submit;

import org.kuali.kra.protocol.actions.submit.ProtocolReviewTypeBase;
import org.kuali.kra.protocol.actions.submit.ProtocolSubmissionTypeBase;

public class ValidProtoSubRevTypeMaintenanceDocumentRule extends org.kuali.kra.protocol.actions.submit.ValidProtoSubRevTypeMaintenanceDocumentRuleBase {

    @Override
    protected Class<? extends ProtocolSubmissionTypeBase> getProtocolSubmissionTypeBOClassHook() {
        return ProtocolSubmissionType.class;
    }

    @Override
    protected Class<? extends ProtocolReviewTypeBase> getProtocolReviewTypeBOClassHook() {
        return ProtocolReviewType.class;
    }

    @Override
    protected Class<? extends ValidProtoSubRevType> getValidProtoSubRevTypeBOClassHook() {
        return org.kuali.kra.irb.actions.submit.ValidProtoSubRevType.class;
    }

}
