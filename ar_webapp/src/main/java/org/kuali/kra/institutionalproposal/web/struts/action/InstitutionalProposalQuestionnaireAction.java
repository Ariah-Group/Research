/*
 * Copyright 2015 The Ariah Group, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.institutionalproposal.web.struts.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang.StringUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.ariahgroup.research.institutionalproposal.questionnaire.InstitutionalProposalModuleQuestionnaireBeanBase;
import org.ariahgroup.research.institutionalproposal.questionnaire.InstitutionalProposalQuestionnaireHelper;
import org.kuali.kra.bo.CoeusModule;
import org.kuali.kra.bo.CoeusSubModule;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.institutionalproposal.web.struts.form.InstitutionalProposalForm;
import org.kuali.kra.proposaldevelopment.bo.AttachmentDataSource;
import org.kuali.kra.questionnaire.answer.AnswerHeader;
import org.kuali.kra.questionnaire.answer.ModuleQuestionnaireBean;
import org.kuali.kra.questionnaire.answer.QuestionnaireAnswerService;
import org.kuali.kra.questionnaire.print.QuestionnairePrintingService;

/**
 *
 * @author The Ariah Group, Inc.
 */
public class InstitutionalProposalQuestionnaireAction extends InstitutionalProposalAction {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        ActionForward forward = super.execute(mapping, form, request, response);
        return forward;
    }

    @Override
    public ActionForward saveOnClose(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {

        ActionForward forward = mapping.findForward(Constants.QUESTIONS_PAGE);
        InstitutionalProposalForm institutionalProposalForm = (InstitutionalProposalForm) form;

        List<AnswerHeader> answerHeaders = institutionalProposalForm.getQuestionnaireHelper().getAnswerHeaders();

        getBusinessObjectService().save(answerHeaders);

        forward = super.saveOnClose(mapping, form, request, response);
        return forward;
    }

    @Override
    public ActionForward save(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {

        ActionForward forward = mapping.findForward(Constants.QUESTIONS_PAGE);

        InstitutionalProposalForm institutionalProposalForm = (InstitutionalProposalForm) form;
        List<AnswerHeader> answerHeaders = institutionalProposalForm.getQuestionnaireHelper().getAnswerHeaders();

        getBusinessObjectService().save(answerHeaders);

        forward = super.save(mapping, form, request, response);
        return forward;
    }

    /**
     *
     * This method is for the 'update' button to update questionnaire answer to
     * new version
     *
     * @param mapping
     * @param form
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    public ActionForward updateAnswerToNewVersion(ActionMapping mapping, ActionForm form, HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        ((InstitutionalProposalForm) form).getQuestionnaireHelper().updateQuestionnaireAnswer(getLineToDelete(request));
        getBusinessObjectService().save(((InstitutionalProposalForm) form).getQuestionnaireHelper().getAnswerHeaders().get(getLineToDelete(request)));
        return mapping.findForward(Constants.MAPPING_BASIC);
    }

    /**
     * This is specifically for 'lookup' return a value.
     */
    @Override
    public ActionForward refresh(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        ActionForward forward = super.refresh(mapping, form, request, response);

        if (request.getParameter("refreshCaller") != null && request.getParameter("refreshCaller").equals("kualiLookupable")) {
            // Lookup field 'onchange' is not working if it is return a value from 'lookup', so do it on server side
            for (Object obj : request.getParameterMap().keySet()) {
                if (StringUtils.indexOf((String) obj, "questionnaireHelper.answerHeaders[") == 0) {
                    ((InstitutionalProposalForm) form).getQuestionnaireHelper().updateChildIndicator(Integer.parseInt(StringUtils.substringBetween((String) obj, "questionnaireHelper.answerHeaders[",
                            "].answers[")));
                }
            }
        }

        return forward;
    }

    @Override
    public ActionForward reload(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        // TODO : reload should reload the action page too, so this submissionquestionnaire may not needed ?
        ActionForward actionForward = super.reload(mapping, form, request, response);
        ((InstitutionalProposalQuestionnaireHelper) ((InstitutionalProposalForm) form).getQuestionnaireHelper()).prepareView();
        ((InstitutionalProposalForm) form).getQuestionnaireHelper().populateAnswers();
        ((InstitutionalProposalForm) form).getQuestionnaireHelper().setQuestionnaireActiveStatuses();
        return actionForward;
    }

    public ActionForward summaryQuestionnairePop(ActionMapping mapping, ActionForm form, HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        ActionForward forward;
        InstitutionalProposalForm institutionalProposalForm = (InstitutionalProposalForm) form;
        String sequenceNumber = request.getParameter("sequenceNumber");
        String proposalNumber = request.getParameter("proposalNumber");

        ModuleQuestionnaireBean moduleQuestionnaireBean = new InstitutionalProposalModuleQuestionnaireBeanBase(CoeusModule.INSTITUTIONAL_PROPOSAL_MODULE_CODE, proposalNumber,
                CoeusSubModule.ZERO_SUBMODULE, sequenceNumber, true);

        institutionalProposalForm.getQuestionnaireHelper().setAnswerHeaders(
                getQuestionnaireAnswerService().getQuestionnaireAnswer(moduleQuestionnaireBean));

        institutionalProposalForm.getQuestionnaireHelper().setAnswerHeaders(
                getAnsweredQuestionnaire(institutionalProposalForm.getQuestionnaireHelper().getAnswerHeaders()));

        forward = mapping.findForward("viewQuestionnaire");

        institutionalProposalForm.getQuestionnaireHelper().resetHeaderLabels();
        institutionalProposalForm.getQuestionnaireHelper().setQuestionnaireActiveStatuses();
        return forward;
    }

    /*
     * to filter out the questionnaire answer not saved
     */
    private List<AnswerHeader> getAnsweredQuestionnaire(List<AnswerHeader> answerHeaders) {
        List<AnswerHeader> savedHeaders = new ArrayList<AnswerHeader>();
        for (AnswerHeader answerHeader : answerHeaders) {
            if (answerHeader.getAnswerHeaderId() != null) {
                savedHeaders.add(answerHeader);
            }
        }
        return savedHeaders;
    }

    protected QuestionnaireAnswerService getQuestionnaireAnswerService() {
        return KraServiceLocator.getService(QuestionnaireAnswerService.class);
    }

    public ActionForward printQuestionnaireAnswer(ActionMapping mapping, ActionForm form, HttpServletRequest request,
            HttpServletResponse response) throws Exception {

        // TODO : this is only available after questionnaire is saved ?
        ActionForward forward = mapping.findForward(Constants.MAPPING_INSTITUTIONAL_PROPOSAL_HOME_PAGE);
        Map<String, Object> reportParameters = new HashMap<String, Object>();
        InstitutionalProposalForm institutionalProposalForm = (InstitutionalProposalForm) form;
        final int answerHeaderIndex = this.getSelectedLine(request);

        // TODO : a flag to check whether to print answer or not
        AnswerHeader ansHead = institutionalProposalForm.getQuestionnaireHelper().getAnswerHeaders().get(answerHeaderIndex);

        reportParameters.put("questionnaireId", ansHead.getQuestionnaire().getQuestionnaireIdAsInteger());
        reportParameters.put("template", ansHead.getQuestionnaire().getTemplate());
        reportParameters.put("moduleSubItemCode", ansHead.getModuleSubItemCode());

        AttachmentDataSource dataStream = getQuestionnairePrintingService().printQuestionnaireAnswer(institutionalProposalForm.getInstitutionalProposalDocument().getInstitutionalProposal(), reportParameters);
        if (dataStream.getContent() != null) {
            streamToResponse(dataStream, response);
            forward = null;
        }
        return forward;
    }

    public QuestionnairePrintingService getQuestionnairePrintingService() {
        return KraServiceLocator.getService(QuestionnairePrintingService.class);
    }
}
