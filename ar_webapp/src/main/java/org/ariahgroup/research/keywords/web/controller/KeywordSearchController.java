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
package org.ariahgroup.research.keywords.web.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.ariahgroup.research.keywords.bo.DevProposalLiteDto;
import org.ariahgroup.research.keywords.service.KeywordService;

import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.rice.krad.UserSession;
import org.kuali.rice.krad.util.GlobalVariables;
import org.kuali.rice.krad.util.KRADConstants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author The Ariah Group, Inc.
 *
 */
@Controller
public class KeywordSearchController {

    /**
     * retrieve a key value map of
     *
     * @param searchterms
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "keywordsearch_devproposals.json", method = RequestMethod.POST, produces = "application/json")
    public List<DevProposalLiteDto> getDevProposalsByKeywordSearch(HttpServletRequest request,
            @RequestParam(value = "searchterms", required = false) String[] searchterms) {

        List<DevProposalLiteDto> keywordsResults = null;

        List<String> keywordsList = new ArrayList<String>();

        System.out.println("getDevProposalsByKeywordSearch running...");
        if (searchterms != null) {
            for (int i = 0; i < searchterms.length; i++) {
                String searchterm = searchterms[i];
                System.out.println("searchterm=" + searchterm);
                keywordsList.add(searchterm);
            }
        }
        System.out.println("getDevProposalsByKeywordSearch ending...");

        String username = "";
        try {
            try {
                UserSession userSession = (UserSession) request.getSession(false).getAttribute(KRADConstants.USER_SESSION_KEY);
                GlobalVariables.setUserSession(userSession);
                username = GlobalVariables.getUserSession().getPrincipalName();
                System.out.println("getDevProposalsByKeywordSearch : GlobalVariables.getUserSession().getPrincipalName() = " + username);
            } catch (Exception ex) {
                ex.printStackTrace();
            }

            KeywordService keywordService = KraServiceLocator.getService(KeywordService.class);

            keywordsResults = keywordService.getKeywordSearchDevProposals(username, keywordsList);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return keywordsResults;
    }
}
