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
<%@page import="org.ariahgroup.research.bo.Keyword" %>
<%@page import="org.ariahgroup.research.keywords.service.KeywordService" %>
<%@page import="org.kuali.kra.kim.bo.KcKimAttributes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    KeywordService keywordService = KraServiceLocator.getService(KeywordService.class);
    List<Keyword> keywords = keywordService.getKeywordsActive();

    StringBuilder sb2 = new StringBuilder(1000);
    sb2.append("var tagIdList = [");

    StringBuilder sb = new StringBuilder(1000);
    sb.append("var tagNameList = [");

    for (int i = 0; i < keywords.size(); i++) {
        Keyword key = keywords.get(i);
        sb.append("'" + key.getDescription() + "'");
        sb2.append("'" + key.getId() + "'");
        if (i < (keywords.size() - 1)) {
            sb.append(",");
            sb2.append(",");
        }
    }

    sb.append("];");
    sb2.append("];");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery/jquery-1.11.1.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jqueryUI/jquery-ui-1.11.4.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/tagit/tag-it.min.js" charset="utf-8"></script>
        <link href="${pageContext.request.contextPath}/plugins/tagit/jquery.tagit.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/plugins/tagit/tagit.ui-zendesk.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
            var $j = jQuery.noConflict();
            <%= sb2.toString()%>
            <%= sb.toString()%>
            $j(document).ready(function () {

                $j('#singleFieldTags').tagit({
                    availableTags: tagNameList,
                    singleField: true,
                    //,  singleFieldNode: $j('#mySingleField'),
                    afterTagAdded: function (event, ui) {
                        fnTagAdd(ui.tagLabel);
                    },
                    afterTagRemoved: function (event, ui) {
                        fnTagRemove(ui.tagLabel);
                    },
                    autocomplete: {
                        messages: {
                            noResults: '',
                            results: function () {
                            }}
                    }
                });
            });
            function fnGetResults() {
                var objTags = $j('#singleFieldTags').tags;
                alert(objTags);
            }

            var aryTagNames = new Array();
            var aryTagIdsToSend = new Array();

            function fnTagRemove(tagName) {
                for (var i = 0; i < tagNameList.length; i++) {
                    if (tagNameList[i] == tagName) {
                        // get ID of tag
                        var idToRemove = tagIdList[i];

                        for (var j = 0; j < aryTagIdsToSend.length; j++) {
                            if (aryTagIdsToSend[j] == idToRemove) {
                                // remove from aryTagIdsToSend
                                aryTagIdsToSend.splice(j, 1);
                                break;
                            }
                        }
                        // then remove from tagNameList 
                        tagNameList.splice(i, 1);
                        break;
                    }
                }
            }

            function fnTagAdd(tagName) {

                var boolFound = false;

                for (var i = 0; i < aryTagNames.length; i++) {
                    if (aryTagNames[i] == tagName) {
                        boolFound = true;
                    }
                }
                if (boolFound) {
                    // adding a tagname that already exists, so do not retrigger search
                    return false;
                } else {

                    // get indice for ID

                    for (var i = 0; i < tagNameList.length; i++) {
                        if (tagNameList[i] == tagName) {
                            aryTagIdsToSend.push(tagIdList[i]);
                        }
                    }

                    aryTagNames.push(tagName);
                }
            }
            function fnSearch(){
                document.getElementById('loadingDevProp').style.display = 'block';
                document.getElementById('contentDevProp').innerHTML = '';

                document.getElementById('loadingInstProp').style.display = 'block';
                document.getElementById('loadingAward').style.display = 'block';
                document.getElementById('loadingIRB').style.display = 'block';
                document.getElementById('loadingIACUC').style.display = 'block';

                // send search terms
                var html = '';
                $j.post('ariah/keywordsearch_devproposals.json', {searchterms: aryTagIdsToSend.toString()}, function (data, textStatus) {
                    //data contains the JSON object
                    //textStatus contains the status: success, error, etc
                    //alert(data);
                    //alert(textStatus);
                    for (var i = 0; i < data.length; i++) {
                        var propNum = data[i].proposalNumber;
                        var docNum = data[i].documentNumber;
                        var title = data[i].title;

                        html += propNum + ' : ';
                        html += '<a target="_blank" href="https://demo.moderas.org/research/proposalDevelopmentProposal.do?viewDocument=true&docId=';
                        html += docNum + '&docTypeName=ProposalDevelopmentDocument&methodToCall=docHandler&command=displayDocSearchView">';
                        html += title;
                        html += '</a>';
                        html += '<br>';


                        //   https://demo.moderas.org/research/proposalDevelopmentProposal.do?viewDocument=true&docId=1942&docTypeName=ProposalDevelopmentDocument&methodToCall=docHandler&command=displayDocSearchView
                    }
                    document.getElementById('contentDevProp').innerHTML = html;

                    document.getElementById('loadingDevProp').style.display = 'none';

                }, "json");

                // process results

                // hide loading gifs

            }
        </script>
        <style>
            .ui-helper-hidden-accessible { display:none; }
        </style>
    </head>
    <body>
        <form>
            <table style="width: 50%">
                <tr>
                    <td>
                        <input name="tags" id="singleFieldTags" size="80" value=""/>
                    </td>
                    <td>
                        <input type="button" name="btnRunSearch" id="btnRunSearch" value="Search" onclick="fnSearch()"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="button" name="btnRemoveSearchTerms" id="btnRemoveSearchTerms" value="Clear" onclick="$j('#singleFieldTags').tagit('removeAll');
                                return false;"/>
                    </td>
                </tr>
            </table>
            <br><hr>
            <h3>Development Proposals</h3>
            <img id="loadingDevProp" src="static/images/loading.gif" alt="Loading" style="display:none">
            <div id="contentDevProp"></div>
            <br><br>
            <hr>
            <h3>Institutional Proposals</h3>
            <img id="loadingInstProp" src="static/images/loading.gif" alt="Loading" style="display:none">
            <br><br>
            <hr>
            <h3>Awards</h3>
            <img id="loadingAward" src="static/images/loading.gif" alt="Loading"  style="display:none">
            <br><br>     
            <hr>
            <h3>IRB Protocols</h3>
            <img id="loadingIRB" src="static/images/loading.gif" alt="Loading"  style="display:none">
            <br><br>       
            <hr>
            <h3>IACUC Protocols</h3>
            <img id="loadingIACUC" src="static/images/loading.gif" alt="Loading"  style="display:none">
            <br><br>       
        </form>
    </body>
</html>
