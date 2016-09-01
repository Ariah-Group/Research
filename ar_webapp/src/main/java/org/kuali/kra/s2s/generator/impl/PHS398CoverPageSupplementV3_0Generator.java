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

import gov.grants.apply.forms.phs398CoverPageSupplement30V30.PHS398CoverPageSupplement30Document;
import gov.grants.apply.forms.phs398CoverPageSupplement30V30.PHS398CoverPageSupplement30Document.PHS398CoverPageSupplement30;
import gov.grants.apply.system.globalLibraryV20.HumanNameDataType;
import gov.grants.apply.forms.phs398CoverPageSupplement30V30.PHS398CoverPageSupplement30Document.PHS398CoverPageSupplement30.ClinicalTrial;

import gov.grants.apply.forms.phs398CoverPageSupplement30V30.PHS398CoverPageSupplement30Document.PHS398CoverPageSupplement30.StemCells;
import gov.grants.apply.forms.phs398CoverPageSupplement30V30.PHS398CoverPageSupplement30Document.PHS398CoverPageSupplement30.IncomeBudgetPeriod;
import gov.grants.apply.forms.phs398CoverPageSupplement30V30.PHS398CoverPageSupplement30Document.PHS398CoverPageSupplement30.VertebrateAnimals;

import gov.grants.apply.system.globalLibraryV20.YesNoDataType;
import gov.grants.apply.system.globalLibraryV20.YesNoDataType.Enum;

import org.apache.xmlbeans.XmlObject;
import org.kuali.kra.proposaldevelopment.bo.ProposalPerson;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.questionnaire.answer.Answer;
import org.kuali.kra.questionnaire.answer.AnswerHeader;
import org.kuali.kra.s2s.generator.bo.DepartmentalPerson;
import org.kuali.kra.s2s.util.S2SConstants;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * Class for generating the XML object for grants.gov
 * PHS398CoverPageSupplementV1_3. Form is generated using XMLBean classes and is
 * based on PHS398CoverPageSupplement schema.
 *
 * @author Kuali Research Administration Team (kualidev@oncourse.iu.edu)
 */
public class PHS398CoverPageSupplementV3_0Generator extends
        PHS398CoverPageSupplementBaseGenerator {

    List<AnswerHeader> answerHeaders;

    /**
     *
     * This method gives information of Cover Page Supplement such as PDPI
     * details,Clinical Trail information,Contact person information.
     *
     * @return coverPageSupplementDocument {@link XmlObject} of type
     * PHS398CoverPageSupplement30Document.
     */
    private PHS398CoverPageSupplement30Document getCoverPageSupplement() {
        PHS398CoverPageSupplement30Document coverPageSupplementDocument = PHS398CoverPageSupplement30Document.Factory.newInstance();
        PHS398CoverPageSupplement30 coverPageSupplement = PHS398CoverPageSupplement30.Factory.newInstance();
        answerHeaders = getQuestionnaireAnswers(pdDoc.getDevelopmentProposal(), true);
        coverPageSupplement.setFormVersion(S2SConstants.FORMVERSION_3_0);

        coverPageSupplement.setClinicalTrial(getClinicalTrial());
        coverPageSupplement.setProgramIncome(getProgramIncome());
        if (coverPageSupplement.getProgramIncome().equals(YesNoDataType.Y_YES)) {
            coverPageSupplement.setIncomeBudgetPeriodArray(getIncomeBudgetPeriod());
        }

        coverPageSupplement.setVertebrateAnimals(getVertebrateAnimals());

        setInventionsAndPatents(coverPageSupplement);

        coverPageSupplement.setStemCells(getStemCells());

        setChangeOfPDPIandGranteeInst(coverPageSupplement);

        coverPageSupplementDocument.setPHS398CoverPageSupplement30(coverPageSupplement);
        return coverPageSupplementDocument;
    }

    /**
     *
     * @param coverPageSupplement
     */
    private void setChangeOfPDPIandGranteeInst(PHS398CoverPageSupplement30 coverPageSupplement) {
        String answer = null;

        answer = getAnswer(CHANGE_PDPI);
        if (answer != null) {
            if (!answer.equals(NOT_ANSWERED)) {
                if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(answer)) {

                    ProposalPerson PI = s2sUtilService.getPrincipalInvestigator(pdDoc);
                    HumanNameDataType formerPDName = globLibV20Generator.getHumanNameDataType(PI);

                    coverPageSupplement.setIsChangeOfPDPI(YesNoDataType.Y_YES);

                    // This is change to PDPI
                    if (getAnswer(PDPI_PREFIX) != null) {
                        formerPDName.setPrefixName(getAnswer(PDPI_PREFIX));
                    }
                    if (getAnswer(PDPI_FIRST_NAME) != null) {
                        formerPDName.setFirstName(getAnswer(PDPI_FIRST_NAME));
                    } else {
                        formerPDName.setFirstName("");
                    }
                    if (getAnswer(PDPI_MID_NAME) != null) {
                        formerPDName.setMiddleName(getAnswer(PDPI_MID_NAME));
                    }
                    if (getAnswer(PDPI_LAST_NAME) != null) {
                        formerPDName.setLastName(getAnswer(PDPI_LAST_NAME));
                    } else {
                        formerPDName.setLastName("");
                    }
                    if (getAnswer(PDPI_SUFFIX) != null) {
                        formerPDName.setSuffixName(getAnswer(PDPI_SUFFIX));
                    }

                    coverPageSupplement.setFormerPDName(formerPDName);

                } else {
                    coverPageSupplement.setIsChangeOfPDPI(YesNoDataType.N_NO);
                }
            }
        }

        answer = getAnswer(CHANGE_GRANTEE);
        if (answer != null) {
            if (!answer.equals(NOT_ANSWERED)) {
                if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(answer)) {
                    coverPageSupplement.setIsChangeOfInstitution(YesNoDataType.Y_YES);
                    coverPageSupplement.setFormerInstitutionName(getAnswer(NAME_FORMER_INST));

                } else {
                    coverPageSupplement.setIsChangeOfInstitution(YesNoDataType.N_NO);
                }
            }
        }
    }

    private void setInventionsAndPatents(PHS398CoverPageSupplement30 coverPageSupplement) {
        String answer = null;
        String subAnswer = null;

        answer = getAnswer(IS_RENEWAL);
        if (answer != null) {
            if (!answer.equals(NOT_ANSWERED)) {
                if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(answer)) {

                    // This is renewal
                    subAnswer = getAnswer(INVENTIONS);
                    if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(subAnswer)) {
                        // Yes, there were inventions
                        coverPageSupplement.setIsInventionsAndPatents(YesNoDataType.Y_YES);
                        subAnswer = getAnswer(PATENTS_REPORTED);
                        if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(subAnswer)) {
                            // Yes, they have reported the inventions
                            coverPageSupplement.setIsPreviouslyReported(YesNoDataType.Y_YES);
                        } else {
                            // No, they have not reported the inventions
                            coverPageSupplement.setIsPreviouslyReported(YesNoDataType.N_NO);
                        }
                    } else {
                        coverPageSupplement.setIsInventionsAndPatents(YesNoDataType.N_NO);

                    }
                }
            }
        }
    }

    /**
     * Get the Vertebrate Animal info
     *
     * @return
     */
    private VertebrateAnimals getVertebrateAnimals() {
        VertebrateAnimals vertebrateAnimals = VertebrateAnimals.Factory.newInstance();

        String answer = null;
        String subAnswer = null;

        answer = getAnswer(VERTEBRATE_ANIMALS_EUTHANIZED);

        if (answer != null) {
            if (!answer.equals(NOT_ANSWERED)) {

                if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(answer)) {
                    // Yes, animals will be euthanized
                    vertebrateAnimals.setAnimalEuthanasiaIndicator(YesNoDataType.Y_YES);
                    subAnswer = getAnswer(CONSISTENT_WITH_AVMA);
                    if (subAnswer != null && !subAnswer.equals(NOT_ANSWERED)) {
                        if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(subAnswer)) {
                            // Yes, euthanization consistent with AVMA guidelines
                            vertebrateAnimals.setAVMAConsistentIndicator(YesNoDataType.Y_YES);
                        } else {

                            // No, euthanization not consistent with guidelines, so get description
                            vertebrateAnimals.setAVMAConsistentIndicator(YesNoDataType.N_NO);

                            subAnswer = getAnswer(DESCRIBE_EUTHANIZATION_METHOD);
                            vertebrateAnimals.setEuthanasiaMethodDescription(subAnswer);

                        }
                    } else {
                        vertebrateAnimals.setAVMAConsistentIndicator(null);
                    }
                } else {
                    vertebrateAnimals.setAnimalEuthanasiaIndicator(YesNoDataType.N_NO);
                }
            }
        }

        return vertebrateAnimals;
    }

    /**
     *
     * This method is used to get Clinical Trial information
     *
     * @return ClinicalTrial object containing Clinical Trail Details.
     */
    private ClinicalTrial getClinicalTrial() {

        ClinicalTrial clinicalTrial = ClinicalTrial.Factory.newInstance();
        String answer = null;
        String subAnswer = null;
        answer = getAnswer(IS_CLINICAL_TRIAL);
        if (answer != null) {
            if (!answer.equals(NOT_ANSWERED)) {
                if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(answer)) {
                    clinicalTrial.setIsClinicalTrial(YesNoDataType.Y_YES);
                } else {
                    clinicalTrial.setIsClinicalTrial(YesNoDataType.N_NO);
                }
            }
        }

        // make phase III clinical trial not a nested question, since the form is ambiguous   
        subAnswer = getAnswer(PHASE_III_CLINICAL_TRIAL);
        if (subAnswer != null && !subAnswer.equals(NOT_ANSWERED)) {
            if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(subAnswer)) {
                clinicalTrial.setIsPhaseIIIClinicalTrial(YesNoDataType.Y_YES);
            } else {
                clinicalTrial.setIsPhaseIIIClinicalTrial(YesNoDataType.N_NO);
            }
        }

        return clinicalTrial;
    }

    /**
     *
     * This method is used to get Program Income information
     *
     * @return
     */
    private gov.grants.apply.system.globalLibraryV20.YesNoDataType.Enum getProgramIncome() {

        gov.grants.apply.system.globalLibraryV20.YesNoDataType.Enum enumAnswer = YesNoDataType.N_NO; // Default ...FIXME

        // Change this get the Program Income question, and if yes, get the BudgetPeriod filled in also
        String answer = null;
        answer = getAnswer(PROGRAM_INCOME_ANTICIPATED);
        if (answer != null) {
            if (!answer.equals(NOT_ANSWERED)) {
                if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(answer)) {
                    enumAnswer = YesNoDataType.Y_YES;
                } else {
                    enumAnswer = YesNoDataType.N_NO;
                }
            }
        }
        return enumAnswer;
    }

    private IncomeBudgetPeriod[] getIncomeBudgetPeriod() {

        List<IncomeBudgetPeriod> incomeBudgetPeriodList = new ArrayList<IncomeBudgetPeriod>();

        IncomeBudgetPeriod incomeBudgetPeriod = IncomeBudgetPeriod.Factory.newInstance();

        String budget_period_answer = null;
        String budget_amount_answer = null;
        String budget_source_answer = null;

        budget_period_answer = getAnswer(BUDGET_PERIOD);
        budget_amount_answer = getAnswer(BUDGET_ANTICIPATED_AMOUNT);
        budget_source_answer = getAnswer(BUDGET_SOURCES);

        incomeBudgetPeriod.setBudgetPeriod(Integer.parseInt(budget_period_answer));
        incomeBudgetPeriod.setAnticipatedAmount(new BigDecimal(budget_amount_answer));
        incomeBudgetPeriod.setSource(budget_source_answer);

        incomeBudgetPeriodList.add(incomeBudgetPeriod);
        return incomeBudgetPeriodList.toArray(new IncomeBudgetPeriod[0]);
    }

    /**
     *
     * This method is used to get information of Stem Cells for the form
     * PHS398CoverPage
     *
     * @return StemCells object containing information about Human stem Cells
     * involvement.
     */
    private StemCells getStemCells() {

        StemCells stemCells = StemCells.Factory.newInstance();
        Enum answers = YesNoDataType.N_NO;
        String childAnswer = null;
        String answer = getAnswer(IS_HUMAN_STEM_CELLS_INVOLVED);
        if (answer != null) {
            if (!answer.equals(NOT_ANSWERED)) {
                answers = S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(getAnswer(IS_HUMAN_STEM_CELLS_INVOLVED)) ? YesNoDataType.Y_YES : YesNoDataType.N_NO;
                if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(answer)) {
                    stemCells.setIsHumanStemCellsInvolved(YesNoDataType.Y_YES);
                    String subAnswer = getAnswer(SPECIFIC_STEM_CELL_LINE);
                    if (subAnswer != null) {
                        if (!subAnswer.equals(NOT_ANSWERED)) {
                            if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(subAnswer)) {
                                stemCells.setStemCellsIndicator(YesNoDataType.N_NO);
                                childAnswer = getAnswers(REGISTRATION_NUMBER);
                            } else {
                                stemCells.setStemCellsIndicator(YesNoDataType.Y_YES);
                            }
                        }
                    }
                    if (childAnswer != null) {
                        if (S2SConstants.VALUE_UNKNOWN.equalsIgnoreCase(childAnswer)) {
                            stemCells.setStemCellsIndicator(answers);
                        } else {
                            List<String> cellLines = getCellLines(childAnswer);
                            if (cellLines.size() > 0) {
                                stemCells.setCellLinesArray(cellLines.toArray(new String[0]));
                            }
                        }
                    }
                } else {
                    stemCells.setIsHumanStemCellsInvolved(YesNoDataType.N_NO);
                    stemCells.setStemCellsIndicator(answers);
                }
            }
        }
        return stemCells;
    }

    /*
     * This method will get the Answer for sub question
     */
    private String getAnswer(String questionId) {

        String answer = null;
        if (answerHeaders != null && !answerHeaders.isEmpty()) {
            for (AnswerHeader answerHeader : answerHeaders) {
                List<Answer> answerDetails = answerHeader.getAnswers();
                for (Answer answers : answerDetails) {
                    if (questionId.equals(answers.getQuestion().getQuestionId())) {
                        // TODO temporary fix to duplicate answers for different rule_id.  We will need to come back and fix it correctly later.
                        if (answers.getAnswer() != null) {  
                            answer = answers.getAnswer();
                        }
                    }
                }
            }
        }
        return answer;
    }

    /*
     * This method will get the childAnswer for sub question
     */
    private String getAnswers(String questionId) {

        String answer = null;
        String childAnswer = null;
        StringBuilder stringBuilder = new StringBuilder();
        if (answerHeaders != null && !answerHeaders.isEmpty()) {
            for (AnswerHeader answerHeader : answerHeaders) {
                List<Answer> answerDetails = answerHeader.getAnswers();
                for (Answer answers : answerDetails) {
                    if (questionId.equals(answers.getQuestion().getQuestionId())) {
                        answer = answers.getAnswer();
                        if (answer != null) {
                            if (!answer.equals(NOT_ANSWERED)) {
                                stringBuilder.append(answer);
                                stringBuilder.append(",");
                            }
                        }
                        childAnswer = stringBuilder.toString();
                    }
                }
            }
        }
        return childAnswer;
    }

    /**
     * This method creates {@link XmlObject} of type
     * {@link PHS398CoverPageSupplement30Document} by populating data from the
     * given {@link ProposalDevelopmentDocument}
     *
     * @param proposalDevelopmentDocument for which the {@link XmlObject} needs
     * to be created
     * @return {@link XmlObject} which is generated using the given
     * {@link ProposalDevelopmentDocument}
     * @see
     * org.kuali.kra.s2s.generator.S2SFormGenerator#getFormObject(ProposalDevelopmentDocument)
     */
    public XmlObject getFormObject(
            ProposalDevelopmentDocument proposalDevelopmentDocument) {
        this.pdDoc = proposalDevelopmentDocument;
        return getCoverPageSupplement();
    }

    /**
     * This method typecasts the given {@link XmlObject} to the required
     * generator type and returns back the document of that generator type.
     *
     * @param xmlObject which needs to be converted to the document type of the
     * required generator
     * @return {@link XmlObject} document of the required generator type
     * @see
     * org.kuali.kra.s2s.generator.S2SFormGenerator#getFormObject(XmlObject)
     */
    public XmlObject getFormObject(XmlObject xmlObject) {
        PHS398CoverPageSupplement30 coverPageSupplement = (PHS398CoverPageSupplement30) xmlObject;
        PHS398CoverPageSupplement30Document coverPageSupplementDocument = PHS398CoverPageSupplement30Document.Factory
                .newInstance();
        coverPageSupplementDocument
                .setPHS398CoverPageSupplement30(coverPageSupplement);
        return coverPageSupplementDocument;
    }
}
