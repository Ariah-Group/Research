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
<%@page import="org.kuali.kra.infrastructure.KraServiceLocator" %>
<%@page import="org.kuali.rice.krad.service.BusinessObjectService" %>
<%@page import="java.util.*" %>
<%@page import="org.kuali.rice.krad.util.GlobalVariables" %>
<%@page import="org.kuali.kra.bo.CoeusModule" %>
<%@page import="org.ariahgroup.research.bo.ReportLink" %>
<%@page import="org.ariahgroup.research.reports.service.ReportService" %>
<%@page import="org.kuali.kra.kim.bo.KcKimAttributes"%>
<td class="content" valign="top">
    <br>
    <table width="100%" border="0">
        <tr>
            <td class="content" valign="top">

                <%
                    ReportService reportService = KraServiceLocator.getService(ReportService.class);
                    List<ReportLink> allReports = reportService.getAllReportLinksByCoeusModule();

                    if (allReports != null) {

                        int numReportSections = 0;

                        Iterator<ReportLink> iter = allReports.iterator();

                        int tempModuleId = -1;
                        boolean firstModule = true;
                        while (iter.hasNext()) {

                            //StringBuilder sb = new StringBuilder(1000);
                            ReportLink report = iter.next();

                            if (report.getModuleCode() != tempModuleId) {

                                numReportSections++;

                                // we're in a new module section
                                if (!firstModule) {

                %>
                </ul>
                </div>
        <channel:portalChannelBottom />
</td>
<%        if (numReportSections > 3) {
            out.println("</tr><tr><td class=\"content\" valign=\"top\">");
            numReportSections = 1;
        } else {
            out.println("<td class=\"content\" valign=\"top\">");
        }

    } else {
        firstModule = false;
    }

%>
<channel:portalChannelTop channelTitle="<%= report.getModuleName()%>" />
<div class="body">
    <ul class="chan">  
        <%
            out.println("<li><a target=\"_blank\" title='" + report.getDescription() + "' href='" + report.getReportUrl() + "'>" + report.getDescription() + "</a></li>");
        %>

        <%                    
            tempModuleId = report.getModuleCode();
                } else {
                    out.println("<li><a target=\"_blank\" title='" + report.getDescription() + "' href='" + report.getReportUrl() + "'>" + report.getDescription() + "</a></li>");
                }
            }
        %>
    </ul>
</div>
<channel:portalChannelBottom />   
<%
    }
%>
</td></tr>
</table>
</td>
<td class="content" valign="top">
    <br>
<channel:reportsResearcher />
</td>
