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

<c:if test="${moduleActiveProposals eq true}">
    <channel:unitPreAward />
</c:if> 

<c:if test="${moduleActiveAwards eq true}">
    <channel:centralAdminPostAward />
    <channel:centralAdminSubAward />
</c:if> 
<c:if test="${moduleActiveNegoatiations eq true}">
    <channel:centralAdminNegotiations />
</c:if> 

</td>
<td class="content" valign="top">
<c:if test="${moduleActiveConflict eq true}">
    <channel:unitPreSubmissionCompliance />
</c:if>
<c:if test="${moduleActiveIrb eq true}">
    <channel:centralAdminIrb />
</c:if>
<c:if test="${moduleActiveIacuc eq true}">
    <channel:centralAdminIacuc />
</c:if>      
</td>
<td class="content" valign="top">
<channel:unitQuicklinks />
<channel:unitWorkflow />
<channel:unitRules />
</td>