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
package org.ariahgroup.research.reports.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.apache.ojb.broker.PersistenceBroker;
import org.apache.ojb.broker.accesslayer.LookupException;
import org.ariahgroup.research.bo.ReportLink;
import org.ariahgroup.research.reports.dao.ReportsDao;
import org.kuali.rice.core.framework.persistence.ojb.dao.PlatformAwareDaoBaseOjb;

/**
 * @author The Ariah Group, Inc.
 */
public class ReportsDaoOjb extends PlatformAwareDaoBaseOjb implements ReportsDao {

    @Override
    public List<ReportLink> getAllReportLinksByCoeusModule() throws LookupException, SQLException {

        PreparedStatement pstmt = null;
        ResultSet rs = null;
        PersistenceBroker pbInstance = getPersistenceBroker(true);

        List<ReportLink> reportLinks = new ArrayList<ReportLink>();

        try {
            String sql = "select rl.REPORT_ID,rl.COEUS_MODULE_ID,rl.DESCRIPTION,rl.REPORT_URL,cm.description from REPORT_LINKS rl INNER JOIN COEUS_MODULE cm on rl.coeus_module_id = cm.module_code where rl.ACTIVE=1 and cm.active='Y' ORDER BY cm.sort_order,rl.COEUS_MODULE_ID, rl.SORT_ORDER";

            pstmt = pbInstance.serviceConnectionManager().getConnection().prepareStatement(sql);

            rs = pstmt.executeQuery();
            rs.setFetchSize(100);

           // int tempModuleId = -1;
            while (rs.next()) {

                int reportId = rs.getInt(1);
                int moduleId = rs.getInt(2);
                String reportLabel = rs.getString(3);
                String reportUrl = rs.getString(4);
                String moduleName = rs.getString(5);

               // if(tempModuleId != moduleId) {
                // records for different module
                //}
                ReportLink rep = new ReportLink();

                rep.setReportId(reportId);
                rep.setModuleCode(moduleId);
                rep.setModuleName(moduleName);
                rep.setDescription(reportLabel);
                rep.setReportUrl(reportUrl);

                reportLinks.add(rep);
            }

        } catch (LookupException e) {
            throw e;
        } catch (SQLException e) {
            throw e;
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                    rs = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                if (pstmt != null) {
                    pstmt.close();
                    pstmt = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return reportLinks;
    }
}
