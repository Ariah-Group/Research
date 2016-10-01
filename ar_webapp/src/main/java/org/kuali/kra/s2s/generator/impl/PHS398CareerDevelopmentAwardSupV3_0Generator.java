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

import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.NonUSCitizenshipDataType;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.SpecificAims;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.CandidateInformationAndGoals;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.ConsortiumContractualArrangements;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.DataSafetyMonitoringPlan;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.InclusionOfChildren;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.InclusionOfWomenAndMinorities;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.InsitutionalEnvironment;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.InstitutionalCommitment;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.IntroductionToApplication;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.KeyBiologicalAndOrChemicalResources;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.LettersOfSupport;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.MentoringPlan;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.ProgressReportPublicationList;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.ProtectionOfHumanSubjects;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.ResearchStrategy;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.ResourceSharingPlans;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.ResponsibleConductOfResearch;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.SelectAgentResearch;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.StatementsOfSupport;
import gov.grants.apply.forms.phs398CareerDevelopmentAwardSup30V30.PHS398CareerDevelopmentAwardSup30Document.PHS398CareerDevelopmentAwardSup30.CareerDevelopmentAwardAttachments.VertebrateAnimals;

import gov.grants.apply.system.attachmentsV10.AttachedFileDataType;
import gov.grants.apply.system.attachmentsV10.AttachmentGroupMin0Max100DataType;
import gov.grants.apply.system.globalLibraryV20.YesNoDataType;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.xmlbeans.XmlObject;
import org.kuali.kra.infrastructure.CitizenshipTypes;
import org.kuali.kra.proposaldevelopment.bo.Narrative;
import org.kuali.kra.proposaldevelopment.bo.ProposalPerson;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.s2s.util.S2SConstants;

import java.util.ArrayList;
import java.util.List;

/**
 * Class for generating the XML object for grants.gov
 * PHS398CareerDevelopmentAwardSup V3.0 Form is generated using XMLBean classes
 * and is based on PHS398ResearchPlanV3_0 schema.
 *
 */
public class PHS398CareerDevelopmentAwardSupV3_0Generator extends PHS398CareerDevelopmentAwardSupBaseGenerator {

    private static final Log LOG = LogFactory.getLog(PHS398CareerDevelopmentAwardSupV3_0Generator.class);

    private static final String PROPOSAL_TYPE_TASK_ORDER = "6"; // TODO, necessary?

    private XmlObject getPHS398CareerDevelopmentAwardSup() {
        PHS398CareerDevelopmentAwardSup30Document phs398CareerDevelopmentAwardSup30Document = PHS398CareerDevelopmentAwardSup30Document.Factory.newInstance();
        PHS398CareerDevelopmentAwardSup30 phs398CareerDevelopmentAwardSup30 = PHS398CareerDevelopmentAwardSup30.Factory.newInstance();
        phs398CareerDevelopmentAwardSup30.setFormVersion(S2SConstants.FORMVERSION_3_0);

        // Get the citizenship stuff
        getCitizenship(phs398CareerDevelopmentAwardSup30);

        // Get all the attachments
        phs398CareerDevelopmentAwardSup30.setCareerDevelopmentAwardAttachments(getCareerDevelopmentAwardAttachments());

        phs398CareerDevelopmentAwardSup30Document.setPHS398CareerDevelopmentAwardSup30(phs398CareerDevelopmentAwardSup30);
        return phs398CareerDevelopmentAwardSup30Document;
    }

    private void getCitizenship(PHS398CareerDevelopmentAwardSup30 form) {
        for (ProposalPerson proposalPerson : pdDoc.getDevelopmentProposal().getProposalPersons()) {
            if (proposalPerson.isInvestigator()) {

                CitizenshipTypes citizenShip = s2sUtilService.getCitizenship(proposalPerson);

                if (citizenShip.name().equals(CitizenshipTypes.PERMANENT_RESIDENT_OF_US.toString())) {
                    form.setCitizenshipIndicator(YesNoDataType.N_NO);
                    form.setIsNonUSCitizenship(NonUSCitizenshipDataType.PERMANENT_U_S_RESIDENT_VISA);
                } else if (citizenShip.name().equals(CitizenshipTypes.PERMANENT_RESIDENT_OF_US_PENDING.toString())) {
                    form.setCitizenshipIndicator(YesNoDataType.N_NO);
                    form.setIsNonUSCitizenship(NonUSCitizenshipDataType.TEMPORARY_U_S_VISA);
                    form.setPermanentResidentByAwardIndicator(YesNoDataType.Y_YES);
                } else if (citizenShip.name().equals(CitizenshipTypes.US_CITIZEN_OR_NONCITIZEN_NATIONAL.toString())) {
                     form.setCitizenshipIndicator(YesNoDataType.Y_YES);
                } else if (citizenShip.name().equals(CitizenshipTypes.NON_US_CITIZEN_WITH_TEMPORARY_VISA.toString())) {
                    form.setCitizenshipIndicator(YesNoDataType.N_NO);
                    form.setIsNonUSCitizenship(NonUSCitizenshipDataType.TEMPORARY_U_S_VISA);
                    form.setPermanentResidentByAwardIndicator(YesNoDataType.N_NO);
                }
            }
        }
        return;
    }

//	private ApplicationType getApplicationType() {
//		ApplicationType applicationType = ApplicationType.Factory.newInstance();
//		if (pdDoc.getDevelopmentProposal().getProposalTypeCode() != null
//				&& !pdDoc.getDevelopmentProposal().getProposalTypeCode()
//						.equals(PROPOSAL_TYPE_TASK_ORDER)) {
//			// Check !=6 to ensure that if proposalType='TASK ORDER", it must
//			// not set. THis is because the enum has no
//			// entry for TASK ORDER
//			applicationType.setTypeOfApplication(TypeOfApplication.Enum
//					.forInt(Integer.parseInt(pdDoc.getDevelopmentProposal()
//							.getProposalTypeCode())));
//		} else {
//			applicationType.setTypeOfApplication(TypeOfApplication.NEW);
//		}
//		return applicationType;
//	}

    /*
     * This method fetches all attachments related to Career development award.
     */
    private CareerDevelopmentAwardAttachments getCareerDevelopmentAwardAttachments() {
        CareerDevelopmentAwardAttachments careerDevelopmentAwardAttachments = CareerDevelopmentAwardAttachments.Factory.newInstance();
        AttachmentGroupMin0Max100DataType attachmentGroupMin0Max100DataType = AttachmentGroupMin0Max100DataType.Factory.newInstance();
        List<AttachedFileDataType> attachedFileList = new ArrayList<AttachedFileDataType>();
        AttachedFileDataType attachedFileDataType = null;
        
        for (Narrative narrative : pdDoc.getDevelopmentProposal().getNarratives()) {

            int narrativeTypeCode = Integer.parseInt(narrative.getNarrativeTypeCode());

            switch (narrativeTypeCode) {
                case NARRATIVE_TYPE_INTRODUCTION_TO_APPLICATION:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    IntroductionToApplication introductionToApplication = IntroductionToApplication.Factory.newInstance();
                    introductionToApplication.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setIntroductionToApplication(introductionToApplication);
                    break;
                case NARRATIVE_TYPE_CAREER_GOALS_AND_OBJECTIVES:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    CandidateInformationAndGoals attachment = CandidateInformationAndGoals.Factory.newInstance();
                    attachment.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setCandidateInformationAndGoals(attachment);
                    break;

                case NARRATIVE_TYPE_SPECIFIC_AIMS:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    SpecificAims specificAims = SpecificAims.Factory.newInstance();
                    specificAims.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setSpecificAims(specificAims);
                    break;
                case NARRATIVE_TYPE_PHS_CAREER_REASEARCH_STRATEGY:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    ResearchStrategy researchStrategy = ResearchStrategy.Factory.newInstance();
                    researchStrategy.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setResearchStrategy(researchStrategy);
                    break;
                case NARRATIVE_TYPE_PROGRESS_REPORT_PUBLICATION_LIST:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    ProgressReportPublicationList progressReportPublicationList = ProgressReportPublicationList.Factory.newInstance();
                    progressReportPublicationList.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setProgressReportPublicationList(progressReportPublicationList);
                    break;
                case NARRATIVE_TYPE_RESPONSIBLE_CONDUCT_OF_RESEARCH:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    ResponsibleConductOfResearch responsibleConductOfResearch = ResponsibleConductOfResearch.Factory.newInstance();
                    responsibleConductOfResearch.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setResponsibleConductOfResearch(responsibleConductOfResearch);
                    break;
                case NARRATIVE_TYPE_PHS398_MENTORING_PLAN:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    MentoringPlan mentoringPlan = MentoringPlan.Factory.newInstance();
                    mentoringPlan.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setMentoringPlan(mentoringPlan);
                    break;
                case NARRATIVE_TYPE_PHS_StatemensOfSupport:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    StatementsOfSupport statementsOfSupport = StatementsOfSupport.Factory.newInstance();
                    statementsOfSupport.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setStatementsOfSupport(statementsOfSupport);
                    break;
                case NARRATIVE_TYPE_PHS_LettersOfSupport:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    LettersOfSupport letters = LettersOfSupport.Factory.newInstance();
                    letters.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setLettersOfSupport(letters);
                    break;
                case NARRATIVE_TYPE_PHS_InsitutionalEnvironment:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    InsitutionalEnvironment insitutionalEnvironment = InsitutionalEnvironment.Factory.newInstance();
                    insitutionalEnvironment.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setInsitutionalEnvironment(insitutionalEnvironment);
                    break;
                case NARRATIVE_TYPE_PHS398_INSTITUTIONAL_COMMITMENT:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    InstitutionalCommitment institutionalCommitment = InstitutionalCommitment.Factory.newInstance();
                    institutionalCommitment.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setInstitutionalCommitment(institutionalCommitment);
                    break;
                case NARRATIVE_TYPE_PROTECTION_OF_HUMAN_SUBJECTS:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    ProtectionOfHumanSubjects protectionOfHumanSubjects = ProtectionOfHumanSubjects.Factory.newInstance();
                    protectionOfHumanSubjects.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setProtectionOfHumanSubjects(protectionOfHumanSubjects);
                    break;
                case NARRATIVE_TYPE_PHS_DataSafetyMonitoringPlan:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    DataSafetyMonitoringPlan safetyPlan = DataSafetyMonitoringPlan.Factory.newInstance();
                    safetyPlan.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setDataSafetyMonitoringPlan(safetyPlan);
                    break;
                case NARRATIVE_TYPE_INCLUSION_OF_WOMEN_AND_MINORITIES:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    InclusionOfWomenAndMinorities inclusionOfWomenAndMinorities = InclusionOfWomenAndMinorities.Factory.newInstance();
                    inclusionOfWomenAndMinorities.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setInclusionOfWomenAndMinorities(inclusionOfWomenAndMinorities);
                    break;
                case NARRATIVE_TYPE_INCLUSION_OF_CHILDREN:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    InclusionOfChildren inclusionOfChildren = InclusionOfChildren.Factory.newInstance();
                    inclusionOfChildren.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setInclusionOfChildren(inclusionOfChildren);
                    break;
                case NARRATIVE_TYPE_VERTEBRATE_ANIMALS:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    VertebrateAnimals vertebrateAnimals = VertebrateAnimals.Factory.newInstance();
                    vertebrateAnimals.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setVertebrateAnimals(vertebrateAnimals);
                    break;
                case NARRATIVE_TYPE_SELECT_AGENT_RESEARCH:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    SelectAgentResearch selectAgentResearch = SelectAgentResearch.Factory.newInstance();
                    selectAgentResearch.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setSelectAgentResearch(selectAgentResearch);
                    break;
                case NARRATIVE_TYPE_PHS_CAREER_CONSORTIUM_CONTRACT:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    ConsortiumContractualArrangements consortiumContractualArrangements = ConsortiumContractualArrangements.Factory.newInstance();
                    consortiumContractualArrangements.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setConsortiumContractualArrangements(consortiumContractualArrangements);
                    break;
                case NARRATIVE_TYPE_PHS_CAREER_RESOURCE_SHARING_PLAN:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    ResourceSharingPlans resourceSharingPlans = ResourceSharingPlans.Factory.newInstance();
                    resourceSharingPlans.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setResourceSharingPlans(resourceSharingPlans);
                    break;
                case NARRATIVE_TYPE_PHS_KeyBiologicalAndOrChemicalResources:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    KeyBiologicalAndOrChemicalResources resources = KeyBiologicalAndOrChemicalResources.Factory.newInstance();
                    resources.setAttFile(attachedFileDataType);
                    careerDevelopmentAwardAttachments.setKeyBiologicalAndOrChemicalResources(resources);
                    break;
                case NARRATIVE_TYPE_PHS_CAREER_APPENDIX:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    attachedFileList.add(attachedFileDataType);
                    break;
                default:
                    LOG.warn("**** UNHANDLED narrative type for CarrerDevelopmentAwardSup: " + Integer.parseInt(narrative.getNarrativeTypeCode()));
                    break;

            }

        }
        attachmentGroupMin0Max100DataType.setAttachedFileArray(attachedFileList.toArray(new AttachedFileDataType[0]));
        careerDevelopmentAwardAttachments.setAppendix(attachmentGroupMin0Max100DataType);
        return careerDevelopmentAwardAttachments;
    }

    /**
     * This method creates {@link XmlObject} of type
     * {@link PHS398ResearchPlan12Document} by populating data from the given
     * {@link ProposalDevelopmentDocument}
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
        return getPHS398CareerDevelopmentAwardSup();
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
        PHS398CareerDevelopmentAwardSup30 phs398CareerDevelopmentAwardSup30 = PHS398CareerDevelopmentAwardSup30.Factory
                .newInstance();
        PHS398CareerDevelopmentAwardSup30Document phs398CareerDevelopmentAwardSupDocument = PHS398CareerDevelopmentAwardSup30Document.Factory
                .newInstance();
        phs398CareerDevelopmentAwardSupDocument
                .setPHS398CareerDevelopmentAwardSup30(phs398CareerDevelopmentAwardSup30);
        return phs398CareerDevelopmentAwardSupDocument;
    }

}
