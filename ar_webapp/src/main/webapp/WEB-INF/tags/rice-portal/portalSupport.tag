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
<td class="content" valign="top">
<channel:portalChannelTop channelTitle="Ariah Group" />
<div class="body">
    <ul class="chan">  	  
        <li><a class="portal_link" href="${ConfigProperties.feedback.link}" target="_blank" title="${ConfigProperties.feedback.linkText}">${ConfigProperties.feedback.linkText}</a></li>
        <li><a class="portal_link" title="User Manual" href="${ConfigProperties.application.url}/static/help/default.htm" />User Manual</a></li>
    </ul>
</div>
<channel:portalChannelBottom />
</td>
<td class="content" valign="top">&nbsp;</td>