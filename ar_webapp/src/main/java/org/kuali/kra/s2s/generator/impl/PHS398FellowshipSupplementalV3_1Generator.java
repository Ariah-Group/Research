/*
 * Copyright 2005-2014 The Kuali Foundation.
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.s2s.generator.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.xmlbeans.XmlObject;
import org.kuali.kra.bo.SpecialReviewType;
import org.kuali.kra.budget.BudgetDecimal;
import org.kuali.kra.budget.calculator.QueryList;
import org.kuali.kra.budget.document.BudgetDocument;
import org.kuali.kra.budget.nonpersonnel.BudgetLineItem;
import org.kuali.kra.budget.parameters.BudgetPeriod;
import org.kuali.kra.infrastructure.CitizenshipTypes;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.kra.proposaldevelopment.bo.Narrative;
import org.kuali.kra.proposaldevelopment.bo.ProposalPerson;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.proposaldevelopment.service.ProposalDevelopmentS2sQuestionnaireService;
import org.kuali.kra.proposaldevelopment.specialreview.ProposalSpecialReview;
import org.kuali.kra.questionnaire.Questionnaire;
import org.kuali.kra.questionnaire.QuestionnaireQuestion;
import org.kuali.kra.questionnaire.answer.Answer;
import org.kuali.kra.questionnaire.answer.AnswerHeader;
import org.kuali.kra.questionnaire.question.Question;
import org.kuali.kra.s2s.S2SException;
import org.kuali.kra.s2s.util.S2SConstants;

import gov.grants.apply.forms.phsFellowshipSupplemental31V31.DegreeTypeDataType;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.FieldOfTrainingDataType;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.NonUSCitizenDataType;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.AdditionalInformation;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.AdditionalInformation.ConcurrentSupportDescription;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.AdditionalInformation.CurrentPriorNRSASupport;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.AdditionalInformation.GraduateDegreeSought;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.AdditionalInformation.StemCells;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.Budget;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.Budget.FederalStipendRequested;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.Budget.InstitutionalBaseSalary;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.Budget.InstitutionalBaseSalary.AcademicPeriod;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.Budget.SupplementationFromOtherSources;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.FellowshipApplicant;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.FellowshipApplicant.BackgroundandGoals;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.InstitutionalEnvironment;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.InstitutionalEnvironment.InstitutionalEnvironmentCommitmenttoTraining;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.Introduction;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.Introduction.IntroductionToApplication;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.OtherResearchTrainingPlan;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.OtherResearchTrainingPlan.DataSafetyMonitoringPlan;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.OtherResearchTrainingPlan.InclusionOfChildren;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.OtherResearchTrainingPlan.InclusionOfWomenAndMinorities;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.OtherResearchTrainingPlan.KeyBiologicalAndOrChemicalResources;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.OtherResearchTrainingPlan.ProtectionOfHumanSubjects;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.OtherResearchTrainingPlan.ResourceSharingPlan;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.OtherResearchTrainingPlan.SelectAgentResearch;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.OtherResearchTrainingPlan.VertebrateAnimals;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.ResearchTrainingPlan;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.ResearchTrainingPlan.ProgressReportPublicationList;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.ResearchTrainingPlan.ResearchStrategy;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.ResearchTrainingPlan.RespectiveContribution;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.ResearchTrainingPlan.SpecificAims;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.ResearchTrainingPlan.SponsorandInstitution;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.ResearchTrainingPlan.TrainingInResponsibleConductOfResearch;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.Sponsors;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.Sponsors.LettersOfSupport;
import gov.grants.apply.forms.phsFellowshipSupplemental31V31.PHSFellowshipSupplemental31Document.PHSFellowshipSupplemental31.Sponsors.SponsorAndCoSponsorStatements;
import gov.grants.apply.system.attachmentsV10.AttachedFileDataType;
import gov.grants.apply.system.attachmentsV10.AttachmentGroupMin0Max100DataType;
import gov.grants.apply.system.globalLibraryV20.YesNoDataType;
import gov.grants.apply.system.globalLibraryV20.YesNoDataType.Enum;

/**
 *
 * Class for generating the XML object for grants.gov
 * PHS_Fellowship_Supplemental_3_1 Form is generated using XMLBean classes
 * and is based on PHS_Fellowship_Supplemental_3_1 schema
 *
 */
public class PHS398FellowshipSupplementalV3_1Generator extends PHS398FellowshipSupplementalBaseGenerator {

    private static final Log LOG = LogFactory.getLog(PHS398FellowshipSupplementalV3_1Generator.class);

    private static final String FORM_NAME = "PHS_Fellowship_Supplemental_3_1";
    private static final String NAME_SPACE = "http://apply.grants.gov/forms/PHS_Fellowship_Supplemental_3_1-V3.1";

    private static final int QID_HUMAN_USE_INDEFINITE = 1;
    private static final int QID_HUMAN_USE = 10001;
    private static final int QID_VERTEBRATE_USE = 10002;
    private static final int QID_VERT_INDEFINITE = 4;
    private static final int QID_VERT_EUTHANIZED = 102004;
    private static final int QID_VERT_EUTHANIZED_AVMA = 102003;
    private static final int QID_VERT_EUTHANIZED_METHOD = 102002;
    private static final int QID_CLINICAL = 2;
    private static final int QID_PHASE3CLINICAL = 3;
    private static final int QID_STEMCELLS = 5;
    private static final int QID_KIRST_START_KNOWN = 43;
    private static final int QID_KIRST_END_KNOWN = 49;
    private static final int QID_KIRST_START_DT = 44;
    private static final int QID_KIRST_END_DT = 45;
    private static final int QID_KIRST_GRANT_KNOWN = 46;
    private static final int QID_KIRST_GRANT_NUM = 27;
    private static final int QID_PRE_OR_POST = 32;
    private static final int QID_IND_OR_INST = 33;
    private static final int QID_STEMCELLLINES = 7;
    private static final int QID_CELLLINEIND = 6;
    private static final int QID_DEGREE_TYPE_SOUGHT = 99;
    private static final int QID_DEG_EXP_COMP_DATE = 35;
    private static final int QID_NRSA_SUPPORT = 24;
    private static final int QID_FIELD_TRAINING = 102005;
    private static final int QID_SUBMITTED_DIFF_INST = 28;
    private static final int QID_SENIOR_FELL = 36;
    private static final int QID_OTHER_SUPP_SOURCE = 37;
    private static final int QID_SUPP_FUNDING_AMT = 38;
    private static final int QID_SUPP_MONTHS = 51;
    private static final int QID_SUPP_SOURCE = 41;
    private static final int QID_SUPP_TYPE = 40;
    private static final int QID_BASE_SALARY = 47;
    private static final int QID_ACAD_PERIOD = 48;
    private static final int QID_SALARY_MONTHS = 50;
    private static final int QID_FORMER_INSTITUTION = 29;

    private static final int APPENDIX = 96;
    private static final int SPONSOR_COSPONSOR = 134;

    /**
     * This method is used to get PHSFellowshipSupplemental31 XMLObject and set
     * the data to it from DevelopmentProposal data.
     */
    private PHSFellowshipSupplemental31Document getPHSFellowshipSupplemental31() {
        PHSFellowshipSupplemental31Document phsFellowshipSupplementalDocument = PHSFellowshipSupplemental31Document.Factory.newInstance();
        PHSFellowshipSupplemental31 phsFellowshipSupplemental = phsFellowshipSupplementalDocument.addNewPHSFellowshipSupplemental31();
        phsFellowshipSupplemental.setFormVersion(S2SConstants.FORMVERSION_3_1);

        phsFellowshipSupplemental.setAppendix(getAppendix());
        setQuestionnaireData(phsFellowshipSupplemental);
        return phsFellowshipSupplementalDocument;
    }

    /**
     *
     * @param questionnaireQuestion
     * @param answerHeader
     * @return
     */
    private List<Answer> getAnswers(QuestionnaireQuestion questionnaireQuestion, AnswerHeader answerHeader) {
        List<Answer> returnAnswers = new ArrayList<Answer>();
        if (answerHeader != null) {
            List<Answer> answers = answerHeader.getAnswers();
            for (Answer answer : answers) {
                if (answer.getQuestionnaireQuestionsIdFk().equals(questionnaireQuestion.getQuestionnaireQuestionsId())) {
                    returnAnswers.add(answer);
                }
            }
        }
        return returnAnswers;
    }

    private void setQuestionnaireData(PHSFellowshipSupplemental31 phsFellowshipSupplemental) {

        LOG.info("PHS398Fellowship: setQuestionnaireData 1");

        Map<Integer, String> hmBudgetQuestions = new HashMap<Integer, String>();
        List<AnswerHeader> answers = findQuestionnaireWithAnswers(pdDoc.getDevelopmentProposal());
        ResearchTrainingPlan researchTrainingPlan = phsFellowshipSupplemental.addNewResearchTrainingPlan();
        OtherResearchTrainingPlan otherResearchTrainingPlan = phsFellowshipSupplemental.addNewOtherResearchTrainingPlan();

        setHumanSubjectInvolved(otherResearchTrainingPlan);

        setNarrativeDataForResearchTrainingPlan(phsFellowshipSupplemental, researchTrainingPlan, otherResearchTrainingPlan);

        AdditionalInformation additionalInfoType = phsFellowshipSupplemental.addNewAdditionalInformation();

        GraduateDegreeSought graduateDegreeSought = GraduateDegreeSought.Factory.newInstance();

        LOG.info("PHS398Fellowship: setQuestionnaireData 2");
        StemCells stemCellstype = StemCells.Factory.newInstance();

        QueryList<KirschsteinBean> cvKirsch = new QueryList<KirschsteinBean>();
        
        LOG.info("PHS398Fellowship: setQuestionnaireData 3");
        for (AnswerHeader answerHeader : answers) {
            Questionnaire questionnaire = answerHeader.getQuestionnaire();
            List<QuestionnaireQuestion> questionnaireQuestions = questionnaire.getQuestionnaireQuestions();
            for (QuestionnaireQuestion questionnaireQuestion : questionnaireQuestions) {
                Answer answerBO = getAnswer(questionnaireQuestion, answerHeader);
                if (answerBO == null) {
                    LOG.info("PHS398Fellowship: questionnaireQuestion " + questionnaireQuestion + " has no entry in answer table");
                    continue;
                }

                String answer = answerBO.getAnswer();
                Question question = questionnaireQuestion.getQuestion();
                Integer questionNumber = questionnaireQuestion.getQuestionNumber();
                Integer parentQuestionNumber = questionnaireQuestion.getParentQuestionNumber();
                Integer questionId = question.getQuestionIdAsInteger();

                LOG.error("PHS398Fellowship: questionId " + questionId + " answer: " + answer);

                if (answer != null) {

                    switch (questionId) {
                        case QID_HUMAN_USE:
                            otherResearchTrainingPlan.setHumanSubjectsInvolved(getYesNoEnum(answer));
                            break;

                        case QID_HUMAN_USE_INDEFINITE:
                            otherResearchTrainingPlan.setHumanSubjectsIndefinite(getYesNoEnum(answer));
                            break;

                        case QID_VERTEBRATE_USE:
                            otherResearchTrainingPlan.setVertebrateAnimalsUsed(getYesNoEnum(answer));
                            break;

                        case QID_VERT_INDEFINITE:
                            // will the inclusion of vertebrate animals use be indefinite
                            otherResearchTrainingPlan.setVertebrateAnimalsIndefinite(getYesNoEnum(answer));
                            break;

                        case QID_VERT_EUTHANIZED:
                            // gonna kill `em?
                            otherResearchTrainingPlan.setAreAnimalsEuthanized(getYesNoEnum(answer));
                            break;

                        case QID_VERT_EUTHANIZED_AVMA:
                            // AVMA approved killing?
                            otherResearchTrainingPlan.setAVMAConsistentIndicator(getYesNoEnum(answer));
                            break;

                        case QID_VERT_EUTHANIZED_METHOD:
                            // How are you gonna kill `em?
                            otherResearchTrainingPlan.setEuthanasiaMethodDescription(answer);
                            break;

                        case QID_CLINICAL:
                            // clinical trial
                            otherResearchTrainingPlan.setClinicalTrial(getYesNoEnum(answer));
                            break;

                        case QID_PHASE3CLINICAL:
                            // phase 3 clinical trial
                            otherResearchTrainingPlan.setPhase3ClinicalTrial(getYesNoEnum(answer));
                            break;

                        case QID_STEMCELLS:
                            // stem cells used
                            LOG.info("PHS398Fellowship: QID_STEMCELLS");
                            stemCellstype.setIsHumanStemCellsInvolved(getYesNoEnum(answer));
                            break;

                        case QID_CELLLINEIND:
                            // stem cell line indicator
                            LOG.info("PHS398Fellowship: QID_CELLLINEIND");
                            stemCellstype.setStemCellsIndicator(getYesNoEnum(answer));
                            break;

                        case QID_STEMCELLLINES:
                            List<Answer> answerList = getAnswers(questionnaireQuestion, answerHeader);
                            for (Answer questionnaireAnswerBO : answerList) {
                                String questionnaireSubAnswer = questionnaireAnswerBO.getAnswer();
                                if (questionnaireSubAnswer != null) {
                                    stemCellstype.addCellLines(questionnaireAnswerBO.getAnswer());
                                }
                            }
                            break;

                        case QID_DEGREE_TYPE_SOUGHT:
                            graduateDegreeSought.setDegreeType(DegreeTypeDataType.Enum.forString(answer));
                            break;

                        case QID_DEG_EXP_COMP_DATE:
                            graduateDegreeSought.setDegreeDate(answer.substring(6, 10) + STRING_SEPRATOR + answer.substring(0, 2));
                            break;

                        case QID_FIELD_TRAINING:
                            if (!answer.toUpperCase().equals("SUB CATEGORY NOT FOUND")) {
                                
                                LOG.error("QID_FIELD_TRAINING answer 1: " + answer);
                                LOG.error("QID_FIELD_TRAINING answer 2: " + FieldOfTrainingDataType.Enum.forString(answer));
                                
                                additionalInfoType.setFieldOfTraining(FieldOfTrainingDataType.Enum.forString(answer));
                            }
                            break;

                        case QID_NRSA_SUPPORT:
                            additionalInfoType.setCurrentPriorNRSASupportIndicator(getYesNoEnum(answer));
                            break;

                        case QID_KIRST_START_KNOWN:
                        case QID_KIRST_END_KNOWN:
                        case QID_KIRST_START_DT:
                        case QID_KIRST_END_DT:
                        case QID_KIRST_GRANT_KNOWN:
                        case QID_KIRST_GRANT_NUM:
                        case QID_PRE_OR_POST:
                        case QID_IND_OR_INST:
                            if (questionId == QID_KIRST_START_KNOWN) {
                                if (answer.equals("N")) {
                                    answer = S2SConstants.VALUE_UNKNOWN;
                                    questionId = QID_KIRST_START_DT;
                                } else {
                                    break;
                                }
                            }
                            if (questionId == QID_KIRST_END_KNOWN) {
                                if (answer.equals("N")) {
                                    answer = S2SConstants.VALUE_UNKNOWN;
                                    questionId = QID_KIRST_END_DT;
                                } else {
                                    break;
                                }
                            }
                            if (questionId == QID_KIRST_GRANT_KNOWN) {
                                if (answer.equals("N")) {
                                    answer = S2SConstants.VALUE_UNKNOWN;
                                    questionId = QID_KIRST_GRANT_NUM;
                                } else {
                                    break;
                                }
                            }
                            KirschsteinBean cbKirschstein = new KirschsteinBean();
                            cbKirschstein.setAnswer(answer);
                            cbKirschstein.setQuestionId(questionId);
                            cbKirschstein.setQuestionNumber(questionNumber);
                            cbKirschstein.setParentQuestionNumber(parentQuestionNumber);
                            cvKirsch.add(cbKirschstein);
                            break;

                        case QID_SUBMITTED_DIFF_INST:
                            additionalInfoType.setChangeOfInstitution(getYesNoEnum(answer));
                            break;

                        case QID_FORMER_INSTITUTION:
                            additionalInfoType.setFormerInstitution(answer);
                            break;

                        case QID_SENIOR_FELL:
                            hmBudgetQuestions.put(QID_SENIOR_FELL, answer);
                            break;

                        case QID_OTHER_SUPP_SOURCE:
                            hmBudgetQuestions.put(QID_OTHER_SUPP_SOURCE, answer);
                            break;

                        case QID_SUPP_SOURCE:
                            hmBudgetQuestions.put(QID_SUPP_SOURCE, answer);
                            break;

                        case QID_SUPP_FUNDING_AMT:
                            hmBudgetQuestions.put(QID_SUPP_FUNDING_AMT, answer);
                            break;

                        case QID_SUPP_MONTHS:
                            hmBudgetQuestions.put(QID_SUPP_MONTHS, answer);
                            break;

                        case QID_SUPP_TYPE:
                            hmBudgetQuestions.put(QID_SUPP_TYPE, answer);
                            break;

                        case QID_SALARY_MONTHS:
                            hmBudgetQuestions.put(QID_SALARY_MONTHS, answer);
                            break;

                        case QID_ACAD_PERIOD:
                            hmBudgetQuestions.put(QID_ACAD_PERIOD, answer);
                            break;

                        case QID_BASE_SALARY:
                            hmBudgetQuestions.put(QID_BASE_SALARY, answer);
                            break;

                        default:
                            LOG.warn("PHS398Fellowship 3.1: unhandled question ID " + questionId);
                            break;

                    }
                } else {
                    LOG.debug("PHS398Fellowship 3.1:  NULL answer to question ID " + questionId);
                }
            }
        }

        if (graduateDegreeSought.getDegreeType() != null) {
            additionalInfoType.setGraduateDegreeSought(graduateDegreeSought);
        }

        // Kirschsten NRSA 
        handleKirschsteinNRSASupport(additionalInfoType, cvKirsch);

        // Check AVMA, set method to blank if AVMA method is true
        if (otherResearchTrainingPlan.getAVMAConsistentIndicator() != null && otherResearchTrainingPlan.getAVMAConsistentIndicator().equals(YesNoDataType.Y_YES)) {
            otherResearchTrainingPlan.setEuthanasiaMethodDescription("");
        }

        // Budget
        phsFellowshipSupplemental.setBudget(getBudget(hmBudgetQuestions));

        // Stem cell data
        additionalInfoType.setStemCells(stemCellstype);

        // Citizenship
        setCitizenship(additionalInfoType);
    }

    /**
     * Kirschstein NRSA Support
     *
     * @param additionalInfoType
     * @param cvKirsch
     */
    private void handleKirschsteinNRSASupport(AdditionalInformation additionalInfoType, QueryList<KirschsteinBean> cvKirsch) {

        QueryList<KirschsteinBean> cvType = new QueryList<KirschsteinBean>();
        QueryList<KirschsteinBean> cvStart = new QueryList<KirschsteinBean>();
        QueryList<KirschsteinBean> cvEnd = new QueryList<KirschsteinBean>();
        QueryList<KirschsteinBean> cvLevel = new QueryList<KirschsteinBean>();
        QueryList<KirschsteinBean> cvGrant = new QueryList<KirschsteinBean>();

        KirschsteinBean kbBean1 = new KirschsteinBean();
        KirschsteinBean kbBean2 = new KirschsteinBean();
        KirschsteinBean kbBean3 = new KirschsteinBean();
        KirschsteinBean kbBean4 = new KirschsteinBean();
        KirschsteinBean kbBean5 = new KirschsteinBean();

        if (additionalInfoType.getCurrentPriorNRSASupportIndicator() != null) {
            if (additionalInfoType.getCurrentPriorNRSASupportIndicator().equals(YesNoDataType.Y_YES)) {
                KirschsteinBean kbBean = new KirschsteinBean();
                cvKirsch.sort("questionNumber");
                for (int i = 0; i < cvKirsch.size(); i++) {
                    kbBean = (KirschsteinBean) cvKirsch.get(i);
                    switch (kbBean.getQuestionId()) {
                        case QID_PRE_OR_POST:
                            cvLevel.add(kbBean);
                            break;
                        case QID_IND_OR_INST:
                            cvType.add(kbBean);
                            break;
                        case QID_KIRST_START_DT:
                            cvStart.add(kbBean);
                            break;
                        case QID_KIRST_END_DT:
                            cvEnd.add(kbBean);
                            break;
                        case QID_KIRST_GRANT_NUM:
                            cvGrant.add(kbBean);
                            break;
                    }

                }
            }
            List<CurrentPriorNRSASupport> currentPriorNRSASupportList = new ArrayList<CurrentPriorNRSASupport>();
            int numberRepeats = cvLevel.size();
            if (numberRepeats > 0) {
                for (int j = 0; j < numberRepeats; j++) {
                    kbBean1 = (KirschsteinBean) cvLevel.get(j);
                    kbBean2 = (KirschsteinBean) cvType.get(j);
                    kbBean3 = (KirschsteinBean) cvStart.get(j);
                    kbBean4 = (KirschsteinBean) cvEnd.get(j);
                    kbBean5 = (KirschsteinBean) cvGrant.get(j);
                    CurrentPriorNRSASupport nrsaSupportType = CurrentPriorNRSASupport.Factory.newInstance();
                    nrsaSupportType.setLevel(CurrentPriorNRSASupport.Level.Enum.forString(kbBean1.getAnswer()));
                    nrsaSupportType.setType(CurrentPriorNRSASupport.Type.Enum.forString(kbBean2.getAnswer()));
                    if (!kbBean3.getAnswer().equals(S2SConstants.VALUE_UNKNOWN)) {
                        nrsaSupportType.setStartDate(s2sUtilService.convertDateStringToCalendar(kbBean3.getAnswer()));
                    }
                    if (!kbBean4.getAnswer().equals(S2SConstants.VALUE_UNKNOWN)) {
                        nrsaSupportType.setEndDate(s2sUtilService.convertDateStringToCalendar(kbBean4.getAnswer()));
                    }
                    nrsaSupportType.setGrantNumber(kbBean5.getAnswer());
                    currentPriorNRSASupportList.add(nrsaSupportType);
                }
            }
            additionalInfoType.setCurrentPriorNRSASupportArray(currentPriorNRSASupportList.toArray(new CurrentPriorNRSASupport[0]));
        }
    }

    /**
     * This method is to return YesNoDataType enum
     *
     * @param answer
     * @return
     */
    private Enum getYesNoEnum(String answer) {
        return answer.equals("Y") ? YesNoDataType.Y_YES : YesNoDataType.N_NO;
    }

    /**
     * This method is used to get Budget XMLObject and set the data to it from
     * ProposalYnq based on questionId and answers.
     */
    private Budget getBudget(Map<Integer, String> budgetMap) {
        Budget budget = Budget.Factory.newInstance();
        budget.setTuitionAndFeesRequested(YesNoDataType.N_NO);
        getInstitutionalBaseSalary(budget, budgetMap);
        getFederalStipendRequested(budget);
        getSupplementationFromOtherSources(budget, budgetMap);
        setTuitionRequestedYears(budget);
        return budget;
    }

    /**
     * This method is used to get TuitionRequestedYears data to Budget XMLObject
     * from List of BudgetLineItem based on CostElement value of
     * TUITION_COST_ELEMENTS
     */
    private void setTuitionRequestedYears(Budget budget) {
        @SuppressWarnings("rawtypes")
        BudgetDocument budgetDoc = getBudgetDocument();
        if (budgetDoc == null) {
            return;
        }
        BudgetDecimal tuitionTotal = BudgetDecimal.ZERO;
        for (BudgetPeriod budgetPeriod : budgetDoc.getBudget().getBudgetPeriods()) {
            BudgetDecimal tuition = BudgetDecimal.ZERO;
            for (BudgetLineItem budgetLineItem : budgetPeriod.getBudgetLineItems()) {
                if (getCostElementsByParam(TUITION_COST_ELEMENTS).contains(budgetLineItem.getCostElementBO().getCostElement())) {
                    tuition = tuition.add(budgetLineItem.getLineItemCost());
                }
            }
            tuitionTotal = tuitionTotal.add(tuition);
            switch (budgetPeriod.getBudgetPeriod()) {
                case 1:
                    budget.setTuitionRequestedYear1(tuition.bigDecimalValue());
                    break;
                case 2:
                    budget.setTuitionRequestedYear2(tuition.bigDecimalValue());
                    break;
                case 3:
                    budget.setTuitionRequestedYear3(tuition.bigDecimalValue());
                    break;
                case 4:
                    budget.setTuitionRequestedYear4(tuition.bigDecimalValue());
                    break;
                case 5:
                    budget.setTuitionRequestedYear5(tuition.bigDecimalValue());
                    break;
                case 6:
                    budget.setTuitionRequestedYear6(tuition.bigDecimalValue());
                    break;
                default:
                    break;
            }
        }
        budget.setTuitionRequestedTotal(tuitionTotal.bigDecimalValue());
        if (!tuitionTotal.equals(BudgetDecimal.ZERO)) {
            budget.setTuitionAndFeesRequested(YesNoDataType.Y_YES);
        }
    }

    /**
     * This method is used to set data to SupplementationFromOtherSources
     * XMLObject from budgetMap data for Budget
     */
    private void getSupplementationFromOtherSources(Budget budget, Map<Integer, String> hmBudgetQuestions) {

        if (!hmBudgetQuestions.isEmpty()) {
            if (hmBudgetQuestions.get(QID_OTHER_SUPP_SOURCE) != null) {
                if (hmBudgetQuestions.get(QID_OTHER_SUPP_SOURCE).toUpperCase().equals("Y")) {
                    SupplementationFromOtherSources supplementationFromOtherSources = budget.addNewSupplementationFromOtherSources();
                    if (hmBudgetQuestions.get(QID_SUPP_SOURCE) != null) {
                        supplementationFromOtherSources.setSource(hmBudgetQuestions.get(QID_SUPP_SOURCE));
                        supplementationFromOtherSources.setAmount(new BigDecimal(hmBudgetQuestions.get(QID_SUPP_FUNDING_AMT)));
                        try {
                            supplementationFromOtherSources.setNumberOfMonths(new BigDecimal(hmBudgetQuestions.get(QID_SUPP_MONTHS)));
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                        supplementationFromOtherSources.setType(hmBudgetQuestions.get(QID_SUPP_TYPE));

                    }
                }
            }
        }
    }

    /**
     * This method is used to get FederalStipendRequested XMLObject and set
     * additional information data to it.
     */
    private void getFederalStipendRequested(Budget budget) {
        FederalStipendRequested federalStipendRequested = FederalStipendRequested.Factory.newInstance();
        @SuppressWarnings("rawtypes")
        BudgetDocument budgetDoc = getBudgetDocument();
        if (budgetDoc != null) {
            org.kuali.kra.budget.core.Budget pBudget = budgetDoc.getBudget();
            BudgetDecimal sumOfLineItemCost = BudgetDecimal.ZERO;
            BudgetDecimal numberOfMonths = BudgetDecimal.ZERO;
            for (BudgetPeriod budgetPeriod : pBudget.getBudgetPeriods()) {
                if (budgetPeriod.getBudgetPeriod() == 1) {
                    for (BudgetLineItem budgetLineItem : budgetPeriod.getBudgetLineItems()) {
                        if (getCostElementsByParam(STIPEND_COST_ELEMENTS).contains(
                                budgetLineItem.getCostElementBO().getCostElement())) {
                            sumOfLineItemCost = sumOfLineItemCost.add(budgetLineItem.getLineItemCost());
                            numberOfMonths = numberOfMonths.add(getNumberOfMonths(budgetLineItem.getStartDate(), budgetLineItem.getEndDate()));
                        }
                    }
                }
            }
            federalStipendRequested.setAmount(sumOfLineItemCost.bigDecimalValue());
            federalStipendRequested.setNumberOfMonths(numberOfMonths.bigDecimalValue());
            budget.setFederalStipendRequested(federalStipendRequested);

        }
    }

    /**
     * This method is used to get final version of BudgetDocument from
     * s2SBudgetCalculatorService using pdDoc
     */
    @SuppressWarnings("rawtypes")
    private BudgetDocument getBudgetDocument() {
        BudgetDocument budgetDoc = null;
        try {
            budgetDoc = s2SBudgetCalculatorService.getFinalBudgetVersion(pdDoc);
        } catch (S2SException e) {
            LOG.error("Error while getting Budget", e);
        }
        return budgetDoc;
    }

    /**
     * This method is used to set data to InstitutionalBaseSalary XMLObject from
     * budgetMap data for Budget
     */
    private void getInstitutionalBaseSalary(Budget budget, Map<Integer, String> budgetMap) {
        InstitutionalBaseSalary institutionalBaseSalary = InstitutionalBaseSalary.Factory.newInstance();
        if (budgetMap.get(QID_SENIOR_FELL) != null && budgetMap.get(QID_SENIOR_FELL).equals(S2SConstants.PROPOSAL_YNQ_ANSWER_Y)) {
            if (budgetMap.get(QID_BASE_SALARY) != null) {
                institutionalBaseSalary.setAmount(new BigDecimal(budgetMap.get(QID_BASE_SALARY)));
            }
            if (budgetMap.get(QID_ACAD_PERIOD) != null) {
                institutionalBaseSalary.setAcademicPeriod(AcademicPeriod.Enum.forString(budgetMap.get(QID_ACAD_PERIOD)));
            }
            if (budgetMap.get(QID_SALARY_MONTHS) != null) {
                institutionalBaseSalary.setNumberOfMonths(new BigDecimal(budgetMap.get(QID_SALARY_MONTHS)));
            }
            budget.setInstitutionalBaseSalary(institutionalBaseSalary);
        }
    }

    /**
     * This method is used to set Narrative Data to ResearchTrainingPlan
     * XMLObject based on NarrativeTypeCode.
     *
     * @param researchTrainingPlan
     */
    private void setNarrativeDataForResearchTrainingPlan(PHSFellowshipSupplemental31 phsFellowshipSupplemental,
            ResearchTrainingPlan researchTrainingPlan, OtherResearchTrainingPlan otherResearchTrainingPlan) {

        AttachedFileDataType attachedFileDataType = null;

        // generate empty required elements
        researchTrainingPlan.addNewSpecificAims();
        researchTrainingPlan.addNewResearchStrategy();
        researchTrainingPlan.addNewRespectiveContribution();
        researchTrainingPlan.addNewSponsorandInstitution();
        researchTrainingPlan.addNewTrainingInResponsibleConductOfResearch();

        Sponsors sponsors = phsFellowshipSupplemental.addNewSponsors();

        Introduction introduction = phsFellowshipSupplemental.addNewIntroduction();

        FellowshipApplicant fellowshipApplicant = phsFellowshipSupplemental.addNewFellowshipApplicant();
        fellowshipApplicant.addNewBackgroundandGoals();

        InstitutionalEnvironment institutionalEnvironment = phsFellowshipSupplemental.addNewInstitutionalEnvironment();

        LOG.error("setNarrativeDataForResearchTrainingPlan running on narratives....");

        for (Narrative narrative : pdDoc.getDevelopmentProposal().getNarratives()) {
            if (narrative.getNarrativeTypeCode() != null) {

                LOG.error("setNarrativeDataForResearchTrainingPlan : processing narrative type code = " + narrative.getNarrativeTypeCode());

                switch (Integer.parseInt(narrative.getNarrativeTypeCode())) {
                    case BACKGROUND_AND_GOALS_FOR_TRAINING:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }

                        BackgroundandGoals goals = BackgroundandGoals.Factory.newInstance();
                        goals.setAttFile(attachedFileDataType);
                        fellowshipApplicant.setBackgroundandGoals(goals);
                        break;

                    case LETTERS_SUPPORT:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        LettersOfSupport letters = LettersOfSupport.Factory.newInstance();
                        letters.setAttFile(attachedFileDataType);
                        sponsors.setLettersOfSupport(letters);
                        break;

                    case INST_ENVIRON_COMMITMENT_TRAINING:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        InstitutionalEnvironmentCommitmenttoTraining training = InstitutionalEnvironmentCommitmenttoTraining.Factory.newInstance();
                        training.setAttFile(attachedFileDataType);
                        institutionalEnvironment.setInstitutionalEnvironmentCommitmenttoTraining(training);
                        break;

                    case DATA_SAFETY_MONITORING_PLAN:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        DataSafetyMonitoringPlan plan = DataSafetyMonitoringPlan.Factory.newInstance();
                        plan.setAttFile(attachedFileDataType);
                        otherResearchTrainingPlan.setDataSafetyMonitoringPlan(plan);
                        break;

                    case KEY_BIO_AND_OR_CHEM_RESOURCES:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        KeyBiologicalAndOrChemicalResources resources = KeyBiologicalAndOrChemicalResources.Factory.newInstance();
                        resources.setAttFile(attachedFileDataType);
                        otherResearchTrainingPlan.setKeyBiologicalAndOrChemicalResources(resources);
                        break;

                    case INTRODUCTION_TO_APPLICATION:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        IntroductionToApplication introductionToApplication = IntroductionToApplication.Factory.newInstance();
                        introductionToApplication.setAttFile(attachedFileDataType);
                        introduction.setIntroductionToApplication(introductionToApplication);
                        break;

                    case SPECIFIC_AIMS:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        SpecificAims specificAims = SpecificAims.Factory.newInstance();
                        specificAims.setAttFile(attachedFileDataType);
                        researchTrainingPlan.setSpecificAims(specificAims);
                        break;

                    case RESEARCH_STRATEGY:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        ResearchStrategy researchStrategy = ResearchStrategy.Factory.newInstance();
                        researchStrategy.setAttFile(attachedFileDataType);
                        researchTrainingPlan.setResearchStrategy(researchStrategy);
                        break;

                    case PROGRESS_REPORT_PUBLICATION_LIST:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        ProgressReportPublicationList progressReportPublicationList = ProgressReportPublicationList.Factory.newInstance();
                        progressReportPublicationList.setAttFile(attachedFileDataType);
                        researchTrainingPlan.setProgressReportPublicationList(progressReportPublicationList);
                        break;

                    case PROTECTION_OF_HUMAN_SUBJECTS:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        ProtectionOfHumanSubjects protectionOfHumanSubjects = ProtectionOfHumanSubjects.Factory.newInstance();
                        protectionOfHumanSubjects.setAttFile(attachedFileDataType);
                        otherResearchTrainingPlan.setProtectionOfHumanSubjects(protectionOfHumanSubjects);
                        break;

                    case INCLUSION_OF_WOMEN_AND_MINORITIES:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        InclusionOfWomenAndMinorities inclusionOfWomenAndMinorities = InclusionOfWomenAndMinorities.Factory.newInstance();
                        inclusionOfWomenAndMinorities.setAttFile(attachedFileDataType);
                        otherResearchTrainingPlan.setInclusionOfWomenAndMinorities(inclusionOfWomenAndMinorities);
                        break;

                    case INCLUSION_OF_CHILDREN:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        InclusionOfChildren inclusionOfChildren = InclusionOfChildren.Factory.newInstance();
                        inclusionOfChildren.setAttFile(attachedFileDataType);
                        otherResearchTrainingPlan.setInclusionOfChildren(inclusionOfChildren);
                        break;

                    case VERTEBRATE_ANIMALS:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        VertebrateAnimals vertebrateAnimals = VertebrateAnimals.Factory.newInstance();
                        vertebrateAnimals.setAttFile(attachedFileDataType);
                        otherResearchTrainingPlan.setVertebrateAnimals(vertebrateAnimals);
                        break;

                    case SELECT_AGENT_RESEARCH:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        SelectAgentResearch selectAgentResearch = SelectAgentResearch.Factory.newInstance();
                        selectAgentResearch.setAttFile(attachedFileDataType);
                        otherResearchTrainingPlan.setSelectAgentResearch(selectAgentResearch);
                        break;

                    case RESOURCE_SHARING_PLANS:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        ResourceSharingPlan resourceSharingPlan = ResourceSharingPlan.Factory.newInstance();
                        resourceSharingPlan.setAttFile(attachedFileDataType);
                        otherResearchTrainingPlan.setResourceSharingPlan(resourceSharingPlan);
                        break;

                    case RESPECTIVE_CONTRIBUTIONS:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        RespectiveContribution respectiveContributions = RespectiveContribution.Factory.newInstance();
                        respectiveContributions.setAttFile(attachedFileDataType);
                        researchTrainingPlan.setRespectiveContribution(respectiveContributions);
                        break;

                    case SELECTION_OF_SPONSOR_AND_INSTITUTION:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        SponsorandInstitution selectionOfSponsorAndInstitution = SponsorandInstitution.Factory.newInstance();
                        selectionOfSponsorAndInstitution.setAttFile(attachedFileDataType);
                        researchTrainingPlan.setSponsorandInstitution(selectionOfSponsorAndInstitution);
                        break;

                    case RESPONSIBLE_CONDUCT_OF_RESEARCH:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        TrainingInResponsibleConductOfResearch responsibleConductOfResearch = TrainingInResponsibleConductOfResearch.Factory
                                .newInstance();
                        responsibleConductOfResearch.setAttFile(attachedFileDataType);
                        researchTrainingPlan.setTrainingInResponsibleConductOfResearch(responsibleConductOfResearch);
                        break;

                    case SPONSOR_COSPONSOR:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        SponsorAndCoSponsorStatements sponsorCosponsorInfo = sponsors.addNewSponsorAndCoSponsorStatements();
                        sponsorCosponsorInfo.setAttFile(attachedFileDataType);
                        sponsors.setSponsorAndCoSponsorStatements(sponsorCosponsorInfo);

                        break;

                    default:
                        break;
                }
            }
        }
    }

    /**
     * This method is used to set HumanSubjectInvoved
     *
     * @param developmentProposal
     * @param otherResearchTrainingPlan
     */
    private void setHumanSubjectInvolved(OtherResearchTrainingPlan otherResearchTrainingPlan) {

        // default to No
        otherResearchTrainingPlan.setHumanSubjectsInvolved(YesNoDataType.N_NO);

        for (ProposalSpecialReview propSpecialReview : pdDoc.getDevelopmentProposal().getPropSpecialReviews()) {
            if (propSpecialReview.getSpecialReviewTypeCode().equals(SpecialReviewType.HUMAN_SUBJECTS)) {
                otherResearchTrainingPlan.setHumanSubjectsInvolved(YesNoDataType.Y_YES);
            }
        }
    }

    private List<AnswerHeader> findQuestionnaireWithAnswers(DevelopmentProposal developmentProposal) {
        ProposalDevelopmentS2sQuestionnaireService questionnaireAnswerService = getProposalDevelopmentS2sQuestionnaireService();
        return questionnaireAnswerService.getProposalAnswerHeaderForForm(developmentProposal, NAME_SPACE, FORM_NAME);
    }

    private ProposalDevelopmentS2sQuestionnaireService getProposalDevelopmentS2sQuestionnaireService() {
        return KraServiceLocator.getService(ProposalDevelopmentS2sQuestionnaireService.class);
    }

    private Answer getAnswer(QuestionnaireQuestion questionnaireQuestion, AnswerHeader answerHeader) {
        List<Answer> answers = answerHeader.getAnswers();
        for (Answer answer : answers) {
            if (answer.getQuestionnaireQuestionsIdFk().equals(questionnaireQuestion.getQuestionnaireQuestionsId())) {
                return answer;
            }
        }
        LOG.info("Did not find answer for questionnaire question id " + questionnaireQuestion.getQuestionnaireQuestionsId() + ", Answer header Id " + answerHeader.getAnswerHeaderId());
        return null;
    }


    /*
     * This method is used to set additional information data to AdditionalInformation XMLObject from DevelopmentProposal,
     * ProposalYnq
     */
    @SuppressWarnings("static-access")
    private void setCitizenship(AdditionalInformation additionalInformation) {

        // Set the citizenship stuff
        ProposalPerson principalInvestigator = s2sUtilService.getPrincipalInvestigator(pdDoc);
        for (ProposalPerson proposalPerson : pdDoc.getDevelopmentProposal().getProposalPersons()) {
            if (proposalPerson.isInvestigator()) {

                try {
                    CitizenshipTypes citizenShip = s2sUtilService.getCitizenship(proposalPerson);

                    if (citizenShip.name().equals(CitizenshipTypes.PERMANENT_RESIDENT_OF_US.toString())) {
                        additionalInformation.setUSCitizen(YesNoDataType.N_NO);
                        additionalInformation.setNonUSCitizen(NonUSCitizenDataType.WITH_A_PERMANENT_U_S_RESIDENT_VISA);
                    } else if (citizenShip.name().equals(CitizenshipTypes.PERMANENT_RESIDENT_OF_US_PENDING.toString())) {
                        additionalInformation.setUSCitizen(YesNoDataType.N_NO);
                        additionalInformation.setNonUSCitizen(NonUSCitizenDataType.WITH_A_TEMPORARY_U_S_VISA);
                        additionalInformation.setPermanentResidentByAwardIndicator(YesNoDataType.Y_YES);
                    } else if (citizenShip.name().equals(CitizenshipTypes.US_CITIZEN_OR_NONCITIZEN_NATIONAL.toString())) {
                        additionalInformation.setUSCitizen(YesNoDataType.Y_YES);
                    } else if (citizenShip.name().equals(CitizenshipTypes.NON_US_CITIZEN_WITH_TEMPORARY_VISA.toString())) {
                        additionalInformation.setUSCitizen(YesNoDataType.N_NO);
                        additionalInformation.setNonUSCitizen(NonUSCitizenDataType.WITH_A_TEMPORARY_U_S_VISA);
                        additionalInformation.setPermanentResidentByAwardIndicator(YesNoDataType.N_NO);
                    }
                } catch (Exception e) {
                    // UnsupportedOperationException OR IllegalArgumentException is possible here
                    LOG.error("Invalid citizenship type on proposalPerson = " + proposalPerson.getPersonId()
                            + " for devproposal " + proposalPerson.getProposalNumber());
                }

            }
        }

        // Get the phone number
        if (principalInvestigator != null && principalInvestigator.getMobilePhoneNumber() != null) {
            additionalInformation.setAlernatePhoneNumber(principalInvestigator.getMobilePhoneNumber());
        }

        // Check if they have attached a Current Support doc
        additionalInformation.setConcurrentSupport(YesNoDataType.N_NO);
        AttachedFileDataType attachedFileDataType = null;
        for (Narrative narrative : pdDoc.getDevelopmentProposal().getNarratives()) {
            if (narrative.getNarrativeTypeCode() != null) {
                switch (Integer.parseInt(narrative.getNarrativeTypeCode())) {
                    case CONCURRENT_SUPPORT:
                        attachedFileDataType = getAttachedFileType(narrative);
                        if (attachedFileDataType == null) {
                            continue;
                        }
                        ConcurrentSupportDescription concurrentSupportDescription = ConcurrentSupportDescription.Factory.newInstance();
                        concurrentSupportDescription.setAttFile(attachedFileDataType);
                        additionalInformation.setConcurrentSupport(YesNoDataType.Y_YES);
                        additionalInformation.setConcurrentSupportDescription(concurrentSupportDescription);
                        break;
                    default:
                        break;

                }
            }
        }
    }


    /*
     * This method is used to get AttachmentGroupMin0Max100DataType xmlObject and set data to it based on narrative type code
     */
    private AttachmentGroupMin0Max100DataType getAppendix() {
        AttachmentGroupMin0Max100DataType attachmentGroupType = AttachmentGroupMin0Max100DataType.Factory.newInstance();
        List<AttachedFileDataType> attachedFileDataTypeList = new ArrayList<AttachedFileDataType>();
        AttachedFileDataType attachedFileDataType = null;
        for (Narrative narrative : pdDoc.getDevelopmentProposal().getNarratives()) {
            if (narrative.getNarrativeTypeCode() != null && Integer.parseInt(narrative.getNarrativeTypeCode()) == APPENDIX) {
                attachedFileDataType = getAttachedFileType(narrative);
                if (attachedFileDataType != null) {
                    attachedFileDataTypeList.add(attachedFileDataType);
                }
            }
        }
        attachmentGroupType.setAttachedFileArray(attachedFileDataTypeList.toArray(new AttachedFileDataType[attachedFileDataTypeList
                .size()]));
        return attachmentGroupType;
    }

    /*
     * 
     * This method computes the number of months between any 2 given {@link Date} objects
     * 
     * @param dateStart starting date. @param dateEnd end date.
     * 
     * @return number of months between the start date and end date.
     */
    private BudgetDecimal getNumberOfMonths(Date dateStart, Date dateEnd) {
        BudgetDecimal monthCount = BudgetDecimal.ZERO;
        int fullMonthCount = 0;

        Calendar startDate = Calendar.getInstance();
        Calendar endDate = Calendar.getInstance();
        startDate.setTime(dateStart);
        endDate.setTime(dateEnd);

        startDate.clear(Calendar.HOUR);
        startDate.clear(Calendar.MINUTE);
        startDate.clear(Calendar.SECOND);
        startDate.clear(Calendar.MILLISECOND);

        endDate.clear(Calendar.HOUR);
        endDate.clear(Calendar.MINUTE);
        endDate.clear(Calendar.SECOND);
        endDate.clear(Calendar.MILLISECOND);

        if (startDate.after(endDate)) {
            return BudgetDecimal.ZERO;
        }
        int startMonthDays = startDate.getActualMaximum(Calendar.DATE) - startDate.get(Calendar.DATE);
        startMonthDays++;
        int startMonthMaxDays = startDate.getActualMaximum(Calendar.DATE);
        BudgetDecimal startMonthFraction = new BudgetDecimal(startMonthDays).divide(new BudgetDecimal(startMonthMaxDays));

        int endMonthDays = endDate.get(Calendar.DATE);
        int endMonthMaxDays = endDate.getActualMaximum(Calendar.DATE);

        BudgetDecimal endMonthFraction = new BudgetDecimal(endMonthDays).divide(new BudgetDecimal(endMonthMaxDays));

        startDate.set(Calendar.DATE, 1);
        endDate.set(Calendar.DATE, 1);

        while (startDate.getTimeInMillis() < endDate.getTimeInMillis()) {
            startDate.set(Calendar.MONTH, startDate.get(Calendar.MONTH) + 1);
            fullMonthCount++;
        }
        fullMonthCount = fullMonthCount - 1;
        monthCount = monthCount.add(new BudgetDecimal(fullMonthCount)).add(startMonthFraction).add(endMonthFraction);
        return monthCount;
    }

    /**
     * This method creates {@link XmlObject} of type
     * {@link PHSFellowshipSupplementalDocument} by populating data from the
     * given {@link ProposalDevelopmentDocument}
     *
     * @param proposalDevelopmentDocument for which the {@link XmlObject} needs
     * to be created
     * @return {@link XmlObject} which is generated using the given
     * {@link ProposalDevelopmentDocument}
     * @see
     * org.kuali.kra.s2s.generator.S2SFormGenerator#getFormObject(ProposalDevelopmentDocument)
     */
    public XmlObject getFormObject(ProposalDevelopmentDocument proposalDevelopmentDocument) {
        this.pdDoc = proposalDevelopmentDocument;
        return getPHSFellowshipSupplemental31();
    }

    public String getFormName() {
        return FORM_NAME;
    }

    public String getNamespace() {
        return NAME_SPACE;
    }

    public class KirschsteinBean {

        String answer;
        Integer questionId;
        Integer questionNumber;
        Integer parentQuestionNumber;

        /**
         * Gets the answer attribute.
         *
         * @return Returns the answer.
         */
        public String getAnswer() {
            return answer;
        }

        /**
         * Sets the answer attribute value.
         *
         * @param answer The answer to set.
         */
        public void setAnswer(String answer) {
            this.answer = answer;
        }

        /**
         * Gets the questionId attribute.
         *
         * @return Returns the questionId.
         */
        public Integer getQuestionId() {
            return questionId;
        }

        /**
         * Sets the questionId attribute value.
         *
         * @param questionId The questionId to set.
         */
        public void setQuestionId(Integer questionId) {
            this.questionId = questionId;
        }

        /**
         * Gets the questionNumber attribute.
         *
         * @return Returns the questionNumber.
         */
        public Integer getQuestionNumber() {
            return questionNumber;
        }

        /**
         * Sets the questionNumber attribute value.
         *
         * @param questionNumber The questionNumber to set.
         */
        public void setQuestionNumber(Integer questionNumber) {
            this.questionNumber = questionNumber;
        }

        /**
         * Gets the parentQuestionNumber attribute.
         *
         * @return Returns the parentQuestionNumber.
         */
        public Integer getParentQuestionNumber() {
            return parentQuestionNumber;
        }

        /**
         * Sets the parentQuestionNumber attribute value.
         *
         * @param parentQuestionNumber The parentQuestionNumber to set.
         */
        public void setParentQuestionNumber(Integer parentQuestionNumber) {
            this.parentQuestionNumber = parentQuestionNumber;
        }
    }
}
