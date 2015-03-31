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
--------------------------------------------------------------------
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
<%@ attribute name="node" required="true" type="org.kuali.kra.medusa.MedusaNode"%>
  <table style="border: 1px solid rgb(147, 147, 147); padding: 0px; width: 97%; border-collapse: collapse;">
    <tr>
      <th colspan="4" style="border-style: solid; text-align: left; border-color: rgb(230, 230, 230) rgb(147, 147, 147) rgb(147, 147, 147); border-width: 1px; padding: 3px; border-collapse: collapse; background-color: rgb(184, 184, 184); background-image: none;">Subaward ${node.bo.subAwardCode}</th>
    </tr>
    <tr>
      <td style="text-align: center;" colspan="4">
	  <a href="${ConfigProperties.application.url}/subAwardHome.do?methodToCall=docHandler&command=displayDocSearchView&docId=${node.bo.subAwardDocument.documentNumber}&medusaOpenedDoc=true"
	     target="_blank" class="medusaOpenLink">
	    <img title="Open Subaward" 
	          alt="Open Subaward" style="border: medium none ;" 
	          src="static/images/tinybutton-opensubaward.gif"/>
	  </a>      	  
      </td>
    </tr>    
    <tr>
      <th colspan="4" style="border-style: solid; text-align:left; border-color: rgb(230, 230, 230) rgb(147, 147, 147) rgb(147, 147, 147); border-width: 1px; padding: 3px; border-collapse: collapse; background-color: rgb(184, 184, 184); background-image: none;">Summary</th>
    </tr>
    <tr>
      <th style="text-align: right;">Subaward ID:</th>
      <td><c:out value="${node.bo.subAwardCode}"/></td>
      <th style="text-align: right;">Status:</th>
      <td><c:out value="${node.bo.statusDescription}"/></td>
    </tr>
     <tr>
      <th style="text-align: right;">Account ID:</th>
      <td><c:out value="${node.bo.accountNumber}"/></td>
      <th style="text-align: right;">Subrecipient:</th>
       <td><c:out value="${node.bo.organizationName}"/></td>
    </tr>
    <tr>
      <th style="text-align: right;">Start Date:</th>
      <td><fmt:formatDate pattern="MM/dd/yyyy" value="${node.bo.startDate}"/></td>
      <th style="text-align: right;">End Date:</th>
      <td><fmt:formatDate pattern="MM/dd/yyyy" value="${node.bo.endDate}"/></td>      
    </tr>
    <tr>
      <th style="text-align: right;" >Subaward Type:</th>
      <td><c:out value="${node.bo.subAwardType.description}"/></td>
      <th style="text-align: right;">Purchase Order ID:</th>
      <td><c:out value="${node.bo.purchaseOrderNum}"/></td>
    </tr> 
    <tr>
      <th style="text-align: right;" >Title:</th>
      <td><c:out value="${node.bo.title}"/></td>
      <th style="text-align: right;">Requisitioner:</th>
      <td><c:out value="${node.bo.requisitioner.fullName}"/></td>
    </tr> 
    <tr>
      <th style="text-align: right;" >Requisitioner Unit:</th>
      <td><c:out value="${node.bo.unit.unitName}"/></td>
      <th style="text-align: right;">Vendor ID:</th>
      <td><c:out value="${node.bo.vendorNumber}"/></td>
    </tr>
    <tr>
      <th style="text-align: right;" >Closeout Date:</th>
      <td><fmt:formatDate pattern="MM/dd/yyyy" value="${node.bo.closeoutDate}"/></td>
      <th style="text-align: right;">Archive Location:</th>
      <td><c:out value="${node.bo.archiveLocation}"/></td>
    </tr>
    <tr>
      <th style="text-align: right;" >Comments:</th>
      <td colspan="3"><c:out value="${node.bo.comments}"/></td>
    </tr>
    <tr>
     <th style="text-align: right;">Anticipated Amount:</th>
      <td><c:out value="${node.bo.totalAnticipatedAmount}"/></td>
      <th style="text-align: right;" >Obligated Amount:</th>
      <td><c:out value="${node.bo.totalObligatedAmount}"/></td>
    </tr>
     <tr>
      <th style="text-align: right;">Amount Released:</th>
      <td><c:out value="${node.bo.totalAmountReleased}"/></td>
      <th style="text-align: right;" >Available Amount:</th>
      <td><c:out value="${node.bo.totalAvailableAmount}"/></td>
    </tr>
  </table>