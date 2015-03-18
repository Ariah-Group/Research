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
<channel:portalChannelTop channelTitle="Awards" />
<div class="body">
    <ul class="chan">  	  
        <li><a target="_blank" title='Awards by Activity Type' href='${ConfigProperties.reports.server.name}flow.html?_flowId=viewReportFlow&standAlone=true&_flowId=viewReportFlow&ParentFolderUri=/Reports&reportUnit=/Reports/AwardsbyActivityType&j_username=${ConfigProperties.reports.server.username}&j_password=${ConfigProperties.reports.server.password}'>Awards by Activity Type</a></li>
        <li><a target="_blank" title='Awards by Sponsor' href='${ConfigProperties.reports.server.name}flow.html?_flowId=viewReportFlow&standAlone=true&_flowId=viewReportFlow&ParentFolderUri=/Reports&reportUnit=/Reports/AwardsbySponsor&j_username=${ConfigProperties.reports.server.username}&j_password=${ConfigProperties.reports.server.password}'>Awards by Sponsor</a></li>
        <li><a target="_blank" title='Awards by Sponsor Type' href='${ConfigProperties.reports.server.name}flow.html?_flowId=viewReportFlow&standAlone=true&_flowId=viewReportFlow&ParentFolderUri=/Reports&reportUnit=/Reports/AwardsbySponsorType&j_username=${ConfigProperties.reports.server.username}&j_password=${ConfigProperties.reports.server.password}'>Awards by Sponsor Type</a></li>
        <li><a target="_blank" title='Awards by Status' href='${ConfigProperties.reports.server.name}flow.html?_flowId=viewReportFlow&standAlone=true&_flowId=viewReportFlow&ParentFolderUri=/Reports&reportUnit=/Reports/AwardsbyStatus&j_username=${ConfigProperties.reports.server.username}&j_password=${ConfigProperties.reports.server.password}'>Awards by Status</a></li>
        <li><a target="_blank" title='Awards by Type' href='${ConfigProperties.reports.server.name}flow.html?_flowId=viewReportFlow&standAlone=true&_flowId=viewReportFlow&ParentFolderUri=/Reports&reportUnit=/Reports/AwardsbyType&j_username=${ConfigProperties.reports.server.username}&j_password=${ConfigProperties.reports.server.password}'>Awards by Type</a></li>
    </ul>
</div>
<channel:portalChannelBottom />