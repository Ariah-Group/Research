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
package org.kuali.kra.iacuc.committee.bo;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.kuali.kra.common.committee.bo.CommitteeBase;
import org.kuali.kra.common.committee.bo.CommitteeMembershipBase;
import org.kuali.kra.common.committee.bo.CommitteeMembershipRole;
import org.kuali.kra.common.committee.bo.CommitteeType;
import org.kuali.kra.iacuc.committee.document.CommonCommitteeDocument;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.RoleConstants;
import org.kuali.kra.util.DateUtils;

public class IacucCommittee extends CommitteeBase<IacucCommittee, CommonCommitteeDocument, IacucCommitteeSchedule> {

    /**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = 2031629954610125464L;
    /**
     * IACUC-specific committee chair role from MEMBERSHIP_ROLE.MEMBERSHIP_ROLE_CODE
     */
    private static final String CHAIR_MEMBERSHIP_ROLE_CODE = "16";
    private String committeeChair;
    
    @Override
    protected String getProtocolCommitteeTypeCodehook() {
        return CommitteeType.IACUC_TYPE_CODE;
    }

    @Override
    protected String getProtocolReviewerRoleHook() {
        return RoleConstants.IACUC_PROTOCOL_REVIEWER;
    }

    @Override
    protected String getAdminRoleHook() {
        return RoleConstants.IACUC_ADMINISTRATOR;
    }

    @Override
    protected String getModuleNamespaceCodeHook() {
        return Constants.MODULE_NAMESPACE_IACUC;
    }

    @Override
    protected IacucCommittee getThisHook() {
        return this;
    }

    @Override
    public void setCommitteeChair(String committeeChair) {
        this.committeeChair = committeeChair;
    }
    
    @Override
    public String getCommitteeChair() {
        if (StringUtils.isBlank(this.committeeChair) && CollectionUtils.isNotEmpty(getCommitteeMemberships())) {
            List<String> committeeChairs = new ArrayList<String>();
            for (CommitteeMembershipBase committeeMembership : getCommitteeMemberships()) {
                if (isChairPerson(committeeMembership)) {
                    committeeChairs.add(committeeMembership.getPersonName());
                }
                setCommitteeChair(committeeChairs.toString());
            }
        }
        return committeeChair;
    }

    private boolean isChairPerson(CommitteeMembershipBase committeeMembership) {
        
        boolean isChairRoleFound = false;
        Date currentDate = DateUtils.clearTimeFields(new Date(System.currentTimeMillis()));

        for (CommitteeMembershipRole committeeMembershipRole : committeeMembership.getMembershipRoles()) {
            if (committeeMembershipRole.getMembershipRoleCode().equals(CHAIR_MEMBERSHIP_ROLE_CODE)
                    && committeeMembershipRole.getStartDate() != null 
                    && committeeMembershipRole.getEndDate() != null 
                    && !currentDate.before(committeeMembershipRole.getStartDate()) && !currentDate.after(committeeMembershipRole.getEndDate())) {
                isChairRoleFound = true;
                break;
            }
        }
        return isChairRoleFound;
    }    
}
