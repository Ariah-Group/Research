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
package org.ariahgroup.research.keywords.dao;

import java.sql.SQLException;
import java.util.List;
import org.apache.ojb.broker.accesslayer.LookupException;
import org.ariahgroup.research.bo.Keyword;
import org.ariahgroup.research.bo.KeywordCount;
import org.ariahgroup.research.keywords.bo.AwardProposalLiteDto;
import org.ariahgroup.research.keywords.bo.DevProposalLiteDto;
import org.ariahgroup.research.keywords.bo.IacucProtocolProposalLiteDto;
import org.ariahgroup.research.keywords.bo.InstProposalLiteDto;
import org.ariahgroup.research.keywords.bo.IrbProtocolProposalLiteDto;

/**
 * Interface representing the data access object for keyword counts.
 *
 * @author The Ariah Group, Inc.
 */
public interface KeywordsDao {

    /**
     * Retrieve a List of keyword counts
     *
     * @return
     * @throws LookupException
     * @throws SQLException
     */
    public List<KeywordCount> getAllKeywordCounts() throws LookupException, SQLException;

    /**
     * Retrieve a List of keywords.
     *
     * @return
     * @throws LookupException
     * @throws SQLException
     */
    public List<Keyword> getKeywordsActive() throws LookupException, SQLException;
    
    public List<DevProposalLiteDto> getKeywordSearchDevProposals(String principalId, List<String> keywords) throws LookupException, SQLException;
    
    public List<InstProposalLiteDto> getKeywordSearchInstProposals(String principalId, List<String> keywords) throws LookupException, SQLException;
    
    public List<AwardProposalLiteDto> getKeywordSearchAwardProposals(String principalId, List<String> keywords) throws LookupException, SQLException;
    
    public List<IrbProtocolProposalLiteDto> getKeywordSearchIrbProtocols(String principalId, List<String> keywords) throws LookupException, SQLException;
    
    public List<IacucProtocolProposalLiteDto> getKeywordSearchIacucProtocols(String principalId, List<String> keywords) throws LookupException, SQLException;

}
