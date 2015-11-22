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
package org.ariahgroup.research.service;

import java.util.Collection;
import java.util.Map;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.kra.proposaldevelopment.bo.ProposalChangedData;

/**
 *
 * @author Ariah Group
 */
public interface DevProposalChangeDataService {

    /**
     * get info on changed fields for an object compared to values in the
     * database
     *
     * @param devProposal - the proposal submitted by the user
     * @return the changed fields if there is a database copy and changes exist,
     * false otherwise
     * <p>
     * the key is the path to the attribute name e.g.
     * document.developmentProposalList[0].proposalNumber
     */
    public Map<String, ProposalChangedData> getChangedFields(DevelopmentProposal devProposal);

    /**
     * save info on changed fields
     *
     * @param changedData - the data to save
     */
    public void saveChangeData(Map<String, ProposalChangedData> changedData);

    /**
     * get the change data for a proposal
     *
     * @param proposalNumber - the proposal data
     * @return the change data or an empty list if none
     */
    public Collection<ProposalChangedData> getChangeDataForProposal(String proposalNumber);

    /**
     * send notification with info on changed fields
     *
     * @param changedData - the data to send notification for
     * @param devProposal - the proposal
     */
    public void sendChangeDataNotification(Collection<ProposalChangedData> changedData, DevelopmentProposal devProposal);
}
