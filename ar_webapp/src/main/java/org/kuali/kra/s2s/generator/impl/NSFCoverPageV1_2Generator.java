/*
 * Copyright 2005-2014 The Kuali Foundation.
 * 
 * Licensed under the Educational Community License, Version 1.0 (the "License");
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

import gov.grants.apply.forms.nsfCoverPage12V12.NSFCoverPage12Document;
import gov.grants.apply.forms.nsfCoverPage12V12.NSFCoverPage12Document.NSFCoverPage12;
import gov.grants.apply.forms.nsfCoverPage12V12.NSFCoverPage12Document.NSFCoverPage12.NSFUnitConsideration;
import gov.grants.apply.forms.nsfCoverPage12V12.NSFCoverPage12Document.NSFCoverPage12.OtherInfo;
import gov.grants.apply.forms.nsfCoverPage12V12.NSFCoverPage12Document.NSFCoverPage12.PIInfo;
import gov.grants.apply.system.attachmentsV10.AttachedFileDataType;
import gov.grants.apply.system.attachmentsV10.AttachmentGroupMin1Max100DataType;
import gov.grants.apply.system.globalLibraryV20.YesNoDataType;
import org.apache.xmlbeans.XmlObject;
import org.kuali.kra.proposaldevelopment.bo.Narrative;
import org.kuali.kra.proposaldevelopment.bo.ProposalPerson;
import org.kuali.kra.proposaldevelopment.bo.ProposalPersonYnq;
import org.kuali.kra.proposaldevelopment.bo.ProposalYnq;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.s2s.util.S2SConstants;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * This class is used to generate XML Document object for grants.gov
 * NSFCoverPageV1.2. This form is generated using XMLBean API's generated by
 * compiling NSFCoverPageV1.2 schema.
 *
 * @author Kuali Research Administration Team (kualidev@oncourse.iu.edu)
 */
public class NSFCoverPageV1_2Generator extends NSFCoverPageBaseGenerator {

    private static final String QUESTION_ID_ACCOMPLISHMENT_RENEWAL = "5";
    private static final String QUESTION_ID_ISCURRENT_PI = "19";
    private static final int PROGRAM_ANNOUNCEMENT_NUMBER_MAX_LENGTH = 40;

    /**
     *
     * This method returns NSFCoverPage12Document object based on proposal
     * development document which contains the NSFCoverPage12Document
     * informations
     * NSFUnitConsideration,FundingOpportunityNumber,PIInfo,CoPIInfo,OtherInfo,and
     * SingleCopyDocuments for a particular proposal
     *
     * @return nsfCoverPage12Document {@link XmlObject} of type
     * NSFCoverPage12Document.
     */
    private NSFCoverPage12Document getNSFCoverPage12() {
        NSFCoverPage12Document nsfCoverPage12Document = NSFCoverPage12Document.Factory
                .newInstance();
        NSFCoverPage12 nsfCoverPage12 = NSFCoverPage12.Factory.newInstance();
        nsfCoverPage12.setFormVersion(S2SConstants.FORMVERSION_1_2);
        setFundingOpportunityNumber(nsfCoverPage12);
        if (pdDoc.getDevelopmentProposal().getS2sOpportunity() != null) {
            nsfCoverPage12.setDueDate(dateTimeService.getCalendar(pdDoc
                    .getDevelopmentProposal().getS2sOpportunity()
                    .getClosingDate()));
        }
        nsfCoverPage12.setNSFUnitConsideration(getNSFUnitConsideration());
        nsfCoverPage12.setPIInfo(getPIInfo());
        nsfCoverPage12.setOtherInfo(getOtherInfo());
        AttachmentGroupMin1Max100DataType attachmentGroup = AttachmentGroupMin1Max100DataType.Factory
                .newInstance();
        attachmentGroup.setAttachedFileArray(getAttachedFileDataTypes());
        nsfCoverPage12.setSingleCopyDocuments(attachmentGroup);
        nsfCoverPage12Document.setNSFCoverPage12(nsfCoverPage12);
        return nsfCoverPage12Document;
    }

    private void setFundingOpportunityNumber(NSFCoverPage12 nsfCoverPage12) {
        if (pdDoc.getDevelopmentProposal().getProgramAnnouncementNumber() != null) {
            if (pdDoc.getDevelopmentProposal().getProgramAnnouncementNumber()
                    .length() > PROGRAM_ANNOUNCEMENT_NUMBER_MAX_LENGTH) {
                nsfCoverPage12.setFundingOpportunityNumber(pdDoc
                        .getDevelopmentProposal()
                        .getProgramAnnouncementNumber().substring(0,
                                PROGRAM_ANNOUNCEMENT_NUMBER_MAX_LENGTH));
            } else {
                nsfCoverPage12.setFundingOpportunityNumber(pdDoc
                        .getDevelopmentProposal()
                        .getProgramAnnouncementNumber());
            }
        }
    }

    /**
     *
     * This method returns PIInfo informations such as
     * DegreeType,DegreeYear,CurrentPI status, for the PI.
     *
     * @return PIInfo object containing principal investigator Degree details.
     */
    private PIInfo getPIInfo() {
        PIInfo pInfo = PIInfo.Factory.newInstance();
        pInfo.setIsCurrentPI(getYNQAnswer(QUESTION_ID_ISCURRENT_PI));
        return pInfo;
    }

    /**
     *
     * This method returns Investigator
     * status,DisclosureLobbyingActivities,ExploratoryResearch,HistoricPlaces,
     * HighResolutionGraphics and AccomplishmentRenewal information for the
     * OtherInfo type.
     *
     * @return OtherInfo object containing other informations about the
     * principal investigator.
     */
    private OtherInfo getOtherInfo() {
        OtherInfo otherInfo = OtherInfo.Factory.newInstance();
        YesNoDataType.Enum yesNoDataType = getYNQAnswer(QUESTION_ID_BEGIN_INVESTIGATOR);
        if (yesNoDataType != null) {
            otherInfo.setIsBeginInvestigator(yesNoDataType);
        }
        yesNoDataType = getLobbyingAnswer();
        if (yesNoDataType != null) {
            otherInfo.setIsDisclosureLobbyingActivities(yesNoDataType);
        }
        yesNoDataType = getYNQAnswer(QUESTION_ID_EXPLORATORY_RESEARCH);
        if (yesNoDataType != null) {
            otherInfo.setIsExploratoryResearch(yesNoDataType);
        }
        String proposalTypeCode = pdDoc.getDevelopmentProposal()
                .getProposalTypeCode();
        if (proposalTypeCode != null) {
            otherInfo
                    .setIsAccomplishmentRenewal(proposalTypeCode
                            .equals(QUESTION_ID_ACCOMPLISHMENT_RENEWAL) ? YesNoDataType.Y_YES
                                    : YesNoDataType.N_NO);
        }
        yesNoDataType = getYNQAnswer(QUESTION_ID_RESOLUTION_GRAPHICS);
        if (yesNoDataType != null) {
            otherInfo.setIsHighResolutionGraphics(yesNoDataType);
        }
        return otherInfo;
    }

    /**
     *
     * This method YesNo data type YNQ answers based on the ProposalYnq
     * QuestionId
     *
     * @param questionId Proposal Ynq question id
     * @return answer (YesNoDataType.Enum) corresponding to the question id.
     */
    private YesNoDataType.Enum getYNQAnswer(String questionId) {
        YesNoDataType.Enum answer = null;
        for (ProposalYnq proposalYnq : pdDoc.getDevelopmentProposal()
                .getProposalYnqs()) {
            if (proposalYnq.getQuestionId() != null
                    && proposalYnq.getQuestionId().equals(questionId)) {
                if (proposalYnq.getAnswer() != null) {
                    answer = (proposalYnq.getAnswer().equals(
                            S2SConstants.PROPOSAL_YNQ_ANSWER_Y) ? YesNoDataType.Y_YES
                                    : YesNoDataType.N_NO);
                }
            }
        }
        return answer;
    }

    /**
     *
     * This method YesNo data type Lobbying answers based on the ProposalYnq
     * QuestionId
     *
     * @return answer (YesNoDataType.Enum) corresponding to Ynq question id.
     */
    private YesNoDataType.Enum getLobbyingAnswer() {
        YesNoDataType.Enum answer = YesNoDataType.N_NO;
        for (ProposalPerson proposalPerson : pdDoc.getDevelopmentProposal()
                .getProposalPersons()) {
            if (proposalPerson.getProposalPersonRoleId() != null
                    && proposalPerson.getProposalPersonRoleId().equals(
                            PRINCIPAL_INVESTIGATOR)
                    || proposalPerson.getProposalPersonRoleId().equals(
                            PI_C0_INVESTIGATOR)) {
                for (ProposalPersonYnq personYnq : proposalPerson
                        .getProposalPersonYnqs()) {
                    if (personYnq != null) {
                        if (personYnq.getQuestionId() != null
                                && personYnq.getQuestionId().equals(
                                        PROPOSAL_YNQ_LOBBYING_ACTIVITIES)) {
                            if (personYnq.getAnswer() != null
                                    && personYnq.getAnswer().equals(
                                            S2SConstants.PROPOSAL_YNQ_ANSWER_Y)) {
                                return YesNoDataType.Y_YES;
                            }
                        }
                    }
                }
            }
        }
        return answer;
    }

    /**
     *
     * This method returns DivisionCode and ProgramCode information for the
     * NSFUnitConsideration type.
     *
     * @return NSFUnitConsideration object containing unit consideration
     * informations like Division Code and Program code.
     */
    private NSFUnitConsideration getNSFUnitConsideration() {
        NSFUnitConsideration nsfConsideration = NSFUnitConsideration.Factory
                .newInstance();
        nsfConsideration.setDivisionCode(pdDoc.getDevelopmentProposal()
                .getAgencyDivisionCode());
        nsfConsideration.setProgramCode(pdDoc.getDevelopmentProposal()
                .getAgencyProgramCode());
        return nsfConsideration;
    }

    /**
     *
     * This method returns attachment type for the form and it can be of type
     * Personal Data or Proprietary Information.
     *
     * @return AttachedFileDataType[] array of attachments based on the
     * narrative type code.
     */
    private AttachedFileDataType[] getAttachedFileDataTypes() {
        List<AttachedFileDataType> attachedFileDataTypeList = new ArrayList<AttachedFileDataType>();
        AttachedFileDataType attachedFileDataType = null;
        for (Narrative narrative : pdDoc.getDevelopmentProposal()
                .getNarratives()) {
            if (narrative.getNarrativeTypeCode() != null) {
                int narrativeTypeCode = Integer.parseInt(narrative
                        .getNarrativeTypeCode());
                if (narrativeTypeCode == PERSONAL_DATA
                        || narrativeTypeCode == PROPRIETARY_INFORMATION
                        || narrativeTypeCode == SINGLE_COPY_DOCUMENT) {
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType != null) {
                        attachedFileDataTypeList.add(attachedFileDataType);
                    }
                }
            }
        }
        return attachedFileDataTypeList.toArray(new AttachedFileDataType[attachedFileDataTypeList
                .size()]);
    }

    /**
     * This method creates {@link XmlObject} of type
     * {@link NSFCoverPage12Document} by populating data from the given
     * {@link ProposalDevelopmentDocument}
     *
     * @param proposalDevelopmentDocument for which the {@link XmlObject} needs
     * to be created
     * @return {@link XmlObject} which is generated using the given
     * {@link ProposalDevelopmentDocument}
     * @see
     * org.kuali.kra.s2s.generator.S2SFormGenerator#getFormObject(ProposalDevelopmentDocument)
     */
    @Override
    public XmlObject getFormObject(
            ProposalDevelopmentDocument proposalDevelopmentDocument) {
        this.pdDoc = proposalDevelopmentDocument;
        return getNSFCoverPage12();
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
        NSFCoverPage12 nsfCoverPage12 = (NSFCoverPage12) xmlObject;
        NSFCoverPage12Document nsfCoverPage12Document = NSFCoverPage12Document.Factory
                .newInstance();
        nsfCoverPage12Document.setNSFCoverPage12(nsfCoverPage12);
        return nsfCoverPage12Document;
    }
}
