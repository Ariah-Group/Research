<%--

--%>
<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>
<%@ attribute name="bean" required="true" type="org.kuali.kra.questionnaire.QuestionnaireHelperBase" %>
<%@ attribute name="property" required="true" %>
<c:set var="awardPersonAttributes" value="${DataDictionary.AwardPerson.attributes}" />
<c:set var="readOnly" value="${!bean.answerQuestionnaire}" scope = "request"/>
<div id="workarea">
<c:forEach items="${bean.answerHeaders}" var="answerHeader" varStatus="status">
	<c:set var="prop" value="${property}.answerHeaders[${status.index}].showQuestions"/>
	${kfunc:registerEditableProperty(KualiForm, prop)}
	<input type="hidden" name="${prop}" id ="${prop}" value="${bean.answerHeaders[status.index].showQuestions}" />
        <kra-questionnaire:questionnaireAnswers bean = "${bean}" property = "${property}" answerHeaderIndex = "${status.index}"/>
</c:forEach>
<c:if test="${fn:length(bean.answerHeaders) > 0}">
    ${kfunc:registerEditableProperty(KualiForm, "numberOfQuestionaires")}
    <input type="hidden" name="numberOfQuestionaires" id ="numberOfQuestionaires" value = "${fn:length(bean.answerHeaders)}" />
    <kul:panelFooter />
</c:if>
</div>