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
package org.ariahgroup.research.reports.service.impl;

import java.util.List;
import org.ariahgroup.research.bo.ReportLink;
import org.ariahgroup.research.reports.dao.ReportsDao;
import org.ariahgroup.research.reports.service.ReportService;

/**
 * @author The Ariah Group, Inc.
 */
public class ReportServiceImpl implements ReportService {

    private ReportsDao reportsDao;

    @Override
    public List<ReportLink> getAllReportLinksByCoeusModule() {

        List<ReportLink> reports = null;

        try {
            reports = reportsDao.getAllReportLinksByCoeusModule();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return reports;
    }

    /**
     * @return the reportsDao
     */
    public ReportsDao getReportsDao() {
        return reportsDao;
    }

    /**
     * @param reportsDao the reportsDao to set
     */
    public void setReportsDao(ReportsDao reportsDao) {
        this.reportsDao = reportsDao;
    }
}
