/**
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
package org.ariahgroup.research.bo;

/**
 * @author The Ariah Group, Inc.
 */
public class ReportLink {

    private int reportId;
    private String description;
    private String reportUrl;
    private int moduleCode;
    private String moduleName;

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
    public int getModuleCode() {
        return moduleCode;
    }

    /**
     * @param moduleCode the moduleCode to set
     */
    public void setModuleCode(int moduleCode) {
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
}
