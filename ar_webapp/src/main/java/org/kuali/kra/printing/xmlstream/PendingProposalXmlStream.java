/*
 * Copyright 2005-2014 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.osedu.org/licenses/ECL-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.printing.xmlstream;

import noNamespace.CurrentAndPendingSupportDocument;
import noNamespace.CurrentAndPendingSupportDocument.CurrentAndPendingSupport;
import noNamespace.CurrentAndPendingSupportDocument.CurrentAndPendingSupport.PendingReportCEColumnNames;
import noNamespace.CurrentAndPendingSupportDocument.CurrentAndPendingSupport.PendingSupport;
import noNamespace.CurrentAndPendingSupportDocument.CurrentAndPendingSupport.PendingSupport.PendingReportCEColomnValues;
import org.apache.xmlbeans.XmlObject;
import org.kuali.kra.bo.KraPersistableBusinessObjectBase;
import org.kuali.kra.common.printing.PendingReportBean;
import org.kuali.kra.document.ResearchDocumentBase;
import org.kuali.kra.institutionalproposal.customdata.InstitutionalProposalCustomData;
import org.kuali.kra.institutionalproposal.home.InstitutionalProposal;
import org.kuali.kra.printing.service.CurrentAndPendingReportService;

import java.util.*;

/**
 * This class generates XML that confirms with the XSD related to Pending
 * Proposal Report. The data for XML is derived from
 * {@link ResearchDocumentBase} and {@link Map} of details passed to the class.
 *
 */
public class PendingProposalXmlStream extends CurrentAndPendingBaseStream {

    private ArrayList columsList;
    private static final String PROP_SEQ_STATUS = "ACTIVE";
    private static final String PROP_NUMBER = "proposalNumber";
    private static final int PROP_TYPE_CONTINUATION = 4;
    private static final int PROP_TYPE_TASK_ORDER = 6;
    private static final int PROP_PENDING_STATUS = 1;

    /**
     * This method generates XML for Pending Proposal Report. It uses data
     * passed in {@link ResearchDocumentBase} for populating the XML nodes. The
     * XMl once generated is returned as {@link XmlObject}
     *
     * @param printableBusinessObject using which XML is generated
     * @param reportParameters parameters related to XML generation
     * @return {@link XmlObject} representing the XML
     */
    public Map<String, XmlObject> generateXmlStream(
            KraPersistableBusinessObjectBase printableBusinessObject, Map<String, Object> reportParameters) {
        Map<String, XmlObject> xmlObjectList = new LinkedHashMap<String, XmlObject>();
        CurrentAndPendingSupportDocument currentAndPendingSupportDocument = CurrentAndPendingSupportDocument.Factory.newInstance();
        CurrentAndPendingSupport currentAndPendingSupport = CurrentAndPendingSupport.Factory
                .newInstance();
        List<PendingReportBean> pendingReportBeans = (List<PendingReportBean>) reportParameters.get(CurrentAndPendingReportService.PENDING_REPORT_BEANS_KEY);

        PendingReportCEColumnNames pendingReportCEColumnNames = getPendingSupportCustomColumnName(pendingReportBeans);

        PendingSupport[] pendingSupports = getPendingSupportInformation(pendingReportBeans);

        currentAndPendingSupport.setPersonName((String) reportParameters.get(CurrentAndPendingReportService.REPORT_PERSON_NAME_KEY));
        currentAndPendingSupport.setPendingSupportArray(pendingSupports);
        currentAndPendingSupport.setPendingReportCEColumnNames(pendingReportCEColumnNames);
        currentAndPendingSupportDocument.setCurrentAndPendingSupport(currentAndPendingSupport);
        xmlObjectList.put(CurrentAndPendingReportService.PENDING_REPORT_TYPE, currentAndPendingSupportDocument);
        return xmlObjectList;
    }

    private PendingReportCEColumnNames getPendingSupportCustomColumnName(List<PendingReportBean> pendingReportBeans) {
        PendingReportCEColumnNames pendingReportCEColumnNames = PendingReportCEColumnNames.Factory.newInstance();
        columsList = new ArrayList<String>();
        String columName = "";
        for (PendingReportBean bean : pendingReportBeans) {
            if (bean.getInstitutionalProposalCustomDataList() != null) {
                for (InstitutionalProposalCustomData institutionalProposalCustomData : bean.getInstitutionalProposalCustomDataList()) {
                    if (institutionalProposalCustomData.getCustomAttribute() != null) {
                        columName = institutionalProposalCustomData.getCustomAttribute().getLabel();
                    }
                    if (!columsList.contains(columName)) {
                        columsList.add(columName);
                    }
                }
            }
        }
        for (int columnLabelIndex = 0; columnLabelIndex < columsList.size(); columnLabelIndex++) {
            if (columnLabelIndex == 0) {
                pendingReportCEColumnNames.setCEColumnName1(columsList.get(columnLabelIndex).toString());
            }

            if (columnLabelIndex == 1) {
                pendingReportCEColumnNames.setCEColumnName2(columsList.get(columnLabelIndex).toString());
            }

            if (columnLabelIndex == 2) {
                pendingReportCEColumnNames.setCEColumnName3(columsList.get(columnLabelIndex).toString());
            }

            if (columnLabelIndex == 3) {
                pendingReportCEColumnNames.setCEColumnName4(columsList.get(columnLabelIndex).toString());
            }

            if (columnLabelIndex == 4) {
                pendingReportCEColumnNames.setCEColumnName5(columsList.get(columnLabelIndex).toString());
            }

            if (columnLabelIndex == 5) {
                pendingReportCEColumnNames.setCEColumnName6(columsList.get(columnLabelIndex).toString());
            }

            if (columnLabelIndex == 6) {
                pendingReportCEColumnNames.setCEColumnName7(columsList.get(columnLabelIndex).toString());
            }

            if (columnLabelIndex == 7) {
                pendingReportCEColumnNames.setCEColumnName8(columsList.get(columnLabelIndex).toString());
            }

            if (columnLabelIndex == 8) {
                pendingReportCEColumnNames.setCEColumnName9(columsList.get(columnLabelIndex).toString());
            }

            if (columnLabelIndex == 9) {
                pendingReportCEColumnNames.setCEColumnName10(columsList.get(columnLabelIndex).toString());
            }

        }
        return pendingReportCEColumnNames;
    }

    private PendingSupport[] getPendingSupportInformation(List<PendingReportBean> pendingReportBeans) {
        List<PendingSupport> pendingSupports = new ArrayList<PendingSupport>();
        for (PendingReportBean bean : pendingReportBeans) {
            Map<String, String> cutomDataValueMap = new HashMap<String, String>();
            Map<String, String> proposalNumberMap = new HashMap<String, String>();
            List<InstitutionalProposal> institutionalProposalList = new ArrayList<InstitutionalProposal>();
            proposalNumberMap.put(PROP_NUMBER, String.valueOf(bean.getProposalNumber()));
            institutionalProposalList = (List<InstitutionalProposal>) getBusinessObjectService()
                    .findMatching(InstitutionalProposal.class, proposalNumberMap);
            for (InstitutionalProposal institutionalProposal : institutionalProposalList) {

                if (institutionalProposal.getProposalSequenceStatus().equals(PROP_SEQ_STATUS) && institutionalProposal.getStatusCode() == PROP_PENDING_STATUS
                        && institutionalProposal.getProposalTypeCode() != PROP_TYPE_CONTINUATION && institutionalProposal.getProposalTypeCode() != PROP_TYPE_TASK_ORDER) {
                    PendingSupport pendingSupport = PendingSupport.Factory.newInstance();
                    pendingSupports.add(pendingSupport);
                    if (bean.getProposalTitle() != null) {
                        pendingSupport.setTitle(bean.getProposalTitle());
                    }
                    if (bean.getTotalDirectCostTotal() != null) {
                        pendingSupport.setTotalDirectCost(bean.getTotalDirectCostTotal().bigDecimalValue());
                    }
                    if (bean.getTotalIndirectCostTotal() != null) {
                        pendingSupport.setTotalIndirectCost(bean.getTotalIndirectCostTotal().bigDecimalValue());
                    }
                    if (bean.getTotalRequestedCost() != null) {
                        pendingSupport.setTotalRequested(bean.getTotalRequestedCost().bigDecimalValue());
                    }
                    if (bean.getProposalNumber() != null) {
                        pendingSupport.setProposalNumber(bean
                                .getProposalNumber());
                    }
                    if (bean.getRequestedEndDateTotal() != null) {
                        pendingSupport
                                .setEndDate(dateTimeService.getCalendar(bean
                                                .getRequestedEndDateTotal()));
                    }
                    if (bean.getRequestedStartDateInitial() != null) {
                        pendingSupport.setEffectiveDate(dateTimeService
                                .getCalendar(bean
                                        .getRequestedStartDateInitial()));
                    }
                    if (bean.getSponsorName() != null) {
                        pendingSupport.setAgency(bean.getSponsorName());
                    }
                    if (bean.getRoleCode() != null) {
                        pendingSupport.setPI(bean.getRoleCode());
                    }
                    if (bean.getTotalEffort() != null) {
                        pendingSupport.setPercentageEffort(bean.getTotalEffort().bigDecimalValue());
                    }
                    if (bean.getAcademicYearEffort() != null) {
                        pendingSupport.setAcademicYearEffort(bean.getAcademicYearEffort().bigDecimalValue());
                    }
                    if (bean.getCalendarYearEffort() != null) {
                        pendingSupport.setCalendarYearEffort(bean.getCalendarYearEffort().bigDecimalValue());
                    }
                    if (bean.getSummerEffort() != null) {
                        pendingSupport.setSummerYearEffort(bean.getSummerEffort().bigDecimalValue());
                    }
                    if (bean.getInstitutionalProposalCustomDataList() != null) {
                        List<PendingReportCEColomnValues> pendingReportCEColomnValues = new ArrayList<PendingReportCEColomnValues>();
                        for (InstitutionalProposalCustomData institutionalProposalCustomData : bean.getInstitutionalProposalCustomDataList()) {
                            if (institutionalProposalCustomData.getCustomAttribute() != null && institutionalProposalCustomData.getValue() != null && institutionalProposalCustomData.getCustomAttribute().getLabel() != null) {
                                cutomDataValueMap.put(institutionalProposalCustomData.getCustomAttribute().getLabel(), institutionalProposalCustomData.getValue());
                            }
                        }
                        for (int columnLabelIndex = 0; columnLabelIndex < columsList.size(); columnLabelIndex++) {
                            PendingReportCEColomnValues pendingReportCEColomnValue = PendingReportCEColomnValues.Factory.newInstance();
                            if (cutomDataValueMap.get(columsList.get(columnLabelIndex)) != null) {
                                pendingReportCEColomnValue.setPendingReportCEColumnValue(cutomDataValueMap.get(columsList.get(columnLabelIndex)));
                            } else {
                                pendingReportCEColomnValue.setPendingReportCEColumnValue("");
                            }
                            pendingReportCEColomnValues.add(pendingReportCEColomnValue);
                        }
                        pendingSupport.setPendingReportCEColomnValuesArray(pendingReportCEColomnValues.toArray(new PendingReportCEColomnValues[0]));
                    }
                }
            }
        }
        return pendingSupports.toArray(new PendingSupport[0]);
    }

}
