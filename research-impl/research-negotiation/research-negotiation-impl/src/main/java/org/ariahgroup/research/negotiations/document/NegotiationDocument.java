/*
 * Copyright 2005-2014 The Kuali Foundation
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
 *
 * ------------------------------------------------------
 * Updates made after January 1, 2015 are :
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
package org.ariahgroup.research.negotiations.document;

import org.apache.commons.lang.StringUtils;
import org.kuali.kra.bo.DocumentCustomData;
import org.kuali.kra.document.ResearchDocumentBase;
import org.kuali.kra.infrastructure.Constants;
import org.ariahgroup.research.negotiations.bo.Negotiation;
import org.ariahgroup.research.negotiations.bo.NegotiationActivity;
import org.ariahgroup.research.negotiations.bo.NegotiationActivityAttachment;
import org.kuali.rice.coreservice.framework.parameter.ParameterConstants;
import org.kuali.rice.coreservice.framework.parameter.ParameterConstants.COMPONENT;
import org.kuali.rice.coreservice.framework.parameter.ParameterConstants.NAMESPACE;
import org.kuali.rice.kew.api.KewApiConstants;
import org.kuali.rice.krad.util.ObjectUtils;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.rice.coreservice.framework.parameter.ParameterService;

/**
 * This class...
 */
@NAMESPACE(namespace = Constants.MODULE_NAMESPACE_NEGOTIATION)
@COMPONENT(component = ParameterConstants.DOCUMENT_COMPONENT)
public class NegotiationDocument extends ResearchDocumentBase implements Serializable {

    /**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = 2635757819118105L;

    public static final String DOCUMENT_TYPE_CODE = "NGT";

    private List<Negotiation> negotiationList;
    private String docStatusCode;

    /**
     *
     * Constructs a NegotiationDocument.java.
     */
    public NegotiationDocument() {
        negotiationList = new ArrayList<Negotiation>();
        negotiationList.add(new Negotiation());
    }

    /**
     *
     * This method returns a new instance of NegotiationDocument.
     *
     * @return
     */
    public NegotiationDocument newInstance() {
        return new NegotiationDocument();
    }

    /**
     *
     * @see org.kuali.kra.document.ResearchDocumentBase#initialize()
     */
    @Override
    public void initialize() {
        super.initialize();
    }

    public Negotiation getNegotiation() {
        if (getNegotiationList().isEmpty()) {
            getNegotiationList().add(new Negotiation());
        }
        return getNegotiationList().get(0);
    }

    public String getDocStatusCode() {
        return docStatusCode;
    }

    public void setDocStatusCode(String docStatusCode) {
        this.docStatusCode = docStatusCode;
    }

    /**
     * @see org.kuali.kra.document.ResearchDocumentBase#getDocumentTypeCode()
     */
    @Override
    public String getDocumentTypeCode() {
        return DOCUMENT_TYPE_CODE;
    }

    @Override
    public void prepareForSave() {
        super.prepareForSave();
        if (ObjectUtils.isNull(this.getVersionNumber())) {
            this.setVersionNumber(Long.valueOf(0));
        }
        String routeStatusCode = this.getDocumentHeader().getWorkflowDocument().getStatus().getCode();
        if (StringUtils.isNotBlank(routeStatusCode) && routeStatusCode.equals(KewApiConstants.ROUTE_HEADER_INITIATED_CD)) {
            // route status from I to S will not update document, so do it here with correct status
            this.setDocStatusCode(KewApiConstants.ROUTE_HEADER_SAVED_CD);
        } else {
            this.setDocStatusCode(routeStatusCode);
        }
    }

    /**
     * This method is to check whether rice async routing is ok now. Close to
     * hack. called by holdingpageaction Different document type may have
     * different routing set up, so each document type can implement its own
     * isProcessComplete
     *
     * @return
     */
    @Override
    public boolean isProcessComplete() {
        boolean isComplete = false;

        if (getDocumentHeader().hasWorkflowDocument()) {
            String docRouteStatus = getDocumentHeader().getWorkflowDocument().getStatus().getCode();
            if (KewApiConstants.ROUTE_HEADER_FINAL_CD.equals(docRouteStatus)) {
                isComplete = true;
            }
        }

        return isComplete;
    }

    /**
     *
     * @see
     * org.kuali.core.bo.PersistableBusinessObjectBase#buildListOfDeletionAwareLists()
     */
    @SuppressWarnings("unchecked")
    @Override
    public List buildListOfDeletionAwareLists() {
        List managedLists = super.buildListOfDeletionAwareLists();

        managedLists.add(negotiationList);

        managedLists.add(getNegotiation().getActivities());

        List<NegotiationActivityAttachment> attachments = new ArrayList<NegotiationActivityAttachment>();
        for (NegotiationActivity activity : getNegotiation().getActivities()) {
            attachments.addAll(activity.getAttachments());
        }
        managedLists.add(attachments);

        return managedLists;
    }

    public List<Negotiation> getNegotiationList() {
        return negotiationList;
    }

    public void setNegotiationList(List<Negotiation> negotiationList) {
        this.negotiationList = negotiationList;
    }

    @Override
    public List<? extends DocumentCustomData> getDocumentCustomData() {
        return getNegotiation().getNegotiationCustomDataList();
    }

    @Override
    public String getDocumentBoNumber() {
        return getNegotiation().getNegotiationId().toString();

    }

    public boolean isDefaultDocumentDescription() {
        return KraServiceLocator.getService(ParameterService.class).getParameterValueAsBoolean(NegotiationDocument.class, Constants.ARIAH_NEGO_HIDE_AND_DEFAULT_NEGO_DOC_DESC);
    }

    public boolean isNegotiationAddActivityPanelOpenedByDefault() {
        return KraServiceLocator.getService(ParameterService.class).getParameterValueAsBoolean(org.kuali.kra.negotiations.document.NegotiationDocument.class, Constants.ARIAH_NEGO_ADD_ACTIVITY_PANEL_OPENED, false);
    }

    public void defaultDocumentDescription() {
        Negotiation negotiation = getNegotiation();

        String negAgreeType = negotiation.getNegotiationAgreementType() != null ? negotiation.getNegotiationAgreementType().getDescription() : "";
        String negotiatorName = negotiation.getNegotiator() != null ? negotiation.getNegotiator().getFullName() : "";
        String negoStatus = negotiation.getNegotiationStatus() != null ? negotiation.getNegotiationStatus().getDescription() : "";

        String desc = String.format("Negotiation Id: %s, Negotiator: %s; Agreement Type: %s; Status: %s",
                negotiation.getNegotiationId(),
                negotiatorName,
                negAgreeType,
                negoStatus);

        getDocumentHeader().setDocumentDescription(desc);
    }
}
