/*
 * Copyright 2005-2013 The Kuali Foundation.
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

import gov.grants.apply.forms.phs398ResearchPlan13V13.PHS398ResearchPlan13Document;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments.ConsortiumContractualArrangements;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments.InclusionOfChildren;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments.InclusionOfWomenAndMinorities;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments.IntroductionToApplication;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments.KeyBiologicalAndOrChemicalResources;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments.LettersOfSupport;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments.MultiplePDPILeadershipPlan;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments.ProgressReportPublicationList;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments.ProtectionOfHumanSubjects;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments.ResearchStrategy;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments.ResourceSharingPlans;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments.SelectAgentResearch;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments.SpecificAims;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments.VertebrateAnimals;
import gov.grants.apply.forms.phs398ResearchPlan30V30.PHS398ResearchPlan30Document.PHS398ResearchPlan30.ResearchPlanAttachments.DataSafetyMonitoringPlan;
import gov.grants.apply.system.attachmentsV10.AttachedFileDataType;
import gov.grants.apply.system.attachmentsV10.AttachmentGroupMin0Max100DataType;

import java.io.ByteArrayInputStream;

import org.apache.xmlbeans.XmlObject;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.kra.proposaldevelopment.bo.Narrative;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.s2s.util.S2SConstants;

/**
 * Class for generating the XML object for grants.gov PHS398ResearchPlanV3.0.
 * Form is generated using XMLBean classes and is based on PHS398ResearchPlan
 * V3_0 schema.
 *
 */
public class PHS398ResearchPlan_V3_0_Generator extends PHS398ResearchPlanBaseGenerator {

    /**
     *
     * This method gives the list of attachments for PHS398ResearchPlan form
     *
     * @return phsResearchPlanDocument {@link XmlObject} of type
     * PHS398ResearchPlan13Document.
     */
    private PHS398ResearchPlan30Document getPHS398ResearchPlan() {

        PHS398ResearchPlan30Document phsResearchPlanDocument = PHS398ResearchPlan30Document.Factory.newInstance();
        PHS398ResearchPlan30 phsResearchPlan = PHS398ResearchPlan30.Factory.newInstance();
        phsResearchPlan.setFormVersion(S2SConstants.FORMVERSION_3_0);
        ResearchPlanAttachments researchPlanAttachments = ResearchPlanAttachments.Factory.newInstance();
        getNarrativeAttachments(researchPlanAttachments);

        AttachmentGroupMin0Max100DataType attachmentGroupMin0Max100DataType = AttachmentGroupMin0Max100DataType.Factory
                .newInstance();
        attachmentGroupMin0Max100DataType.setAttachedFileArray(getAttachedFileDataTypes());
        researchPlanAttachments.setAppendix(attachmentGroupMin0Max100DataType);
        phsResearchPlan.setResearchPlanAttachments(researchPlanAttachments);
        phsResearchPlanDocument.setPHS398ResearchPlan30(phsResearchPlan);

        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(phsResearchPlanDocument.toString().getBytes());
        sortAttachments(byteArrayInputStream);
        return phsResearchPlanDocument;
    }

    private void getNarrativeAttachments(ResearchPlanAttachments researchPlanAttachments) {

        ResearchStrategy researchStrategy = ResearchStrategy.Factory.newInstance();

        for (Narrative narrative : pdDoc.getDevelopmentProposal().getNarratives()) {

            AttachedFileDataType attachedFileDataType = null;

            switch (Integer.parseInt(narrative.getNarrativeTypeCode())) {

                case DATA_AND_SAFETY_MONITORING_PLAN:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    DataSafetyMonitoringPlan dataAndSafetyMonitoringPlan = DataSafetyMonitoringPlan.Factory.newInstance();
                    dataAndSafetyMonitoringPlan.setAttFile(attachedFileDataType);
                    researchPlanAttachments.setDataSafetyMonitoringPlan(dataAndSafetyMonitoringPlan);

                    break;
                case INTRODUCTION_TO_APPLICATION:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    IntroductionToApplication introductionToApplication = IntroductionToApplication.Factory.newInstance();
                    introductionToApplication.setAttFile(attachedFileDataType);
                    researchPlanAttachments.setIntroductionToApplication(introductionToApplication);
                    break;
                case SPECIFIC_AIMS:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    SpecificAims specificAims = SpecificAims.Factory.newInstance();
                    specificAims.setAttFile(attachedFileDataType);
                    researchPlanAttachments.setSpecificAims(specificAims);
                    break;
                case RESEARCH_STRATEGY:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    researchStrategy.setAttFile(attachedFileDataType);
                    break;
                case PROGRESS_REPORT_PUBLICATION_LIST:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    ProgressReportPublicationList progressReportPublicationList = ProgressReportPublicationList.Factory.newInstance();
                    progressReportPublicationList.setAttFile(attachedFileDataType);
                    researchPlanAttachments.setProgressReportPublicationList(progressReportPublicationList);
                    break;
                case PROTECTION_OF_HUMAN_SUBJECTS:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    ProtectionOfHumanSubjects protectionOfHumanSubjects = ProtectionOfHumanSubjects.Factory.newInstance();
                    protectionOfHumanSubjects.setAttFile(attachedFileDataType);
                    researchPlanAttachments.setProtectionOfHumanSubjects(protectionOfHumanSubjects);
                    break;
                case INCLUSION_OF_WOMEN_AND_MINORITIES:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    InclusionOfWomenAndMinorities inclusionOfWomenAndMinorities = InclusionOfWomenAndMinorities.Factory.newInstance();
                    inclusionOfWomenAndMinorities.setAttFile(attachedFileDataType);
                    researchPlanAttachments.setInclusionOfWomenAndMinorities(inclusionOfWomenAndMinorities);
                    break;
                case KEY_BIOLOGICAL_OR_CHEMICAL:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    KeyBiologicalAndOrChemicalResources keyBio = KeyBiologicalAndOrChemicalResources.Factory.newInstance();
                    keyBio.setAttFile(attachedFileDataType);
                    researchPlanAttachments.setKeyBiologicalAndOrChemicalResources(keyBio);
                    break;

                case INCLUSION_OF_CHILDREN:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    InclusionOfChildren inclusionOfChildren = InclusionOfChildren.Factory.newInstance();
                    inclusionOfChildren.setAttFile(attachedFileDataType);
                    researchPlanAttachments.setInclusionOfChildren(inclusionOfChildren);
                    break;
                case VERTEBRATE_ANIMALS:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    VertebrateAnimals vertebrateAnimals = VertebrateAnimals.Factory.newInstance();
                    vertebrateAnimals.setAttFile(attachedFileDataType);
                    researchPlanAttachments.setVertebrateAnimals(vertebrateAnimals);
                    break;
                case SELECT_AGENT_RESEARCH:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    SelectAgentResearch selectAgentResearch = SelectAgentResearch.Factory.newInstance();
                    selectAgentResearch.setAttFile(attachedFileDataType);
                    researchPlanAttachments.setSelectAgentResearch(selectAgentResearch);
                    break;
                case MULTIPLE_PI_LEADERSHIP_PLAN:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    MultiplePDPILeadershipPlan multiplePILeadershipPlan = MultiplePDPILeadershipPlan.Factory.newInstance();
                    multiplePILeadershipPlan.setAttFile(attachedFileDataType);
                    researchPlanAttachments.setMultiplePDPILeadershipPlan(multiplePILeadershipPlan);
                    break;
                case CONSORTIUM_CONTRACTUAL_ARRANGEMENTS:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    ConsortiumContractualArrangements contractualArrangements = ConsortiumContractualArrangements.Factory.newInstance();
                    contractualArrangements.setAttFile(attachedFileDataType);
                    researchPlanAttachments.setConsortiumContractualArrangements(contractualArrangements);
                    break;
                case LETTERS_OF_SUPPORT:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    LettersOfSupport lettersOfSupport = LettersOfSupport.Factory.newInstance();
                    lettersOfSupport.setAttFile(attachedFileDataType);
                    researchPlanAttachments.setLettersOfSupport(lettersOfSupport);
                    break;
                case RESOURCE_SHARING_PLANS:
                    attachedFileDataType = getAttachedFileType(narrative);
                    if (attachedFileDataType == null) {
                        continue;
                    }
                    ResourceSharingPlans resourceSharingPlans = ResourceSharingPlans.Factory.newInstance();
                    resourceSharingPlans.setAttFile(attachedFileDataType);
                    researchPlanAttachments.setResourceSharingPlans(resourceSharingPlans);
                    break;

                default:
                    System.out.println("**** PHS398ResearchPlan_V3_0_Generator : UNHANDLED narrative attachment type: " + narrative.getNarrativeTypeCode());
                    break;
            }
        }
        researchPlanAttachments.setResearchStrategy(researchStrategy);
    }

    /**
     *
     * This method is used to get List of appendix attachments from
     * NarrativeAttachmentList
     *
     * @return AttachedFileDataType[] array of attachments for the corresponding
     * narrative type code APPENDIX.
     */
    private AttachedFileDataType[] getAttachedFileDataTypes() {
        int size = 0;
        AttachedFileDataType[] attachedFileDataTypes = null;
        DevelopmentProposal developmentProposal = pdDoc.getDevelopmentProposal();
        for (Narrative narrative : developmentProposal.getNarratives()) {
            if (narrative.getNarrativeTypeCode() != null && Integer.parseInt(narrative.getNarrativeTypeCode()) == APPENDIX) {
                size++;
            }
        }
        attachedFileDataTypes = new AttachedFileDataType[size];
        int attachments = 0;
        for (Narrative narrative : developmentProposal.getNarratives()) {
            if (narrative.getNarrativeTypeCode() != null && Integer.parseInt(narrative.getNarrativeTypeCode()) == APPENDIX) {
                attachedFileDataTypes[attachments] = getAttachedFileType(narrative);
                attachments++;
            }
        }
        return attachedFileDataTypes;
    }

    /**
     * This method creates {@link XmlObject} of type
     * {@link PHS398ResearchPlan13Document} by populating data from the given
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
    public XmlObject getFormObject(ProposalDevelopmentDocument proposalDevelopmentDocument) {
        this.pdDoc = proposalDevelopmentDocument;
        return getPHS398ResearchPlan();
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
        PHS398ResearchPlan30 phsResearchPlan = (PHS398ResearchPlan30) xmlObject;
        PHS398ResearchPlan30Document phsResearchPlanDocument = PHS398ResearchPlan30Document.Factory.newInstance();
        phsResearchPlanDocument.setPHS398ResearchPlan30(phsResearchPlan);
        return phsResearchPlanDocument;
    }
}
