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

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.xmlbeans.XmlObject;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.s2s.generator.S2SBaseFormGenerator;
import org.kuali.kra.s2s.util.S2SConstants;

import gov.grants.apply.forms.phs398ResearchPlan12V12.PHS398ResearchPlan12Document;
import gov.grants.apply.forms.phsInclusionEnrollmentReportV10.PHSInclusionEnrollmentReportDocument;
import gov.grants.apply.forms.phsInclusionEnrollmentReportV10.PHSInclusionEnrollmentReportDocument.PHSInclusionEnrollmentReport;
import gov.grants.apply.forms.phsInclusionEnrollmentReportV10.PHSInclusionEnrollmentReportDocument.PHSInclusionEnrollmentReport.Study;
import gov.grants.apply.system.globalLibraryV20.YesNoDataType;

/**
 * Class for generating the XML object for grants.gov
 * PHS398InclusionEnrollmentReport1_0 Form is generated using XMLBean classes
 * and is based on PHS398InclusionEnrollmentReport schema.
 *
 * @author Kuali Research Administration Team (kualidev@oncourse.iu.edu)
 */
public class PHS398InclusionEnrollmentReport1_0Generator extends S2SBaseFormGenerator {

    private static final Log LOG = LogFactory.getLog(PHS398InclusionEnrollmentReport1_0Generator.class);

    private XmlObject getPhsInclusionEnrollmentReport() {
        PHSInclusionEnrollmentReportDocument phsInclusionEnrollmentReportDocument = PHSInclusionEnrollmentReportDocument.Factory.newInstance();
        PHSInclusionEnrollmentReport phsInclusionEnrollmentReport = PHSInclusionEnrollmentReport.Factory.newInstance();
        phsInclusionEnrollmentReport.setFormVersion(S2SConstants.FORMVERSION_1_0);

        Study study = Study.Factory.newInstance();
        study.setStudyTitle("Sample Study");
        study.setDelayedOnsetStudy(YesNoDataType.Y_YES);

        List<Study> studyList = new ArrayList<Study>();
        studyList.add(study);

        phsInclusionEnrollmentReport.setStudyArray(studyList.toArray(new Study[0]));

        phsInclusionEnrollmentReportDocument.setPHSInclusionEnrollmentReport(phsInclusionEnrollmentReport);

        return phsInclusionEnrollmentReportDocument;
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
        return getPhsInclusionEnrollmentReport();
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
        PHSInclusionEnrollmentReport report = PHSInclusionEnrollmentReport.Factory.newInstance();
        PHSInclusionEnrollmentReportDocument document = PHSInclusionEnrollmentReportDocument.Factory.newInstance();
        document.setPHSInclusionEnrollmentReport(report);
        return document;
    }

}
