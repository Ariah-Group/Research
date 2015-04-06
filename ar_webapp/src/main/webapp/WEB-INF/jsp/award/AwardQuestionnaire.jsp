<%--

--%>
<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>
<kul:documentPage
    showDocumentInfo="true"
    htmlFormAction="awardQuestionnaire"
    documentTypeName="AwardDocument"
    renderMultipart="false"
    showTabButtons="true"
    auditCount="0"
    headerDispatch="${KualiForm.headerDispatch}"
    headerTabActive="questionnaire"
    extraTopButtons="${KualiForm.extraTopButtons}" >

    <c:set var="readOnly" value="${not KualiForm.editingMode['fullEntry']}" scope="request" />
    <script type="text/javascript">
        var $j = jQuery.noConflict();
    </script>
    
    <link rel="stylesheet" href="css/jquery/questionnaire.css" type="text/css" />
    <link rel="stylesheet" href="css/jquery/new_kuali.css" type="text/css" />
    <link rel="stylesheet" href="css/jquery/kuali-stylesheet.css" type="text/css" />
    <link rel="stylesheet" href="css/jquery/jquery.treeview.css" type="text/css" />
    <script type="text/javascript" src="scripts/jquery/jquery.treeview.js"></script>
    <script type="text/javascript" src="scripts/jquery/CalendarPopup.js"></script>

    <div align="right"><kul:help documentTypeName="AwardDocument" pageName="Questionnaire" /></div>
    <kra-a:awardQuestionnaireAnswers property = "questionnaireHelper" bean = "${KualiForm.questionnaireHelper}"/>
  
    <kul:documentControls transactionalDocument="true" suppressRoutingControls="true" suppressCancelButton="true" />
    <script type="text/javascript" src="scripts/questionnaireAnswer.js"></script>
</kul:documentPage>
