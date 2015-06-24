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
package org.kuali.kra.award.web.struts.action;

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
import org.ariahgroup.research.award.questionnaire.AwardModuleQuestionnaireBeanBase;
import org.ariahgroup.research.award.questionnaire.AwardQuestionnaireHelper;
import org.kuali.kra.award.AwardForm;
import org.kuali.kra.bo.CoeusModule;
import org.kuali.kra.bo.CoeusSubModule;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.ariahgroup.research.bo.AttachmentDataSource;
import org.kuali.kra.questionnaire.answer.AnswerHeader;
import org.kuali.kra.questionnaire.answer.ModuleQuestionnaireBean;
import org.kuali.kra.questionnaire.answer.QuestionnaireAnswerService;
import org.kuali.kra.questionnaire.print.QuestionnairePrintingService;

/**
 *
 * @author The Ariah Group, Inc.
 */
public class AwardQuestionnaireAction extends AwardAction {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        ActionForward forward = super.execute(mapping, form, request, response);
        return forward;
    }

    @Override
    public ActionForward saveOnClose(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {

        ActionForward forward = mapping.findForward(Constants.QUESTIONS_PAGE);
        AwardForm awardForm = (AwardForm) form;

        List<AnswerHeader> answerHeaders = awardForm.getQuestionnaireHelper().getAnswerHeaders();

        getBusinessObjectService().save(answerHeaders);

        forward = super.saveOnClose(mapping, form, request, response);
        return forward;
    }

    @Override
    public ActionForward save(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {

        ActionForward forward = mapping.findForward(Constants.QUESTIONS_PAGE);

        AwardForm awardForm = (AwardForm) form;
        List<AnswerHeader> answerHeaders = awardForm.getQuestionnaireHelper().getAnswerHeaders();

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
        ((AwardForm) form).getQuestionnaireHelper().updateQuestionnaireAnswer(getLineToDelete(request));
        getBusinessObjectService().save(((AwardForm) form).getQuestionnaireHelper().getAnswerHeaders().get(getLineToDelete(request)));
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
                    ((AwardForm) form).getQuestionnaireHelper().updateChildIndicator(Integer.parseInt(StringUtils.substringBetween((String) obj, "questionnaireHelper.answerHeaders[",
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
        ((AwardQuestionnaireHelper) ((AwardForm) form).getQuestionnaireHelper()).prepareView();
        ((AwardForm) form).getQuestionnaireHelper().populateAnswers();
        ((AwardForm) form).getQuestionnaireHelper().setQuestionnaireActiveStatuses();
        return actionForward;
    }

    public ActionForward summaryQuestionnairePop(ActionMapping mapping, ActionForm form, HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        ActionForward forward;
        AwardForm awardForm = (AwardForm) form;
        String sequenceNumber = request.getParameter("sequenceNumber");
        String awardNumber = request.getParameter("awardNumber");

        ModuleQuestionnaireBean moduleQuestionnaireBean = new AwardModuleQuestionnaireBeanBase(CoeusModule.AWARD_MODULE_CODE, awardNumber,
                CoeusSubModule.ZERO_SUBMODULE, sequenceNumber, true);

        awardForm.getQuestionnaireHelper().setAnswerHeaders(
                getQuestionnaireAnswerService().getQuestionnaireAnswer(moduleQuestionnaireBean));

        awardForm.getQuestionnaireHelper().setAnswerHeaders(
                getAnsweredQuestionnaire(awardForm.getQuestionnaireHelper().getAnswerHeaders()));
        forward = mapping.findForward("viewQuestionnaire");

        awardForm.getQuestionnaireHelper().resetHeaderLabels();
        awardForm.getQuestionnaireHelper().setQuestionnaireActiveStatuses();
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
        ActionForward forward = mapping.findForward(Constants.MAPPING_AWARD_BASIC);
        Map<String, Object> reportParameters = new HashMap<String, Object>();
        AwardForm awardForm = (AwardForm) form;
        final int answerHeaderIndex = this.getSelectedLine(request);

        // TODO : a flag to check whether to print answer or not
        AnswerHeader ansHead = ((AwardForm) form).getQuestionnaireHelper().getAnswerHeaders().get(answerHeaderIndex);

        reportParameters.put("questionnaireId", ansHead.getQuestionnaire().getQuestionnaireIdAsInteger());
        reportParameters.put("template", ansHead.getQuestionnaire().getTemplate());
        reportParameters.put("moduleSubItemCode", ansHead.getModuleSubItemCode());

        AttachmentDataSource dataStream = getQuestionnairePrintingService().printQuestionnaireAnswer(awardForm.getAwardDocument().getAward(), reportParameters);
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
