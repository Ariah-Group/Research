<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>
<c:if test="${KualiForm.displayProposalReportButton && !empty KualiForm.proposalReportButtonUrl}">
	<input src="${ConfigProperties.kra.externalizable.images.url}buttonsmall-print.gif" tabindex="0" class="globalbuttons" title="print" alt="print" type="image" formaction="${KualiForm.proposalReportButtonUrl}" formtarget="_blank" onclick="excludeSubmitRestriction=true">
</c:if>