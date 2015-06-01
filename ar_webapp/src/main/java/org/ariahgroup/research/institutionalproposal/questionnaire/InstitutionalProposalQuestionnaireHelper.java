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
package org.ariahgroup.research.institutionalproposal.questionnaire;

import java.util.ArrayList;
import java.util.List;
import org.ariahgroup.research.institutionalproposal.auth.InstitutionalProposalTask;
import org.kuali.kra.bo.CoeusModule;
import org.kuali.kra.infrastructure.TaskName;
import org.kuali.kra.institutionalproposal.document.InstitutionalProposalDocument;
import org.kuali.kra.institutionalproposal.home.InstitutionalProposal;
import org.kuali.kra.institutionalproposal.web.struts.form.InstitutionalProposalForm;
import org.kuali.kra.questionnaire.answer.AnswerHeader;
import org.kuali.kra.questionnaire.answer.ModuleQuestionnaireBean;

/**
 * This is Helper class for institutional proposal questionnaire.
 *
 * @author The Ariah Group, Inc.
 */
public class InstitutionalProposalQuestionnaireHelper extends org.kuali.kra.questionnaire.QuestionnaireHelperBase {

    private static final long serialVersionUID = -6998778375503716988L;

    /**
     * Each Helper must contain a reference to its document form so that it can
     * access the actual document.
     */
    private InstitutionalProposalForm form;
    private String instProposalNumber;
    private List<AnswerHeader> printAnswerHeaders;
    private List<String> printHeaderLabels;

    /**
     *
     * Constructs an InstitutionalProposalQuestionnaireHelper.java. To hook up
     * with InstitutionalProposal form.
     *
     * @param form
     */
    public InstitutionalProposalQuestionnaireHelper(InstitutionalProposalForm form) {
        this.form = form;
    }

    /**
     *
     * This method is to set up things for questionnaire page to be displayed.
     */
    public void prepareView() {
        initializePermissions(getInstitutionalProposal());
    }

    /*
     * authorization check.
     */
    private void initializePermissions(InstitutionalProposal instProp) {
        InstitutionalProposalTask task = getModifyQnnrTaskHook(instProp);
        setAnswerQuestionnaire(getTaskAuthorizationService().isAuthorized(getUserIdentifier(), task));
    }

    /*
     * authorization check.
     */
    protected InstitutionalProposalTask getModifyQnnrTaskHook(InstitutionalProposal instProp) {
        return new InstitutionalProposalTask(TaskName.MODIFY_INSTPROP_QUESTIONNAIRE, (InstitutionalProposal) instProp);
    }

    /**
     *
     * @return
     */
    @Override
    public String getModuleCode() {
        return CoeusModule.INSTITUTIONAL_PROPOSAL_MODULE_CODE;
    }

    /**
     *
     * @return
     */
    @Override
    public ModuleQuestionnaireBean getModuleQnBean() {
        InstitutionalProposalModuleQuestionnaireBeanBase moduleQuestionnaireBean = getInstitutionalProposalModuleQuestionnaireBeanHook(getInstitutionalProposal());
        return moduleQuestionnaireBean;
    }

    /**
     *
     * @param instProp
     * @return
     */
    protected InstitutionalProposalModuleQuestionnaireBeanBase getInstitutionalProposalModuleQuestionnaireBeanHook(InstitutionalProposal instProp) {
        return new InstitutionalProposalModuleQuestionnaireBeanBase((InstitutionalProposal) instProp);
    }

    /**
     *
     */
    @Override
    public void populateAnswers() {
        super.populateAnswers();
        setQuestionnaireActiveStatuses();
    }

    /**
     *
     * @param answerHeaderIndex
     */
    @Override
    public void updateQuestionnaireAnswer(int answerHeaderIndex) {
        super.updateQuestionnaireAnswer(answerHeaderIndex);
    }

    /**
     *
     * @return
     */
    private InstitutionalProposal getInstitutionalProposal() {
        InstitutionalProposalDocument document = form.getInstitutionalProposalDocument();
        if (document == null || document.getInstitutionalProposal() == null) {
            throw new IllegalArgumentException("invalid (null) InstitutionalProposalDocument in InstitutionalProposalForm");
        }
        return document.getInstitutionalProposal();
    }

    /**
     *
     * @return
     */
    public String getInstPropNumber() {
        return instProposalNumber;
    }

    /**
     *
     * @param instProposalNumber
     */
    public void setInstProposalNumber(String instProposalNumber) {
        this.instProposalNumber = instProposalNumber;
    }

    /**
     *
     * @return
     */
    public List<AnswerHeader> getPrintAnswerHeaders() {
        return printAnswerHeaders;
    }

    /**
     *
     * @param printAnswerHeaders
     */
    public void setPrintAnswerHeaders(List<AnswerHeader> printAnswerHeaders) {
        this.printAnswerHeaders = printAnswerHeaders;
    }

    /**
     *
     * @return
     */
    public List<String> getPrintHeaderLabels() {
        return printHeaderLabels;
    }

    /**
     *
     * @param printHeaderLabels
     */
    public void setPrintHeaderLabels(List<String> printHeaderLabels) {
        this.printHeaderLabels = printHeaderLabels;
    }

    /**
     * set up the tab labels for each questionnaire
     */
    public void resetPrintHeaderLabels() {
        List<String> labels = new ArrayList<String>();
        for (AnswerHeader printAnswerHeader : printAnswerHeaders) {
            labels.add(getQuestionnaireLabel(printAnswerHeader.getQuestionnaire().getQuestionnaireUsages(), printAnswerHeader.getModuleSubItemCode()));
        }
        setPrintHeaderLabels(labels);
    }

    /**
     *
     * With this method, get/setup questionnaire answers for Questionnaire when
     * Questionnaire page is clicked.
     */
    public void populatePrintAnswers() {

        setPrintAnswerHeaders(getQuestionnaireAnswerService().getQuestionnaireAnswer(getModuleQnBean()));
        resetPrintHeaderLabels();

        setPrintQuestionnaireActiveStatuses();
    }

    /**
     * This method loops through the current list of answer headers, checking if
     * the questionnaire for each is still active and sets the status for each
     * answer header accordingly.
     */
    public void setPrintQuestionnaireActiveStatuses() {
        for (AnswerHeader printAnswerHeader : printAnswerHeaders) {
            if (isQuestionnaireActive(printAnswerHeader)) {
                printAnswerHeader.setActiveQuestionnaire(true);
            } else {
                printAnswerHeader.setActiveQuestionnaire(false);
            }
        }
    }

    /**
     *
     * @param answerHeader
     * @return
     */
    @Override
    public boolean isQuestionnaireActive(AnswerHeader answerHeader) {
        Integer questionnaireId = answerHeader.getQuestionnaire().getQuestionnaireIdAsInteger();
        String coeusModuleCode = answerHeader.getModuleItemCode();
        String coeusSubModuleCode = answerHeader.getModuleSubItemCode();

        return getQuestionnaireAnswerService().checkIfQuestionnaireIsActiveForModule(questionnaireId, coeusModuleCode, coeusSubModuleCode);
    }

}
