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
<%@ attribute name="personIndex" required="true" description="Index to identify the procedure of a specific collection for procedure display" %>
<%@ attribute name="displayTitle" required="true" description="Title for this popup" %>
<%@ attribute name="trainingCollectionReference" required="true" type="java.util.List" description="The object reference to the collection that holds all person training details" %>
<c:set var="personTrainingAttributes" value="${DataDictionary.PersonTraining.attributes}" />
<c:set var="trainingAttributes" value="${DataDictionary.Training.attributes}" />
<tbody id="training-div${personIndex}" style="display: none;">
    <tr>
        <th class="content_grey" style="text-align:center; background-color:#666; color:#FFF;" colspan="8">
            ${displayTitle}
        </th>
    </tr>     
    <tr>
        <th><div align="center">Training #</div></th>
<th><div align="center">Code</div></th>
<th><div align="center"><kul:htmlAttributeLabel attributeEntry="${trainingAttributes.description}" noColon="true" /></div></th>
<th><div align="center">Score</div></th>
<th><div align="center"><kul:htmlAttributeLabel attributeEntry="${personTrainingAttributes.dateRequested}" noColon="true" /></div></th>
<th><div align="center"><kul:htmlAttributeLabel attributeEntry="${personTrainingAttributes.dateSubmitted}" noColon="true" /></div></th>
<th><div align="center"><kul:htmlAttributeLabel attributeEntry="${personTrainingAttributes.dateAcknowledged}" noColon="true" /></div></th>
</tr>
<c:forEach var="irbPersonTraining" items="${trainingCollectionReference}" varStatus="trainingStatus">
    <tr>
        <td align="left" valign="middle" class="infoline"><c:out value="${irbPersonTraining.trainingNumber}"/></td>
        <td align="left" valign="middle" class="infoline"><c:out value="${irbPersonTraining.trainingCode}"/></td>
        <td align="left" valign="middle" class="infoline"><c:out value="${irbPersonTraining.training.description}"/></td>
        <td align="left" valign="middle" class="infoline"><c:out value="${irbPersonTraining.score}"/></td>
        <td align="left" valign="middle" class="infoline"><c:out value="${irbPersonTraining.dateRequested}"/></td>
        <td align="left" valign="middle" class="infoline"><c:out value="${irbPersonTraining.dateSubmitted}"/></td>
        <td align="left" valign="middle" class="infoline"><c:out value="${irbPersonTraining.dateAcknowledged}"/></td>
    </tr>
</c:forEach>
</tbody>