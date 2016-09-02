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

import java.io.ByteArrayInputStream;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.xmlbeans.XmlObject;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.proposaldevelopment.service.ProposalDevelopmentS2sQuestionnaireService;
import org.kuali.kra.questionnaire.answer.AnswerHeader;
import org.kuali.kra.s2s.bo.S2sOpportunity;
import org.kuali.kra.s2s.generator.S2SBaseFormGenerator;
import org.kuali.kra.s2s.util.S2SConstants;

import gov.grants.apply.forms.phsAssignmentRequestFormV10.PHSAssignmentRequestFormDocument;
import gov.grants.apply.forms.phsAssignmentRequestFormV10.PHSAssignmentRequestFormDocument.PHSAssignmentRequestForm;

public class PHSAssignmentRequestV1_0Generator extends S2SBaseFormGenerator {

    private static final String FORM_NAME = "PHS_AssignmentRequestForm";
    private static final String NAME_SPACE = "http://apply.grants.gov/forms/PHS_AssignmentRequestForm-V1.0";

    public static final String AWARDING_COMPONENT_ASSIGNMENT_REQUEST_EXISTS_YNQ = "100025";
    public static final String ASSIGN_TO_AWARDING_COMPONENT_YNQ = "100026";
    public static final String ASSIGN_TO_AWARDING_COMPONENT = "100027";
    public static final String DO_NOT_ASSIGN_TO_AWARDING_COMPONENT_QUESTION = "100028";
    public static final String DO_NOT_ASSIGN_TO_AWARDING_COMPONENT = "100029";

    public static final String STUDY_SECTION_ASSIGNMENT_REQUEST_EXISTS_YNQ = "100030";
    public static final String ASSIGN_TO_STUDY_SECTION_YNQ = "100031";
    public static final String ASSIGN_TO_STUDY_SECTION = "100032";
    public static final String DO_NOT_ASSIGN_TO_STUDY_SECTION_YNQ = "100033";
    public static final String DO_NOT_ASSIGN_TO_STUDY_SECTION = "100034";

    public static final String INDIVIDUALS_WHOM_SHOULD_NOT_REVIEW_YOUR_APPLICATION_YNQ = "100035";
    public static final String INDIVIDUALS_WHOM_SHOULD_NOT_REVIEW_YOUR_APPLICATION_LISTING = "100036";

    public static final String SCEINTIFIC_AREAS_EXPERTISE_NEEDED_TO_REVIEW_EXISTS_YNQ = "100037";
    public static final String SCEINTIFIC_AREAS_EXPERTISE_NEEDED_TO_REVIEW_LISTING = "100038";

    private static final Log LOG = LogFactory.getLog(PHSAssignmentRequestV1_0Generator.class);

    private List<AnswerHeader> answerHeaders = null;

    /**
     * This method creates {@link XmlObject} of type
     * {@link PHSAssignmentRequestFormDocument} by populating data from the
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
        answerHeaders = findQuestionnaireWithAnswers(proposalDevelopmentDocument.getDevelopmentProposal());
        return getPHSAssignmentRequestForm();
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

        PHSAssignmentRequestForm assignmentRequestForm = (PHSAssignmentRequestForm) xmlObject;
        PHSAssignmentRequestFormDocument phsAssignmentRequestFormDocument = PHSAssignmentRequestFormDocument.Factory.newInstance();
        phsAssignmentRequestFormDocument.setPHSAssignmentRequestForm(assignmentRequestForm);
        return phsAssignmentRequestFormDocument;
    }

    /**
     *
     * This method gives PHS Assignment Request Form information for
     * PHSAssignmentRequestForm form
     *
     * @return assignmentRequestFormDocument {@link XmlObject} of type
     * PHSAssignmentRequestFormDocument.
     */
    private PHSAssignmentRequestFormDocument getPHSAssignmentRequestForm() {

        PHSAssignmentRequestFormDocument assignmentRequestFormDocument = PHSAssignmentRequestFormDocument.Factory.newInstance();
        PHSAssignmentRequestForm assignmentRequestForm = PHSAssignmentRequestForm.Factory.newInstance();

        assignmentRequestForm.setFormVersion(S2SConstants.FORMVERSION_1_0);

        S2sOpportunity s2sOpportunity = this.pdDoc.getDevelopmentProposal().getS2sOpportunity();
        if (s2sOpportunity != null) {
            assignmentRequestForm.setFundingOpportunityNumber(s2sOpportunity.getFundingOpportunityNumber());
            assignmentRequestForm.setFundingOpportunityTitle(s2sOpportunity.getOpportunityTitle());
        }

        setAwardingComponentRequest(assignmentRequestForm);
        setStudySection(assignmentRequestForm);
        setIndividualsToNotReview(assignmentRequestForm);
        setScientificAreasOfExpertise(assignmentRequestForm);

        assignmentRequestFormDocument.setPHSAssignmentRequestForm(assignmentRequestForm);
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(assignmentRequestFormDocument.toString().getBytes());
        sortAttachments(byteArrayInputStream);
        return assignmentRequestFormDocument;
    }

    protected void setAwardingComponentRequest(PHSAssignmentRequestForm assignmentRequestForm) {
        if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(getAnswer(answerHeaders, AWARDING_COMPONENT_ASSIGNMENT_REQUEST_EXISTS_YNQ))) {
            if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(getAnswer(answerHeaders, ASSIGN_TO_AWARDING_COMPONENT_YNQ))) {
                int answerIndex = 0;
                for (String answerString : getAnswers(answerHeaders, ASSIGN_TO_AWARDING_COMPONENT)) {
                    if (StringUtils.isNotBlank(answerString)) {
                        answerIndex++;
                        switch (answerIndex) {
                            case 1:
                                assignmentRequestForm.setAssignToAwardingComponent1(answerString);
                                break;
                            case 2:
                                assignmentRequestForm.setAssignToAwardingComponent2(answerString);
                                break;
                            case 3:
                                assignmentRequestForm.setAssignToAwardingComponent3(answerString);
                                break;
                        }
                    }
                }
            }
            if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(getAnswer(answerHeaders, DO_NOT_ASSIGN_TO_AWARDING_COMPONENT_QUESTION))) {
                int answerIndex = 0;
                for (String answerString : getAnswers(answerHeaders, DO_NOT_ASSIGN_TO_AWARDING_COMPONENT)) {
                    if (StringUtils.isNotBlank(answerString)) {
                        answerIndex++;
                        switch (answerIndex) {
                            case 1:
                                assignmentRequestForm.setNotAssignToAwardingComponent1(answerString);
                                break;
                            case 2:
                                assignmentRequestForm.setNotAssignToAwardingComponent2(answerString);
                                break;
                            case 3:
                                assignmentRequestForm.setNotAssignToAwardingComponent3(answerString);
                                break;
                        }
                    }
                }
            }
        }
    }

    protected void setStudySection(PHSAssignmentRequestForm assignmentRequestForm) {
        if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(getAnswer(answerHeaders, STUDY_SECTION_ASSIGNMENT_REQUEST_EXISTS_YNQ))) {
            if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(getAnswer(answerHeaders, ASSIGN_TO_STUDY_SECTION_YNQ))) {
                int answerIndex = 0;
                for (String answerString : getAnswers(answerHeaders, ASSIGN_TO_STUDY_SECTION)) {
                    if (StringUtils.isNotBlank(answerString)) {
                        answerIndex++;
                        switch (answerIndex) {
                            case 1:
                                assignmentRequestForm.setAssignToStudySection1(answerString);
                                break;
                            case 2:
                                assignmentRequestForm.setAssignToStudySection2(answerString);
                                break;
                            case 3:
                                assignmentRequestForm.setAssignToStudySection3(answerString);
                                break;
                        }
                    }
                }
            }
            if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(getAnswer(answerHeaders, DO_NOT_ASSIGN_TO_STUDY_SECTION_YNQ))) {
                int answerIndex = 0;
                for (String answerString : getAnswers(answerHeaders, DO_NOT_ASSIGN_TO_STUDY_SECTION)) {
                    if (StringUtils.isNotBlank(answerString)) {
                        answerIndex++;
                        switch (answerIndex) {
                            case 1:
                                assignmentRequestForm.setNotAssignToStudySection1(answerString);
                                break;
                            case 2:
                                assignmentRequestForm.setNotAssignToStudySection2(answerString);
                                break;
                            case 3:
                                assignmentRequestForm.setNotAssignToStudySection3(answerString);
                                break;
                        }
                    }
                }
            }
        }
    }

    protected void setIndividualsToNotReview(PHSAssignmentRequestForm assignmentRequestForm) {
        if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(getAnswer(answerHeaders, INDIVIDUALS_WHOM_SHOULD_NOT_REVIEW_YOUR_APPLICATION_YNQ))) {
            String answer = getAnswer(answerHeaders, INDIVIDUALS_WHOM_SHOULD_NOT_REVIEW_YOUR_APPLICATION_LISTING);
            if (StringUtils.isNotBlank(answer)) {
                assignmentRequestForm.setIndividualsNotToReviewText(answer);
            }
        }
    }

    protected void setScientificAreasOfExpertise(PHSAssignmentRequestForm assignmentRequestForm) {
        if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(getAnswer(answerHeaders, SCEINTIFIC_AREAS_EXPERTISE_NEEDED_TO_REVIEW_EXISTS_YNQ))) {
            int answerIndex = 0;
            for (String answerString : getAnswers(answerHeaders, SCEINTIFIC_AREAS_EXPERTISE_NEEDED_TO_REVIEW_LISTING)) {
                if (StringUtils.isNotBlank(answerString)) {
                    answerIndex++;
                    switch (answerIndex) {
                        case 1:
                            assignmentRequestForm.setExpertise1(answerString);
                            break;
                        case 2:
                            assignmentRequestForm.setExpertise2(answerString);
                            break;
                        case 3:
                            assignmentRequestForm.setExpertise3(answerString);
                            break;
                        case 4:
                            assignmentRequestForm.setExpertise4(answerString);
                            break;
                        case 5:
                            assignmentRequestForm.setExpertise5(answerString);
                            break;
                    }
                }
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
}
