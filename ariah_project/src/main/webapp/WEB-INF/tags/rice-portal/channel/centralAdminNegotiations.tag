<%--
 Copyright 2005-2014 The Kuali Foundation
 
 Licensed under the Educational Community License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.osedu.org/licenses/ECL-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.

Updates made after January 1, 2015 are :
Copyright 2015 The Ariah Group, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
--%>
<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>
<channel:portalChannelTop channelTitle="Negotiations" />
<div class="body">
    <table border="0" cellpadding="2" cellspacing="0">
        <tr>
            <td nowrap class="disabled-text">Negotiations</td>
            <td>
        <portal:portalLink displayTitle="false" title="Create Negotiation" url="${ConfigProperties.application.url}/negotiationNegotiation.do?methodToCall=docHandler&command=initiate&docTypeName=NegotiationDocument"><img src="static/images/add.png" alt="add" width="16" height="16" border="0" align="absmiddle"></portal:portalLink>
        <portal:portalLink displayTitle="false" title="Negotiation Search" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.negotiations.bo.Negotiation&docFormKey=88888888&includeCustomActionUrls=true&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true"><img src="static/images/searchicon.gif" alt="lookup" width="16" height="16" align="absmiddle" border="0"></portal:portalLink>
        </td>
        </tr>
        <tr>
            <td colspan="2">
        <portal:portalLink displayTitle="false" title='All My Negotiations' url='${ConfigProperties.application.url}/kr/lookup.do?methodToCall=search&businessObjectClassName=org.kuali.kra.negotiations.bo.Negotiation&docFormKey=88888888&includeCustomActionUrls=true&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&negotiatorName=${UserSession.person.firstName}*${UserSession.person.lastName}&negotiatorPersonId=${UserSession.principalId}&searchCriteriaEnabled=true'>All My Negotiations</portal:portalLink>
        </td>
        </tr>
    </table>
</div>
<channel:portalChannelBottom />