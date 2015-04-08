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
 */
package org.kuali.kra.negotiations.bo;

import org.apache.struts.upload.FormFile;
import org.kuali.kra.bo.AttachmentFile;
import org.kuali.kra.bo.KraPersistableBusinessObjectBase;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.rice.coreservice.framework.parameter.ParameterService;

/**
 * Negotiation Activity Attachment BO.
 */
public class NegotiationActivityAttachment extends KraPersistableBusinessObjectBase {

    /**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = -1933107350837716003L;

    private Long attachmentId;

    private Long activityId;

    private NegotiationActivity activity;

    private String description;

    private Boolean restricted;

    private Long fileId;

    private AttachmentFile file;

    private transient FormFile newFile;

    public NegotiationActivityAttachment() {
        ParameterService paramServ = (ParameterService) KraServiceLocator.getService(ParameterService.class);

        restricted = paramServ.getParameterValueAsBoolean(Constants.MODULE_NAMESPACE_NEGOTIATION,
                Constants.PARAMETER_COMPONENT_DOCUMENT, Constants.ARIAH_NEGO_ACTIVITY_DEFAULT_RESTRICTED_ENABLED, true);

    }

    public Long getAttachmentId() {
        return attachmentId;
    }

    public void setAttachmentId(Long attachmentId) {
        this.attachmentId = attachmentId;
    }

    public Long getActivityId() {
        return activityId;
    }

    public void setActivityId(Long activityId) {
        this.activityId = activityId;
    }

    public NegotiationActivity getActivity() {
        return activity;
    }

    public void setActivity(NegotiationActivity activity) {
        this.activity = activity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Boolean getRestricted() {
        return restricted;
    }

    public void setRestricted(Boolean restricted) {
        this.restricted = restricted;
    }

    public Long getFileId() {
        return fileId;
    }

    public void setFileId(Long fileId) {
        this.fileId = fileId;
    }

    public AttachmentFile getFile() {
        return file;
    }

    public void setFile(AttachmentFile file) {
        this.file = file;
    }

    public FormFile getNewFile() {
        return newFile;
    }

    public void setNewFile(FormFile newFile) {
        this.newFile = newFile;
    }
}
