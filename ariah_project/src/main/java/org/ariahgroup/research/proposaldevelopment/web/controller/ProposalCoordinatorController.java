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
package org.ariahgroup.research.proposaldevelopment.web.controller;

import java.util.List;
import org.ariahgroup.research.proposaldevelopment.lookup.ProposalCoordinatorValuesFinder;

import org.kuali.rice.core.api.util.KeyValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author The Ariah Group, Inc.
 *
 */
@Controller
@RequestMapping("/")
public class ProposalCoordinatorController {

    private ProposalCoordinatorValuesFinder proposalCoordinatorValuesFinder;

    /**
     * retrieve a key value map of
     *
     * @param unitNumber
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/proposalCoordinatorsForUnit/{unitNumber}", method = RequestMethod.GET)
    public List<KeyValue> getProposalCoordinatorsForUnit(@PathVariable String unitNumber) {
        return getProposalCoordinatorValuesFinder().getKeyValues(unitNumber);
    }

    /**
     * @return the proposalCoordinatorValuesFinder
     */
    public ProposalCoordinatorValuesFinder getProposalCoordinatorValuesFinder() {
        if (proposalCoordinatorValuesFinder == null) {
            proposalCoordinatorValuesFinder = new ProposalCoordinatorValuesFinder();
        }
        return proposalCoordinatorValuesFinder;
    }

    /**
     * @param proposalCoordinatorValuesFinder the
     * proposalCoordinatorValuesFinder to set
     */
    public void setProposalCoordinatorValuesFinder(
            ProposalCoordinatorValuesFinder proposalCoordinatorValuesFinder) {
        this.proposalCoordinatorValuesFinder = proposalCoordinatorValuesFinder;
    }
}
