/**
 * Copyright 2015 The Ariah Group, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */
package org.ariahgroup.research.proposaldevelopment.notification;

import java.sql.Date;
import java.util.Collection;
import java.util.Map;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.kra.proposaldevelopment.bo.ProposalChangedData;
import org.kuali.kra.proposaldevelopment.notification.ProposalDevelopmentNotificationRenderer;
import org.kuali.rice.core.api.CoreApiServiceLocator;
import org.kuali.rice.core.api.datetime.DateTimeService;

/**
 *
 * @author
 */
public class ChangedDataNotificationRenderer extends ProposalDevelopmentNotificationRenderer {

    /**
     *
     */
    private static final long serialVersionUID = -1095048424602170140L;
    private Collection<ProposalChangedData> changedData;
    private DateTimeService dateTimeService;

    /**
     * @param developmentProposal
     */
    public ChangedDataNotificationRenderer(DevelopmentProposal developmentProposal, Collection<ProposalChangedData> changedData) {
        super(developmentProposal);
        this.setChangedData(changedData);
    }

    /* (non-Javadoc)
     * @see org.kuali.kra.proposaldevelopment.notification.ProposalDevelopmentNotificationRenderer#getDefaultReplacementParameters()
     */
    @Override
    public Map<String, String> getDefaultReplacementParameters() {
        Map<String, String> params = super.getDefaultReplacementParameters();
        addCustomReplacementParameters(params);
        return params;
    }

    /**
     * add custom replacement parameters
     *
     * @param params - the parameters to add to
     */
    protected void addCustomReplacementParameters(Map<String, String> params) {
        params.put("{CHANGE_COMMENTS}", getChangedDataCommentsForNotification());
        params.put("{SEND_TIME}", getDateTimeService().toDateString(new Date(System.currentTimeMillis())));
    }

    /**
     *
     * @return
     */
    protected String getChangedDataCommentsForNotification() {
        StringBuilder buffer = new StringBuilder();
        Collection<ProposalChangedData> changes = getChangedData();
        if (changes != null) {
            for (ProposalChangedData change : changes) {
                if (change.isNewOrDeletedCollectionItem()) {
                    buffer.append(change.getComments());
                    buffer.append("<br/>");
                } else {
                    buffer.append(change.getComments());
                    buffer.append(":<br> Old - ");
                    buffer.append(change.getOldDisplayValue());
                    buffer.append("<br> New - ");
                    buffer.append(change.getDisplayValue());
                    buffer.append("<br/>");
                }
            }
        }
        return buffer.toString();
    }

    /**
     * @return the changedData
     */
    public Collection<ProposalChangedData> getChangedData() {
        return changedData;
    }

    /**
     * @param changedData the changedData to set
     */
    public void setChangedData(Collection<ProposalChangedData> changedData) {
        this.changedData = changedData;
    }

    /**
     * @return the dateTimeService
     */
    public DateTimeService getDateTimeService() {
        if (dateTimeService == null) {
            dateTimeService = CoreApiServiceLocator.getDateTimeService();
        }
        return dateTimeService;
    }

    /**
     * @param dateTimeService the dateTimeService to set
     */
    public void setDateTimeService(DateTimeService dateTimeService) {
        this.dateTimeService = dateTimeService;
    }
}
