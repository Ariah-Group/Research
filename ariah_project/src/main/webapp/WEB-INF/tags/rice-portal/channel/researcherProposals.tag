<%--
 Copyright 2014 Moderas Inc. All rights reserved.
--%>
<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>
<channel:portalChannelTop channelTitle="Proposals" />
<div class="body">
    <strong>Create</strong>
    <ul class="chan">
        <li><portal:portalLink displayTitle="false" title="Create Proposal" url="${ConfigProperties.application.url}/proposalDevelopmentProposal.do?methodToCall=docHandler&command=initiate&docTypeName=ProposalDevelopmentDocument">Create Proposal</portal:portalLink></li>
        <li><portal:portalLink displayTitle="true" title="Create Proposal For Grants.gov Opportunity" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.s2s.bo.S2sOpportunity&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=false&docFormKey=88888888" /></li>
    </ul>
    <strong>Lists</strong>
    <ul class="chan">
        <li><portal:portalLink displayTitle="true" title="Search Proposals" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>
        <li><portal:portalLink displayTitle="false" title='All My Proposals' url='${ConfigProperties.workflow.url}/DocumentSearch.do?methodToCall=start&businessObjectClassName=org.kuali.rice.kew.impl.document.search.DocumentSearchCriteriaBo&documentTypeName=ProposalDevelopmentDocument&initiatorPrincipalName=${UserSession.principalName}'>All My Proposals</portal:portalLink></li>
        <li><portal:portalLink displayTitle="false" title="Proposals Enroute" url="${ConfigProperties.workflow.url}/DocumentSearch.do?methodToCall=start&businessObjectClassName=org.kuali.rice.kew.impl.document.search.DocumentSearchCriteriaBo&documentTypeName=ProposalDevelopmentDocument&statusCode=R">Proposals Enroute</portal:portalLink></li>
        <li><portal:portalLink displayTitle="true" title="Search Proposal Log" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.institutionalproposal.proposallog.ProposalLog&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>
        <li><portal:portalLink displayTitle="true" title="Search Institutional Proposals" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.institutionalproposal.home.InstitutionalProposal&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>
    </ul>
</div><channel:portalChannelBottom />