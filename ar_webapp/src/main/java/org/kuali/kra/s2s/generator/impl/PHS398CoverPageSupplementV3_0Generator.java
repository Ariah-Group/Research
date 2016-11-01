/*
 * Copyright 2005-2014 The Kuali Foundation.
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl2.php
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
import gov.grants.apply.forms.phs398CoverPageSupplement30V30.PHS398CoverPageSupplement30Document.PHS398CoverPageSupplement30.ClinicalTrial;
import gov.grants.apply.forms.phs398CoverPageSupplement30V30.PHS398CoverPageSupplement30Document.PHS398CoverPageSupplement30.StemCells;
import gov.grants.apply.forms.phs398CoverPageSupplement30V30.PHS398CoverPageSupplement30Document.PHS398CoverPageSupplement30.VertebrateAnimals;
import gov.grants.apply.system.globalLibraryV20.HumanNameDataType;
import gov.grants.apply.system.globalLibraryV20.YesNoDataType;
import gov.grants.apply.system.globalLibraryV20.YesNoDataType.Enum;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.apache.xmlbeans.XmlObject;
import org.kuali.kra.proposaldevelopment.bo.ProposalPerson;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.questionnaire.answer.Answer;
import org.kuali.kra.questionnaire.answer.AnswerHeader;
import org.kuali.kra.s2s.util.S2SConstants;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.kuali.kra.budget.distributionincome.BudgetProjectIncome;
import org.kuali.kra.budget.document.BudgetDocument;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.s2s.service.S2SBudgetCalculatorService;

/**
 * Class for generating the XML object for grants gov
 * PHS398CoverPageSupplementV3_0. Form is generated using XMLBean classes and is
 * based on PHS398CoverPageSupplement schema.
 */
public class PHS398CoverPageSupplementV3_0Generator extends PHS398CoverPageSupplementBaseGenerator {

    private static final Log LOG = LogFactory.getLog(PHS398CoverPageSupplementV3_0Generator.class);
    List<AnswerHeader> answerHeaders;
    protected S2SBudgetCalculatorService s2sBudgetCalculatorService;
    protected static final int PROJECT_INCOME_DESCRIPTION_MAX_LENGTH = 150;

    /**
     *
     * This method gives information of Cover Page Supplement such as PDPI
     * details,Clinical Trial information,Contact person information.
     *
     * @return coverPageSupplementDocument {@link XmlObject} of type
     * PHS398CoverPageSupplement30Document.
     */
    private PHS398CoverPageSupplement30Document getCoverPageSupplement() {

        PHS398CoverPageSupplement30Document coverPageSupplementDocument = PHS398CoverPageSupplement30Document.Factory.newInstance();
        PHS398CoverPageSupplement30 coverPageSupplement = PHS398CoverPageSupplement30.Factory.newInstance();
        coverPageSupplement.setFormVersion(S2SConstants.FORMVERSION_3_0);

        answerHeaders = getQuestionnaireAnswers(pdDoc.getDevelopmentProposal(), true);

        coverPageSupplement.setClinicalTrial(getClinicalTrial());

        s2sBudgetCalculatorService = KraServiceLocator.getService(S2SBudgetCalculatorService.class);

        BudgetDocument budgetDoc = null;
        try {
            budgetDoc = s2sBudgetCalculatorService.getFinalBudgetVersion(pdDoc);
        } catch (Exception e) {
            LOG.error(e.getMessage(), e);
        }

        if (budgetDoc != null && budgetDoc.getBudget() != null) {
            int numPeriods = budgetDoc.getBudget().getBudgetPeriods().size();
            setIncomeBudgetPeriods(coverPageSupplement, budgetDoc.getBudget()
                    .getBudgetProjectIncomes(), numPeriods);
        } else {
            coverPageSupplement.setProgramIncome(YesNoDataType.N_NO);
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

    /*
     * This method will set values to income budget periods
     */
    private static void setIncomeBudgetPeriods(PHS398CoverPageSupplement30 coverPageSupplement,
            List<BudgetProjectIncome> projectIncomes, int numPeriods) {
        if (projectIncomes.isEmpty()) {
            coverPageSupplement.setProgramIncome(YesNoDataType.N_NO);
        } else {
            coverPageSupplement.setProgramIncome(YesNoDataType.Y_YES);
        }
        coverPageSupplement.setIncomeBudgetPeriodArray(getIncomeBudgetPeriod(projectIncomes));
    }

    /*
     * Method to sum up IncomeBudgetPeriod of different period Number
     */
    private static PHS398CoverPageSupplement30Document.PHS398CoverPageSupplement30.IncomeBudgetPeriod[] getIncomeBudgetPeriod(
            final List<BudgetProjectIncome> projectIncomes) {
        //TreeMap Used to maintain the order of the Budget periods.
        Map<Integer, PHS398CoverPageSupplement30Document.PHS398CoverPageSupplement30.IncomeBudgetPeriod> incomeBudgetPeriodMap = new TreeMap<Integer, PHS398CoverPageSupplement30Document.PHS398CoverPageSupplement30.IncomeBudgetPeriod>();
        BigDecimal anticipatedAmount;
        for (BudgetProjectIncome projectIncome : projectIncomes) {

            Integer budgetPeriodNumber = projectIncome.getBudgetPeriodNumber();
            PHS398CoverPageSupplement30Document.PHS398CoverPageSupplement30.IncomeBudgetPeriod incomeBudgPeriod = incomeBudgetPeriodMap
                    .get(budgetPeriodNumber);
            if (incomeBudgPeriod == null) {
                incomeBudgPeriod = PHS398CoverPageSupplement30Document.PHS398CoverPageSupplement30.IncomeBudgetPeriod.Factory.newInstance();
                incomeBudgPeriod.setBudgetPeriod(budgetPeriodNumber.intValue());
                anticipatedAmount = BigDecimal.ZERO;
            } else {
                anticipatedAmount = incomeBudgPeriod.getAnticipatedAmount();
            }
            anticipatedAmount = anticipatedAmount.add(projectIncome
                    .getProjectIncome().bigDecimalValue());
            incomeBudgPeriod.setAnticipatedAmount(anticipatedAmount);
            String description = getProjectIncomeDescription(projectIncome);
            if (description != null) {
                if (incomeBudgPeriod.getSource() != null) {
                    incomeBudgPeriod.setSource(incomeBudgPeriod.getSource()
                            + ";" + description);
                } else {
                    incomeBudgPeriod.setSource(description);
                }
            }
            incomeBudgetPeriodMap.put(budgetPeriodNumber, incomeBudgPeriod);
        }
        Collection<PHS398CoverPageSupplement30Document.PHS398CoverPageSupplement30.IncomeBudgetPeriod> incomeBudgetPeriodCollection = incomeBudgetPeriodMap
                .values();
        return incomeBudgetPeriodCollection.toArray(new PHS398CoverPageSupplement30Document.PHS398CoverPageSupplement30.IncomeBudgetPeriod[0]);
    }

    protected static String getProjectIncomeDescription(BudgetProjectIncome projectIncome) {
        String description = null;
        if (projectIncome.getDescription() != null) {
            if (projectIncome.getDescription().length() > PROJECT_INCOME_DESCRIPTION_MAX_LENGTH) {
                description = projectIncome.getDescription().substring(0,
                        PROJECT_INCOME_DESCRIPTION_MAX_LENGTH);
            } else {
                description = projectIncome.getDescription();
            }
        }
        return description;
    }

    /**
     * Get the Vertebrate Animal info
     *
     * @return
     */
    private VertebrateAnimals getVertebrateAnimals() {

        VertebrateAnimals vertebrateAnimals = VertebrateAnimals.Factory.newInstance();

        String answer = getAnswer(VERTEBRATE_ANIMALS_EUTHANIZED);
        String subAnswer = null;

        LOG.error("PHS398CoverPageSupp_v3.0 : questionId " + VERTEBRATE_ANIMALS_EUTHANIZED + " answer: " + answer);

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
     * @return ClinicalTrial object containing Clinical Trial Details.
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

    /**
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

    /**
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
    @Override
    public XmlObject getFormObject(ProposalDevelopmentDocument proposalDevelopmentDocument) {
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
        PHS398CoverPageSupplement30Document coverPageSupplementDocument = PHS398CoverPageSupplement30Document.Factory.newInstance();
        coverPageSupplementDocument.setPHS398CoverPageSupplement30(coverPageSupplement);

        return coverPageSupplementDocument;
    }
}
