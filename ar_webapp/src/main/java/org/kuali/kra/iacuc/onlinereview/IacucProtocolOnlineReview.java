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
package org.kuali.kra.iacuc.onlinereview;

import org.kuali.kra.protocol.onlinereview.ProtocolOnlineReviewBase;

import java.sql.Date;
import org.kuali.kra.infrastructure.Constants;

/**
 * This class encapsulates the notion of a protocol review. Essentially a join
 * between protocol, submission, and a reviewer. The ProtocolReview is created
 * by the IACUC Admin as request.
 */
public class IacucProtocolOnlineReview extends ProtocolOnlineReviewBase {

    /**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = -3526853926706200095L;

    private String determinationReviewTypeCode;

    private Date determinationReviewDateDue;

    public String getNamespace() {
        return Constants.MODULE_NAMESPACE_IACUC;
    }

    public String getDeterminationReviewTypeCode() {
        return determinationReviewTypeCode;
    }

    public void setDeterminationReviewTypeCode(String determinationReviewTypeCode) {
        this.determinationReviewTypeCode = determinationReviewTypeCode;
    }

    public Date getDeterminationReviewDateDue() {
        return determinationReviewDateDue;
    }

    public void setDeterminationReviewDateDue(Date determinationReviewDateDue) {
        this.determinationReviewDateDue = determinationReviewDateDue;
    }

    @Override
    protected String getProtocolOLRRemovedCancelledStatusCodeHook() {
        return IacucProtocolOnlineReviewStatus.REMOVED_CANCELLED_STATUS_CD;
    }

    @Override
    protected String getProtocolOLRFinalStatusCodeHook() {
        return IacucProtocolOnlineReviewStatus.FINAL_STATUS_CD;
    }

}
