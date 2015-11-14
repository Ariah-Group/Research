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
package org.kuali.kra.dao.ojb;

import org.apache.commons.lang.ObjectUtils;
import org.kuali.kra.award.contacts.AwardPerson;
import org.kuali.kra.award.home.Award;
import org.kuali.kra.bo.versioning.VersionHistory;
import org.kuali.kra.common.printing.CurrentReportBean;
import org.kuali.kra.dao.CurrentReportDao;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.service.ServiceHelper;
import org.kuali.kra.service.VersionHistoryService;
import org.kuali.rice.kew.api.exception.WorkflowException;

import java.util.*;
import org.kuali.kra.award.document.authorization.AwardDocumentAuthorizer;
import org.kuali.rice.kim.api.identity.Person;
import org.kuali.rice.krad.util.GlobalVariables;

/**
 * OJB implementation of CurrentReportDao using OJB Report Query (see
 * http://db.apache.org/ojb/docu/guides/query.html#Report+Queries)
 */
public class CurrentReportDaoOjb extends BaseReportDaoOjb implements CurrentReportDao {

    private VersionHistoryService versionHistoryService;

    @Override
    public List<CurrentReportBean> queryForCurrentSupport(String personId) throws WorkflowException {
        List<CurrentReportBean> data = new ArrayList<CurrentReportBean>();

        Person user = GlobalVariables.getUserSession().getPerson();
        AwardDocumentAuthorizer authorizer = new AwardDocumentAuthorizer();

        for (AwardPerson awardPerson : executeCurrentSupportQuery(personId)) {
            lazyLoadAward(awardPerson);

            // awardPerson.getAward().getAwardDocument()!=null CHECK is REQUIRED as the auth-check canOpen will fail
            // in the depths of RICE otherwise.
            if (awardPerson.getAward() != null && awardPerson.getAward().getAwardDocument()!=null &&
                    authorizer.canOpen(awardPerson.getAward().getAwardDocument(), user)) {

                CurrentReportBean bean = buildReportBean(awardPerson);
                if (bean != null) {
                    data.add(bean);
                }

            }
        }
        return data;
    }

    private CurrentReportBean buildReportBean(AwardPerson awardPerson) throws WorkflowException {
        Award award = awardPerson.getAward();
        CurrentReportBean bean = null;
        if (shouldDataBeIncluded(award.getAwardDocument())
                && award.isActiveVersion()
                && ObjectUtils.equals(getActiveAwardVersionSequenceNumber(award.getAwardNumber()), award.getSequenceNumber())) {
            bean = new CurrentReportBean(awardPerson);
        }
        return bean;
    }

    @SuppressWarnings("unchecked")
    private Collection<AwardPerson> executeCurrentSupportQuery(String personId) {
        return getBusinessObjectService().findMatching(AwardPerson.class, Collections.singletonMap("personId", personId));
    }

    private void lazyLoadAward(AwardPerson awardPerson) {
        if (awardPerson.getAward() == null) {
            Map searchParms = ServiceHelper.getInstance().buildCriteriaMap(new String[]{"awardNumber", "sequenceNumber"},
                    new Object[]{awardPerson.getAwardNumber(), awardPerson.getSequenceNumber()});
            Award award = (Award) getBusinessObjectService().findMatching(Award.class, searchParms).iterator().next();
            awardPerson.setAward(award);
        }
    }

    private VersionHistoryService getVersionHistoryService() {
        if (versionHistoryService == null) {
            versionHistoryService = KraServiceLocator.getService(VersionHistoryService.class);
        }
        return versionHistoryService;
    }

    private Integer getActiveAwardVersionSequenceNumber(String awardNumber) {
        Integer retval = null;
        VersionHistory versionHistory = getVersionHistoryService().findActiveVersion(Award.class, awardNumber);
        if (versionHistory != null) {
            retval = versionHistory.getSequenceOwnerSequenceNumber();
        }
        return retval;
    }
}
