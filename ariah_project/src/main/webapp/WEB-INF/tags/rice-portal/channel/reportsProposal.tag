<%--

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
<channel:portalChannelTop channelTitle="Proposals" />
<div class="body">
    <ul class="chan">  	  
        <li><a target="_blank" href='${ConfigProperties.reports.server.name}flow.html?_flowId=viewReportFlow&standAlone=true&_flowId=viewReportFlow&ParentFolderUri=/Reports&reportUnit=/Reports/Proposal_Tabular&j_username=${ConfigProperties.reports.server.username}&j_password=${ConfigProperties.reports.server.password}'>Proposals</a></li>
        <li><a target="_blank" href='${ConfigProperties.reports.server.name}flow.html?_flowId=viewReportFlow&standAlone=true&_flowId=viewReportFlow&ParentFolderUri=/Reports&reportUnit=/Reports/ProposalSummary&j_username=${ConfigProperties.reports.server.username}&j_password=${ConfigProperties.reports.server.password}'>Proposal Summary</a></li>
        <li><a target="_blank" href='${ConfigProperties.reports.server.name}flow.html?_flowId=viewReportFlow&standAlone=true&_flowId=viewReportFlow&ParentFolderUri=/Reports&reportUnit=/Reports/ProposalsbyActivityType&j_username=${ConfigProperties.reports.server.username}&j_password=${ConfigProperties.reports.server.password}'>Proposals by Activity Type</a></li>
        <li><a target="_blank" href='${ConfigProperties.reports.server.name}flow.html?_flowId=viewReportFlow&standAlone=true&_flowId=viewReportFlow&ParentFolderUri=/Reports&reportUnit=/Reports/ProposalsbySponsor&j_username=${ConfigProperties.reports.server.username}&j_password=${ConfigProperties.reports.server.password}'>Proposals by Sponsor</a></li>
        <li><a target="_blank" title='Proposals by Sponsor Type' href='${ConfigProperties.reports.server.name}flow.html?_flowId=viewReportFlow&standAlone=true&_flowId=viewReportFlow&ParentFolderUri=/Reports&reportUnit=/Reports/ProposalsbySponsorType&j_username=${ConfigProperties.reports.server.username}&j_password=${ConfigProperties.reports.server.password}'>Proposals by Sponsor Type</a></li>
        <li><a target="_blank" title='Proposals by Status' href='${ConfigProperties.reports.server.name}flow.html?_flowId=viewReportFlow&standAlone=true&_flowId=viewReportFlow&ParentFolderUri=/Reports&reportUnit=/Reports/ProposalsbyStatus&j_username=${ConfigProperties.reports.server.username}&j_password=${ConfigProperties.reports.server.password}'>Proposals by Status</a></li>
        <li><a target="_blank" title='Proposals by Type' href='${ConfigProperties.reports.server.name}flow.html?_flowId=viewReportFlow&standAlone=true&_flowId=viewReportFlow&ParentFolderUri=/Reports&reportUnit=/Reports/ProposalsbyType&j_username=${ConfigProperties.reports.server.username}&j_password=${ConfigProperties.reports.server.password}'>Proposals by Type</a></li>
    </ul>
</div>
<channel:portalChannelBottom />