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
<c:set var="proposalDevelopmentAttributes" value="${DataDictionary.DevelopmentProposal.attributes}" />
<c:set var="proposalChangedDataAttributes" value="${DataDictionary.ProposalChangedData.attributes}" />
<c:set var="proposalColumnsToAlterAttributes" value="${DataDictionary.ProposalColumnsToAlter.attributes}" />
<kul:tab tabTitle="Proposal Data Updates Tracking" defaultOpen="${openFlag}" tabErrorKey="newProposalChangedData.*">
    <div class="tab-container" align="center">
        <c:if test="${fn:length(KualiForm.proposalChangedData) > 0}">
            <br>
            <h3>
                <span class="subhead-left">Proposal Change History</span>
                <span class="subhead-right"><kul:help businessObjectClassName="org.kuali.kra.proposaldevelopment.bo.ProposalChangedData" altText="help"/></span>
            </h3>
            <table cellpadding=0 cellspacing=0 summary="">
                <tr>
                    <th>Proposal Field</th>
                    <th>New Value</th>
                    <th>Original Value</th>
                    <th>Changed Date</th>
                    <th>Changed By</th>
                </tr>
                <c:forEach var="proposalChangedData" items="${KualiForm.proposalChangedData}" varStatus="innerStatus">
                    <tr>
                        <td align="left" valign="middle" class="infoline">
                            <div align="center"><c:out value="${proposalChangedData.comments}" />&nbsp;</div>
                        </td>                        
                        <td align="left" valign="middle" class="infoline">
                            <div align="center"><c:out value="${proposalChangedData.displayValue}" />&nbsp;</div>
                        </td>
                        <td align="left" valign="middle" class="infoline"> 
                            <div align="center">
                                <c:out value="${proposalChangedData.oldDisplayValue}" />&nbsp;</div>
                        </td>
                        <td align="left" valign="middle" class="infoline">
                            <div align="center">
                                <fmt:formatDate value="${proposalChangedData.updateTimestamp}" type="both" dateStyle="short" timeStyle="short" />&nbsp;</div>
                        </td>
                        <td align="left" valign="middle" class="infoline">
                            <div align="center"><c:out value="${proposalChangedData.updateUser}" />&nbsp;</div>
                        </td>
                        <td align="left" valign="middle" class="infoline">
                            <div align="left">&nbsp;</div>
                        </td>	
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </div> 
</kul:tab>