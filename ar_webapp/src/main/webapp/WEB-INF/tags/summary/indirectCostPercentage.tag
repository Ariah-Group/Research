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
<%@ include file="/kr/WEB-INF/jsp/tldHeader.jsp"
%><%@ attribute name="totalCost" required="true" type="org.kuali.kra.budget.BudgetDecimal"
%><%@ attribute name="totalIndirectCost" required="true" type="org.kuali.kra.budget.BudgetDecimal" %>
<c:choose>
    <c:when test="${totalCost.floatValue > 0}">
    <fmt:formatNumber pattern="#,##0.00" value="${(totalIndirectCost.floatValue / totalCost.floatValue) * 100}" />
    </c:when>
    <c:otherwise>0.00</c:otherwise>  
</c:choose>