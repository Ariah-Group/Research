<%--
 * Copyright 2017 The Ariah Group, Inc.
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
--%>

<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>

<c:set var="proposalDevelopmentAttributes" value="${DataDictionary.DevelopmentProposal.attributes}" />
<c:set var="relatedProposalAttributes" value="${DataDictionary.PropRelatedProposal.attributes}" />
<c:set var="action" value="proposalDevelopmentProposal" />
<c:set var="className" value="org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument" />

<kul:tab tabTitle="Related Proposals" defaultOpen="false" tabErrorKey="document.developmentProposalList[0].relatedProposal">
    <div class="tab-container" align="center">
        <h3>
            <span class="subhead-left">Proposals</span>
            <span class="subhead-right"><kul:help businessObjectClassName="org.ariahgroup.research.proposaldevelopment.bo.PropRelatedProposal" altText="help"/></span>
        </h3>

        <table id="keywords-table" cellpadding=0 cellspacing="0"  summary="">
            <tr>
                <th><div align="left">&nbsp;</div></th>  
                <th><div align="left"><kul:htmlAttributeLabel attributeEntry="${relatedProposalAttributes.description}" noColon="true" /></div></th>
                    <kul:htmlAttributeHeaderCell literalLabel="Actions" scope="col"/>
            </tr>
            <kra:section permission="modifyProposal">
                <tr>
                    <th width="10%" class="infoline">Add:</th>
                    <td width="70%" class="infoline">${KualiForm.document.developmentProposalList[0].newDescription}
                        <kul:multipleValueLookup boClassName="org.kuali.kra.proposaldevelopment.bo.LookupableDevelopmentProposal" 
                                                 lookedUpCollectionName="relatedProposals" 
                                                 anchor="${tabKey}"/>
                    </td>

                    <td width="20%" class="infoline"><div align="center">
                            &nbsp;
                        </div></td>
                </tr>
            </kra:section>            

            <c:forEach var="relatedProposals" items="${KualiForm.document.developmentProposalList[0].relatedProposals}" varStatus="status">
                <tr>
                    <td class="infoline"><div align="center">
                            ${status.index+1} 
                        </div></td>
                    <td>
                        # <c:out value="${relatedProposals.proposalNumber2}"/> : <c:out value="${relatedProposals.proposal2.title}"/>
                        <a href="${ConfigProperties.application.url}/proposalDevelopmentProposal.do?methodToCall=docHandler&command=displayDocSearchView&docId=${relatedProposals.proposal2.proposalDocument.documentNumber}&medusaOpenedDoc=true"
                           target="_blank" class="medusaOpenLink">
                            <img title="Open Proposal" 
                                 alt="Open Proposal" style="border: medium none ;" 
                                 src="static/images/tinybutton-openproposal.gif"/>
                        </a> 
                    </td>
                    <td><div align="center">
                            <kul:htmlControlAttribute property="document.developmentProposalList[0].relatedProposal[${status.index}].selectProposal" attributeEntry="${DataDictionary.PropRelatedProposal.attributes.selectProposal}" readOnly="${readOnly}" />
                        </div></td>
                </tr>
            </c:forEach>             

            <kra:section permission="modifyProposal">
                <tr>
                    <td class="infoline" colspan=2>&nbsp;</td>
                    <td nowrap class="infoline"><div align=center>
                            <c:if test="${fn:length(KualiForm.document.developmentProposalList[0].relatedProposals) > 0}">
                                <html:image property="methodToCall.selectAllRelatedProposal.anchor${tabKey}" src="${ConfigProperties.kra.externalizable.images.url}tinybutton-selectall.gif" title="Select All" alt="Select All" styleClass="tinybutton" onclick="javascript: selectAllRelatedProposals(document,'document.developmentProposalList[0].relatedProposal');return false" />    
                                <html:image property="methodToCall.deleteSelectedRelatedProposal.anchor${tabKey}" src="${ConfigProperties.kra.externalizable.images.url}tinybutton-deleteselected.gif" title="Delete Selected" alt="Delete Selected" styleClass="tinybutton" />
                            </c:if>
                        </div></td>
                </tr>
            </kra:section> 
        </table>
    </div>
    <script type="text/javascript">
        function selectAllRelatedProposals(document, propsArray) {
            var j = 0;
            for (var i = 0; i < document.KualiForm.elements.length; i++) {
                var e = document.KualiForm.elements[i];
                if (e.type == 'checkbox') {
                    var name = propsArray + '[' + j + '].selectProposal';
                    if (e.name == name) {
                        e.checked = true;
                        j++;
                    }
                }
            }
        }
    </script>                  
</kul:tab>
