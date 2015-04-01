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

import org.kuali.kra.bo.CoeusModule;
import org.kuali.kra.bo.KraPersistableBusinessObjectBase;
import org.kuali.rice.core.api.mo.common.active.MutableInactivatable;

/**
 * Class representing a report link. A report link is essentially a URL and
 * description that appears in the reporting section of Ariah Research. It can
 * be categorized by a Research Module, such as Proposal Development, IRB,
 * IACUC, etc. so it appears in a module-specific section in the user interface.
 *
 * @author The Ariah Group, Inc.
 */
public class ReportLink extends KraPersistableBusinessObjectBase implements MutableInactivatable {

    private static final long serialVersionUID = 1123437346869555558L;

    private int reportId;
    private String description;
    private String reportUrl;
    private String moduleCode;
    private String moduleName;
    private boolean active;
    private CoeusModule coeusModule;

    /**
     * @return the reportId
     */
    public int getReportId() {
        return reportId;
    }

    /**
     * @param reportId the reportId to set
     */
    public void setReportId(int reportId) {
        this.reportId = reportId;
    }

    /**
     * @return the reportUrl
     */
    public String getReportUrl() {
        return reportUrl;
    }

    /**
     * @param reportUrl the reportUrl to set
     */
    public void setReportUrl(String reportUrl) {
        this.reportUrl = reportUrl;
    }

    /**
     * @return the moduleCode
     */
    public String getModuleCode() {
        return moduleCode;
    }

    /**
     * @param moduleCode the moduleCode to set
     */
    public void setModuleCode(String moduleCode) {
        this.moduleCode = moduleCode;
    }

    /**
     * @return the moduleName
     */
    public String getModuleName() {
        return moduleName;
    }

    /**
     * @param moduleName the moduleName to set
     */
    public void setModuleName(String moduleName) {
        this.moduleName = moduleName;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public void setActive(boolean active) {
        this.active = active;
    }

    @Override
    public boolean isActive() {
        return active;
    }

    public CoeusModule getCoeusModule() {
        return coeusModule;
    }

    public void setCoeusModule(CoeusModule coeusModule) {
        this.coeusModule = coeusModule;
    }
}
