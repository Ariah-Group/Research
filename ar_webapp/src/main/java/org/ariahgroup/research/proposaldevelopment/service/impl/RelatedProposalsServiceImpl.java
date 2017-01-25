/**
 * Copyright 2016 The Ariah Group, Inc.
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
package org.ariahgroup.research.proposaldevelopment.service.impl;

import java.util.List;
import org.ariahgroup.research.proposaldevelopment.bo.PropRelatedProposal;
import org.ariahgroup.research.proposaldevelopment.dao.RelatedProposalsDao;
import org.ariahgroup.research.proposaldevelopment.service.RelatedProposalsService;

/**
 * @author The Ariah Group, Inc.
 */
public class RelatedProposalsServiceImpl implements RelatedProposalsService {

    private RelatedProposalsDao relatedProposalsDao;

    @Override
    public List<PropRelatedProposal> getRelatedProposals(String proposalNumber) {

        List<PropRelatedProposal> relatedProps = null;

        try {
            relatedProps = getRelatedProposalsDao().getRelatedProposals(proposalNumber);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return relatedProps;
    }

    /**
     * @return the relatedProposalsDao
     */
    public RelatedProposalsDao getRelatedProposalsDao() {
        return relatedProposalsDao;
    }

    /**
     * @param relatedProposalsDao the relatedProposalsDao to set
     */
    public void setRelatedProposalsDao(RelatedProposalsDao relatedProposalsDao) {
        this.relatedProposalsDao = relatedProposalsDao;
    }

}
