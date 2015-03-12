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
---------------------------------------------
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
<%@ page import="org.kuali.kra.infrastructure.Constants"%>
<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>
<c:set var="protocolAttributes" value="${DataDictionary.ProtocolDocument.attributes}" />
<kul:documentPage
	showDocumentInfo="true"
	htmlFormAction="protocolProtocol"
	documentTypeName="ProtocolDocument"
	renderMultipart="false"
	showTabButtons="true"
	auditCount="0"
  	headerDispatch="${KualiForm.headerDispatch}"
  	headerTabActive="protocol">
<script type="text/javascript">
   var $j = jQuery.noConflict();
</script>
<div align="right"><kul:help documentTypeName="ProtocolDocument" pageName="Protocol" /></div>
<c:choose>
    <c:when test="${!KualiForm.hideIrbDocDescriptionPanel}">
	<kul:documentOverview editingMode="${KualiForm.editingMode}" />
    </c:when>
    <c:otherwise>
        <div id="workarea">
         <c:set var="requiredTransparent" value="true"/> 
    </c:otherwise>
</c:choose>
<kra-irb:protocolRequiredFields transparent="${requiredTransparent}"/>
<kra-irb:protocolStatusDate />
<c:choose>
	<c:when test="${KualiForm.displayRiskLevelPanel}" > 
		<kra-irb:protocolRiskLevel />
	</c:when>
</c:choose>
<kra-irb:protocolAdditionalInformation />
<kra-irb:protocolLocations />
<kra-irb:protocolFundingSources />
<kra-irb:protocolParticipants />
<kul:panelFooter />
	<kul:documentControls 
		transactionalDocument="false"
		suppressRoutingControls="true"
		extraButtonSource="${extraButtonSource}"
		extraButtonProperty="${extraButtonProperty}"
		extraButtonAlt="${extraButtonAlt}"
		viewOnly="${KualiForm.editingMode['viewOnly']}"
		/>
<SCRIPT type="text/javascript">
var kualiForm = document.forms['KualiForm'];
var kualiElements = kualiForm.elements;
</SCRIPT>
<script language="javascript" src="dwr/interface/ProtocolFundingSourceService.js"></script>
<!-- <script language="javascript" src="dwr/interface/UnitService.js"></script> -->
</kul:documentPage>