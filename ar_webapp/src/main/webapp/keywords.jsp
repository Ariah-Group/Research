<%--
Copyright 2016 The Ariah Group, Inc.

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
<%@page import="org.ariahgroup.research.bo.KeywordCount" %>
<%@page import="org.ariahgroup.research.keywords.service.KeywordService" %>
<%@page import="org.kuali.kra.kim.bo.KcKimAttributes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    KeywordService keywordService = KraServiceLocator.getService(KeywordService.class);
    List<KeywordCount> keywords = keywordService.getAllKeywordsCounts();

    StringBuilder sb = new StringBuilder(1000);
    sb.append("var words = [");

    for (int i = 0; i < keywords.size(); i++) {
        KeywordCount key = keywords.get(i);
        sb.append("{text: \"" + key.getKeyword() + "\", weight: " + key.getCount() + ", link: 'keywordsearch.do?word=" + key.getKeyword() + "'}");
        if (i < (keywords.size() - 1)) {
            sb.append(",");
        }
    }

    sb.append("];");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery/jquery-1.11.1.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jqcloud/jqcloud.min.js"></script>
        <link href="${pageContext.request.contextPath}/plugins/jqcloud/jqcloud.min.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
            var $j = jQuery.noConflict();
            $j(document).ready(function () {
            <%= sb.toString()%>
                $j('#keywordCloud').jQCloud(words, {
                    width: 780,
                    height: 500
                });
            });
        </script>
    </head>
    <body>
        <div id="keywordCloud" style="width: 80%"></div>
    </body>
</html>
