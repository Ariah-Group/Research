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
package org.ariahgroup.research.bo;

import org.kuali.kra.bo.KraPersistableBusinessObjectBase;

/**
 * Abstract class that helps create the base of attachment data sources.
 */
public abstract class AttachmentDataSource extends KraPersistableBusinessObjectBase {

    private String fileName;

    private String contentType;

    /**
     * Get the filename of the attachment.
     * @return 
     */
    public String getFileName() {
        return fileName;
    }

    /**
     * Set the filename of the attachment.
     * @param fileName 
     */
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    /**
     * Get the content type of the attachment.
     * @return 
     */
    public String getContentType() {
        return contentType;
    }

    /**
     * Set the content type of the attachment.
     * @param contentType 
     */
    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    /**
     * 
     * This method requires sub classes to define a byteArray that represents the content of the attachment.
     * @return
     */
    public abstract byte[] getContent();
}
