/**
 * Copyright 2016 The Ariah Group, Inc.
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
 * Class representing an S2S Error Message.
 *
 * @author Ariah Group, Inc.
 */
public class S2sErrorMessage extends KraPersistableBusinessObjectBase {

    /**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = 6167899999946501317L;
    private int errorMessageId;
    private String formDescription;
    private String messageKey;
    private String messageDecription;
    private String fixLink;
    private boolean active = true;

    /**
     * @return the errorMessageId
     */
    public int getErrorMessageId() {
        return errorMessageId;
    }

    /**
     * @param errorMessageId the errorMessageId to set
     */
    public void setErrorMessageId(int errorMessageId) {
        this.errorMessageId = errorMessageId;
    }

    /**
     * @return the messageKey
     */
    public String getMessageKey() {
        return messageKey;
    }

    /**
     * @param messageKey the messageKey to set
     */
    public void setMessageKey(String messageKey) {
        this.messageKey = messageKey;
    }

    /**
     * @return the messageDecription
     */
    public String getMessageDecription() {
        return messageDecription;
    }

    /**
     * @param messageDecription the messageDecription to set
     */
    public void setMessageDecription(String messageDecription) {
        this.messageDecription = messageDecription;
    }

    /**
     * @return the fixLink
     */
    public String getFixLink() {
        return fixLink;
    }

    /**
     * @param fixLink the fixLink to set
     */
    public void setFixLink(String fixLink) {
        this.fixLink = fixLink;
    }

    /**
     * @return the formDescription
     */
    public String getFormDescription() {
        return formDescription;
    }

    /**
     * @param formDescription the formDescription to set
     */
    public void setFormDescription(String formDescription) {
        this.formDescription = formDescription;
    }

    public boolean isActive() {
        return active;
    }
    public void setActive(boolean active) {
        this.active = active;
    }
    
    /**
     * @see java.lang.Object#hashCode()
     */
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((formDescription == null) ? 0 : formDescription.hashCode());
        result = prime * result + ((messageKey == null) ? 0 : messageKey.hashCode());
        return result;
    }

    /**
     * @see java.lang.Object#equals(java.lang.Object)
     */
    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final S2sErrorMessage other = (S2sErrorMessage) obj;
        if (errorMessageId == 0) {
            if (other.errorMessageId != 0) {
                return false;
            }
        } else if (errorMessageId != other.errorMessageId) {
            return false;
        }
        if (messageKey == null) {
            if (other.messageKey != null) {
                return false;
            }
        } else if (!messageKey.equals(other.messageKey)) {
            return false;
        }
        return true;
    }
}
