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
package org.ariahgroup.research.keywords.service.impl;

import java.util.List;
import org.ariahgroup.research.bo.Keyword;
import org.ariahgroup.research.bo.KeywordCount;
import org.ariahgroup.research.keywords.bo.DevProposalLiteDto;
import org.ariahgroup.research.keywords.dao.KeywordsDao;
import org.ariahgroup.research.keywords.service.KeywordService;

/**
 * @author The Ariah Group, Inc.
 */
public class KeywordServiceImpl implements KeywordService {

    private KeywordsDao keywordsDao;

    @Override
    public List<KeywordCount> getAllKeywordsCounts() {

        List<KeywordCount> keywords = null;

        try {
            keywords = keywordsDao.getAllKeywordCounts();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return keywords;
    }

    @Override
    public List<Keyword> getKeywordsActive() {

        List<Keyword> keywords = null;

        try {
            keywords = keywordsDao.getKeywordsActive();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return keywords;
    }

    @Override
    public List<DevProposalLiteDto> getKeywordSearchDevProposals(String principalId, List<String> keywords) {
        List<DevProposalLiteDto> keywordsResults = null;

        try {
            keywordsResults = keywordsDao.getKeywordSearchDevProposals(principalId, keywords);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return keywordsResults;
    }
    
    @Override
    public List<String> getKeywordSearchInstProposals() {
        return null;
    }
    
    @Override
    public List<String> getKeywordSearchAwards() {
        return null;
    }
    
    
    /**
     * @return the keywordsDao
     */
    public KeywordsDao getKeywordsDao() {
        return keywordsDao;
    }

    /**
     * @param keywordsDao the keywordsDao to set
     */
    public void setKeywordsDao(KeywordsDao keywordsDao) {
        this.keywordsDao = keywordsDao;
    }

}
