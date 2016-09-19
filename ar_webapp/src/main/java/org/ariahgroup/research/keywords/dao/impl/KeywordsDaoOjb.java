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
package org.ariahgroup.research.keywords.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang.StringUtils;
import org.apache.ojb.broker.PersistenceBroker;
import org.apache.ojb.broker.accesslayer.LookupException;
import org.ariahgroup.research.bo.Keyword;
import org.ariahgroup.research.bo.KeywordCount;
import org.ariahgroup.research.keywords.bo.AwardProposalLiteDto;
import org.ariahgroup.research.keywords.bo.DevProposalLiteDto;
import org.ariahgroup.research.keywords.bo.IacucProtocolProposalLiteDto;
import org.ariahgroup.research.keywords.bo.InstProposalLiteDto;
import org.ariahgroup.research.keywords.bo.IrbProtocolProposalLiteDto;
import org.ariahgroup.research.keywords.dao.KeywordsDao;
import org.kuali.kra.common.permissions.Permissionable;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.infrastructure.PermissionConstants;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.service.KraWorkflowService;
import org.kuali.kra.service.UnitAuthorizationService;
import org.kuali.rice.core.framework.persistence.ojb.dao.PlatformAwareDaoBaseOjb;
import org.kuali.rice.kim.api.permission.PermissionService;
import org.kuali.rice.krad.service.DocumentService;

/**
 *
 * @author The Ariah Group, Inc.
 */
public class KeywordsDaoOjb extends PlatformAwareDaoBaseOjb implements KeywordsDao {

    /**
     *
     * @return @throws LookupException
     * @throws SQLException
     */
    @Override
    public List<KeywordCount> getAllKeywordCounts() throws LookupException, SQLException {

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        PersistenceBroker pbInstance = getPersistenceBroker(true);

        List<KeywordCount> keywords = new ArrayList<KeywordCount>();

        try {
            String sql = "select KEYWORD_TEXT, KEYWORD_COUNT from KEYWORD_COUNTS where KEYWORD_COUNT>0 order by KEYWORD_TEXT";

            conn = pbInstance.serviceConnectionManager().getConnection();
            pstmt = conn.prepareStatement(sql);

            rs = pstmt.executeQuery();
            rs.setFetchSize(100);

            while (rs.next()) {

                String keywordText = rs.getString(1);
                int keywordCount = rs.getInt(2);

                KeywordCount key = new KeywordCount();

                key.setKeyword(keywordText);
                key.setCount(keywordCount);

                keywords.add(key);
            }

        } catch (LookupException e) {
            throw e;
        } catch (SQLException e) {
            throw e;
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                    rs = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                if (pstmt != null) {
                    pstmt.close();
                    pstmt = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                if (conn != null) {
                    conn.close();
                    conn = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return keywords;
    }

    /**
     *
     * @return @throws LookupException
     * @throws SQLException
     */
    @Override
    public List<Keyword> getKeywordsActive() throws LookupException, SQLException {

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        PersistenceBroker pbInstance = getPersistenceBroker(true);

        List<Keyword> keywords = new ArrayList<Keyword>();

        try {
            String sql = "select SCIENCE_KEYWORD_CODE, DESCRIPTION from SCIENCE_KEYWORD where ACTIVE='Y' order by DESCRIPTION";

            conn = pbInstance.serviceConnectionManager().getConnection();
            pstmt = conn.prepareStatement(sql);

            rs = pstmt.executeQuery();
            rs.setFetchSize(100);

            while (rs.next()) {

                String keywordId = rs.getString(1);
                String keywordText = rs.getString(2);

                Keyword key = new Keyword();

                key.setId(keywordId);
                key.setDescription(keywordText);

                keywords.add(key);
            }

        } catch (LookupException e) {
            throw e;
        } catch (SQLException e) {
            throw e;
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                    rs = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                if (pstmt != null) {
                    pstmt.close();
                    pstmt = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                if (conn != null) {
                    conn.close();
                    conn = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return keywords;
    }

    /**
     *
     * @param principalName
     * @param keywords
     * @return @throws LookupException
     * @throws SQLException
     */
    @Override
    public List<DevProposalLiteDto> getKeywordSearchDevProposals(String principalId, List<String> keywords) throws LookupException, SQLException {

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        PersistenceBroker pbInstance = getPersistenceBroker(true);

        List<DevProposalLiteDto> keywordsResults = new ArrayList<DevProposalLiteDto>();

        String keywordIdList = "";

        if (keywords == null || keywords.isEmpty()) {
            // no need to go further, so short-circuit and return
            return keywordsResults;
        } else {

            for (int i = 0; i < keywords.size(); i++) {
                String keywordId = keywords.get(i);

                keywordIdList += "'" + keywordId + "'";

                if (i < (keywords.size() - 1)) {
                    keywordIdList += ",";
                }
            }
        }

        try {
            PermissionService permissionService = KraServiceLocator.getService(PermissionService.class);
            UnitAuthorizationService unitAuthorizationService = KraServiceLocator.getService(UnitAuthorizationService.class);
            KraWorkflowService kraWorkflowService = KraServiceLocator.getService(KraWorkflowService.class);
            DocumentService docService = (DocumentService) KraServiceLocator.getService("kraDocumentService");

            String sql = "select eps_proposal.proposal_number, eps_proposal.document_number, eps_proposal.OWNED_BY_UNIT, eps_proposal.title from eps_proposal inner join eps_proposal_document ON eps_proposal.document_number = eps_proposal_document.document_number where eps_proposal_document.proposal_deleted='N' AND eps_proposal.proposal_number IN(select PROPOSAL_NUMBER FROM EPS_PROP_SCIENCE_KEYWORD WHERE SCIENCE_KEYWORD_CODE IN("
                    + keywordIdList + ")) order by eps_proposal.proposal_number desc";

            conn = pbInstance.serviceConnectionManager().getConnection();
            pstmt = conn.prepareStatement(sql);

            rs = pstmt.executeQuery();
            rs.setFetchSize(100);

            while (rs.next()) {

                String proposalNumber = rs.getString(1);
                String documentNumber = rs.getString(2);
                String leadUnitNumber = rs.getString(3);
                String proposalTitle = rs.getString(4);

                boolean userHasPermission = false;
                Map<String, String> qualifiedRoleAttributes = new HashMap<String, String>();
                qualifiedRoleAttributes.put(Permissionable.PROPOSAL_KEY, proposalNumber);

                userHasPermission = permissionService.isAuthorized(principalId,
                        "KC-PD", PermissionConstants.VIEW_PROPOSAL, qualifiedRoleAttributes);

                if (!userHasPermission && StringUtils.isNotEmpty(leadUnitNumber)) {
                    userHasPermission = unitAuthorizationService.hasPermission(principalId,
                            leadUnitNumber, "KC-PD", PermissionConstants.VIEW_PROPOSAL);
                }

                if (!userHasPermission) {
                    // as a last resort, load the PD document and pass it to workflowService to see if user has rights
                    try {
                        ProposalDevelopmentDocument pdDoc = (ProposalDevelopmentDocument) docService.getByDocumentHeaderId(documentNumber);
                        userHasPermission = kraWorkflowService.hasWorkflowPermission(principalId, pdDoc);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }

                if (userHasPermission) {
                    // then add this proposal to list of proposals that get returned for search results
                    DevProposalLiteDto dto = new DevProposalLiteDto();

                    dto.setProposalNumber(proposalNumber);
                    dto.setDocumentNumber(documentNumber);
                    dto.setTitle(proposalTitle);
                    dto.setUnitNum(leadUnitNumber);

                    keywordsResults.add(dto);
                }
            }

        } catch (LookupException e) {
            throw e;
        } catch (SQLException e) {
            throw e;
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                    rs = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                if (pstmt != null) {
                    pstmt.close();
                    pstmt = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                if (conn != null) {
                    conn.close();
                    conn = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return keywordsResults;
    }
    
    /**
     *
     * @param principalName
     * @param keywords
     * @return @throws LookupException
     * @throws SQLException
     */
    @Override
    public List<InstProposalLiteDto> getKeywordSearchInstProposals(String principalId, List<String> keywords) throws LookupException, SQLException {

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        PersistenceBroker pbInstance = getPersistenceBroker(true);

        List<InstProposalLiteDto> keywordsResults = new ArrayList<InstProposalLiteDto>();

        String keywordIdList = "";

        if (keywords == null || keywords.isEmpty()) {
            // no need to go further, so short-circuit and return
            return keywordsResults;
        } else {

            for (int i = 0; i < keywords.size(); i++) {
                String keywordId = keywords.get(i);

                keywordIdList += "'" + keywordId + "'";

                if (i < (keywords.size() - 1)) {
                    keywordIdList += ",";
                }
            }
        }

        try {
            PermissionService permissionService = KraServiceLocator.getService(PermissionService.class);
            UnitAuthorizationService unitAuthorizationService = KraServiceLocator.getService(UnitAuthorizationService.class);
            KraWorkflowService kraWorkflowService = KraServiceLocator.getService(KraWorkflowService.class);
            DocumentService docService = (DocumentService) KraServiceLocator.getService("kraDocumentService");

            String sql = "select eps_proposal.proposal_number, eps_proposal.document_number, eps_proposal.OWNED_BY_UNIT, eps_proposal.title from eps_proposal inner join eps_proposal_document ON eps_proposal.document_number = eps_proposal_document.document_number where eps_proposal_document.proposal_deleted='N' AND eps_proposal.proposal_number IN(select PROPOSAL_NUMBER FROM EPS_PROP_SCIENCE_KEYWORD WHERE SCIENCE_KEYWORD_CODE IN("
                    + keywordIdList + ")) order by eps_proposal.proposal_number desc";

            conn = pbInstance.serviceConnectionManager().getConnection();
            pstmt = conn.prepareStatement(sql);

            rs = pstmt.executeQuery();
            rs.setFetchSize(100);

            while (rs.next()) {

                String proposalNumber = rs.getString(1);
                String documentNumber = rs.getString(2);
                String leadUnitNumber = rs.getString(3);
                String proposalTitle = rs.getString(4);

                boolean userHasPermission = false;
                Map<String, String> qualifiedRoleAttributes = new HashMap<String, String>();
                qualifiedRoleAttributes.put(Permissionable.PROPOSAL_KEY, proposalNumber);

                userHasPermission = permissionService.isAuthorized(principalId,
                        "KC-PD", PermissionConstants.VIEW_PROPOSAL, qualifiedRoleAttributes);

                if (!userHasPermission && StringUtils.isNotEmpty(leadUnitNumber)) {
                    userHasPermission = unitAuthorizationService.hasPermission(principalId,
                            leadUnitNumber, "KC-PD", PermissionConstants.VIEW_PROPOSAL);
                }

                if (!userHasPermission) {
                    // as a last resort, load the PD document and pass it to workflowService to see if user has rights
                    try {
                        ProposalDevelopmentDocument pdDoc = (ProposalDevelopmentDocument) docService.getByDocumentHeaderId(documentNumber);
                        userHasPermission = kraWorkflowService.hasWorkflowPermission(principalId, pdDoc);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }

                if (userHasPermission) {
                    // then add this proposal to list of proposals that get returned for search results
                    InstProposalLiteDto dto = new InstProposalLiteDto();

                    dto.setProposalNumber(proposalNumber);
                    dto.setDocumentNumber(documentNumber);
                    dto.setTitle(proposalTitle);

                    keywordsResults.add(dto);
                }
            }

        } catch (LookupException e) {
            throw e;
        } catch (SQLException e) {
            throw e;
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                    rs = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                if (pstmt != null) {
                    pstmt.close();
                    pstmt = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                if (conn != null) {
                    conn.close();
                    conn = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return keywordsResults;
    }

    @Override
    public List<AwardProposalLiteDto> getKeywordSearchAwardProposals(String principalId, List<String> keywords) throws LookupException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<IrbProtocolProposalLiteDto> getKeywordSearchIrbProtocols(String principalId, List<String> keywords) throws LookupException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<IacucProtocolProposalLiteDto> getKeywordSearchIacucProtocols(String principalId, List<String> keywords) throws LookupException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
