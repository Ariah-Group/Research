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
package org.ariahgroup.research.award.questionnaire;

import java.util.ArrayList;
import java.util.List;
import org.kuali.kra.award.AwardForm;
import org.kuali.kra.award.document.AwardDocument;
import org.kuali.kra.award.document.authorization.AwardTask;
import org.kuali.kra.award.home.Award;
import org.kuali.kra.bo.CoeusModule;
import org.kuali.kra.infrastructure.TaskName;
import org.kuali.kra.questionnaire.answer.AnswerHeader;
import org.kuali.kra.questionnaire.answer.ModuleQuestionnaireBean;

/**
 * This is Helper class for award questionnaire.
 * 
 * @author The Ariah Group, Inc.
 */
public class AwardQuestionnaireHelper extends org.kuali.kra.questionnaire.QuestionnaireHelperBase {

    private static final long serialVersionUID = -6998778375503716988L;

    /**
     * Each Helper must contain a reference to its document form so that it can
     * access the actual document.
     */
    private AwardForm form;
    private String awardNumber;
    private List<AnswerHeader> printAnswerHeaders;
    private List<String> printHeaderLabels;

    /**
     *
     * Constructs an AwardQuestionnaireHelper.java. To hook up with award form.
     *
     * @param form
     */
    public AwardQuestionnaireHelper(AwardForm form) {
        this.form = form;
    }

    /**
     *
     * This method is to set up things for questionnaire page to be displayed.
     */
    public void prepareView() {
        initializePermissions(getAward());
    }

    /*
     * authorization check.
     */
    private void initializePermissions(Award award) {
        AwardTask task = getModifyQnnrTaskHook(award);
        setAnswerQuestionnaire(getTaskAuthorizationService().isAuthorized(getUserIdentifier(), task));
    }

    /*
     * authorization check.
     */
    protected AwardTask getModifyQnnrTaskHook(Award award) {
        return new AwardTask(TaskName.MODIFY_AWARD_QUESTIONNAIRE, (Award) award);
    }

    @Override
    public String getModuleCode() {
        return CoeusModule.AWARD_MODULE_CODE;
    }

    @Override
    public ModuleQuestionnaireBean getModuleQnBean() {
        AwardModuleQuestionnaireBeanBase moduleQuestionnaireBean = getAwardModuleQuestionnaireBeanHook(getAward());
        return moduleQuestionnaireBean;

    }

    protected AwardModuleQuestionnaireBeanBase getAwardModuleQuestionnaireBeanHook(Award award) {
        return new AwardModuleQuestionnaireBeanBase((Award) award);
    }

    @Override
    public void populateAnswers() {
        super.populateAnswers();
        setQuestionnaireActiveStatuses();
    }

    @Override
    public void updateQuestionnaireAnswer(int answerHeaderIndex) {
        super.updateQuestionnaireAnswer(answerHeaderIndex);
    }

    private Award getAward() {
        AwardDocument document = form.getAwardDocument();
        if (document == null || document.getAward() == null) {
            throw new IllegalArgumentException("invalid (null) AwardDocument in AwardForm");
        }
        return document.getAward();
    }

    public String getAwardNumber() {
        return awardNumber;
    }

    public void setAwardNumber(String awardNumber) {
        this.awardNumber = awardNumber;
    }

    public List<AnswerHeader> getPrintAnswerHeaders() {
        return printAnswerHeaders;
    }

    public void setPrintAnswerHeaders(List<AnswerHeader> printAnswerHeaders) {
        this.printAnswerHeaders = printAnswerHeaders;
    }

    public List<String> getPrintHeaderLabels() {
        return printHeaderLabels;
    }

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
     * With this method, get/setup questionnaire answers for Questionnaire when Questionnaire page is clicked.
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
    
    
    @Override
    public boolean isQuestionnaireActive(AnswerHeader answerHeader) {        
        Integer questionnaireId = answerHeader.getQuestionnaire().getQuestionnaireIdAsInteger();
        String coeusModuleCode = answerHeader.getModuleItemCode();
        String coeusSubModuleCode = answerHeader.getModuleSubItemCode(); 
        
        return getQuestionnaireAnswerService().checkIfQuestionnaireIsActiveForModule(questionnaireId, coeusModuleCode, coeusSubModuleCode);
    }    

}
