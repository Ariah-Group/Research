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
package org.kuali.kra.iacuc.actions;

import org.apache.commons.lang.StringUtils;
import org.kuali.kra.common.committee.bo.CommitteeMembershipBase;
import org.kuali.kra.iacuc.IacucProtocol;
import org.kuali.kra.iacuc.actions.submit.IacucProtocolReviewType;
import org.kuali.kra.iacuc.actions.submit.IacucProtocolReviewerType;
import org.kuali.kra.protocol.ProtocolBase;
import org.kuali.kra.protocol.actions.ProtocolActionAjaxServiceImplBase;
import org.kuali.rice.coreservice.framework.parameter.ParameterService;
import java.util.HashMap;
import java.util.List;
import org.kuali.kra.infrastructure.Constants;

public class IacucProtocolActionAjaxServiceImpl extends ProtocolActionAjaxServiceImplBase implements IacucProtocolActionAjaxService {

    private ParameterService parameterService;

    public static final String DEFAULT_REVIEW_TYPE_PARAMETER_NAME = "IACUC_ALL_COMM_REVIEWERS_DEFAULT_ASSIGNED";

    @Override
    public Class<? extends ProtocolBase> getProtocolClassHook() {
        return IacucProtocol.class;
    }

    @Override
    public Class getProtocolReviewerTypeClassHook() {
        return IacucProtocolReviewerType.class;
    }

    @Override
    public String getDefaultCommitteeReviewTypeCode() {
        String paramVal = this.getParameterService().getParameterValueAsString(Constants.MODULE_NAMESPACE_IACUC, "Document", DEFAULT_REVIEW_TYPE_PARAMETER_NAME);
        return paramVal;
    }

    public ParameterService getParameterService() {
        return parameterService;
    }

    public void setParameterService(ParameterService parameterService) {
        this.parameterService = parameterService;
    }

    @Override
    public String getReviewers(String protocolId, String committeeId, String scheduleId) {
        StringBuffer ajaxList = new StringBuffer();

        HashMap<String, String> criteria = new HashMap<String, String>();
        criteria.put("protocolId", protocolId);
        ProtocolBase protocol = (ProtocolBase) (getBusinessObjectService().findMatching(IacucProtocol.class, criteria).toArray())[0];

        /*
         * no reviewers should be assigned if schedule not chosen.
         */
        if (!StringUtils.isBlank(scheduleId)) {
            // filter out the protocol personnel; they cannot be reviewers on their own protocol
            List<CommitteeMembershipBase> filteredMembers = protocol.filterOutProtocolPersonnel(getCommitteeService().getAvailableMembers(
                    committeeId, scheduleId));

            for (CommitteeMembershipBase filteredMember : filteredMembers) {
                if (StringUtils.isNotBlank(filteredMember.getPersonId())) {
                    ajaxList.append(filteredMember.getPersonId()).append(";").append(filteredMember.getPersonName()).append(";N;");
                } else {
                    ajaxList.append(filteredMember.getRolodexId()).append(";").append(filteredMember.getPersonName()).append(";Y;");
                }
            }
        }
        return clipLastChar(ajaxList);
    }

    @Override
    public String getModifySubmissionProtocolReviewers(String protocolId, String committeeId, String scheduleId, String protocolReviewTypeCode) {
        StringBuffer ajaxList = new StringBuffer();

        HashMap<String, String> criteria = new HashMap<String, String>();
        criteria.put("protocolId", protocolId);
        ProtocolBase protocol = (ProtocolBase) (getBusinessObjectService().findByPrimaryKey(IacucProtocol.class, criteria));
        /*
         * no reviewers should be assigned if schedule not chosen for a Full committee review
         */
        if (!(StringUtils.isBlank(scheduleId) & StringUtils.equals(protocolReviewTypeCode, IacucProtocolReviewType.FULL_COMMITTEE_REVIEW))) {
            // filter out the protocol personnel; they cannot be reviewers on their own protocol
            List<CommitteeMembershipBase> filteredMembers = protocol.filterOutProtocolPersonnel(getCommitteeService().getAvailableMembers(
                    committeeId, scheduleId));

            for (CommitteeMembershipBase filteredMember : filteredMembers) {
                if (StringUtils.isNotBlank(filteredMember.getPersonId())) {
                    ajaxList.append(filteredMember.getPersonId()).append(";").append(filteredMember.getPersonName()).append(";N;");
                } else {
                    ajaxList.append(filteredMember.getRolodexId()).append(";").append(filteredMember.getPersonName()).append(";Y;");
                }
            }
        }
        return clipLastChar(ajaxList);
    }

}
