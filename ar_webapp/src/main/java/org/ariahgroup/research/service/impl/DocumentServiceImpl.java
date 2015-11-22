/**
 * Copyright 2015 The Ariah Group, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */
package org.ariahgroup.research.service.impl;

import java.util.HashMap;
import java.util.Map;
import org.apache.log4j.Logger;
import org.ariahgroup.research.service.DevProposalChangeDataService;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.kra.proposaldevelopment.bo.ProposalChangedData;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.rice.coreservice.framework.parameter.ParameterConstants;
import org.kuali.rice.coreservice.framework.parameter.ParameterService;
import org.kuali.rice.krad.document.Document;
import org.kuali.rice.krad.exception.ValidationException;
import org.kuali.rice.krad.rules.rule.event.KualiDocumentEvent;
import org.springframework.dao.OptimisticLockingFailureException;

/**
 *
 * @author
 */
public class DocumentServiceImpl extends org.kuali.rice.krad.service.impl.DocumentServiceImpl {

    private static Logger LOG = Logger.getLogger(DocumentServiceImpl.class);
    private DevProposalChangeDataService devProposalChangeDataService;

    /**
     * Validates and persists a document.
     */
    @Override
    public Document validateAndPersistDocument(Document document, KualiDocumentEvent event) throws ValidationException {
        if (document == null) {
            LOG.error("document passed to validateAndPersist was null");
            throw new IllegalArgumentException("invalid (null) document");
        }
        if (LOG.isDebugEnabled()) {
            LOG.debug("validating and preparing to persist document " + document.getDocumentNumber());
        }

        document.validateBusinessRules(event);
        document.prepareForSave(event);

        ParameterService paramService = KraServiceLocator.getService(ParameterService.class);
        boolean logData = paramService.getParameterValueAsBoolean(Constants.MODULE_NAMESPACE_PROPOSAL_DEVELOPMENT, ParameterConstants.DOCUMENT_COMPONENT, Constants.ARIAH_PROPDEV_LOG_CHANGEDATA_ENABLED, false);
        Map<String, ProposalChangedData> changedData = new HashMap<String, ProposalChangedData>();

        if (logData) {
            if (document instanceof ProposalDevelopmentDocument) {
                DevelopmentProposal developmentProposalLocal = ((ProposalDevelopmentDocument) document).getDevelopmentProposal();
                changedData = getProposalChangeDataService().getChangedFields(developmentProposalLocal);
            }
        }
        // save the document
        Document savedDocument = null;
        try {
            if (LOG.isInfoEnabled()) {
                LOG.info("storing document " + document.getDocumentNumber());
            }
            savedDocument = getDocumentDao().save(document);

            if (logData && !changedData.isEmpty()) {
                getProposalChangeDataService().saveChangeData(changedData);
                // if (StringUtils.equals(CustomConstants.PROPOSAL_STATUS_CODE_ACCEPTED, developmentProposalExtension.getProposalStatusCode())) {
                getProposalChangeDataService().sendChangeDataNotification(changedData.values(),
                        ((ProposalDevelopmentDocument) document).getDevelopmentProposal());
                // }
            }

        } catch (OptimisticLockingFailureException e) {
            LOG.error("exception encountered on store of document " + e.getMessage());
            throw e;
        }

        boolean notesSaved = saveDocumentNotes(document);
        if (!notesSaved) {
            if (LOG.isInfoEnabled()) {
                LOG.info(
                        "Notes not saved during validateAndPersistDocument, likely means that note save needs to be deferred because note target is not ready.");
            }
        }

        savedDocument.postProcessSave(event);

        return savedDocument;
    }

    /**
     * @return the devProposalChangeDataService
     */
    public DevProposalChangeDataService getProposalChangeDataService() {
        if (devProposalChangeDataService == null) {
            devProposalChangeDataService = KraServiceLocator.getService(DevProposalChangeDataService.class);
        }
        return devProposalChangeDataService;
    }

    /**
     * @param devProposalChangeDataService the devProposalChangeDataService to
     * set
     */
    public void setProposalChangeDataService(DevProposalChangeDataService devProposalChangeDataService) {
        this.devProposalChangeDataService = devProposalChangeDataService;
    }

}
