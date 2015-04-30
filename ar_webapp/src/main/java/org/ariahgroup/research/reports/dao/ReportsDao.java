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
package org.ariahgroup.research.reports.dao;

import java.sql.SQLException;
import java.util.List;
import org.apache.ojb.broker.accesslayer.LookupException;
import org.ariahgroup.research.bo.ReportLink;

/**
 * Interface representing the data access object for external report links.
 * 
 * @author The Ariah Group, Inc.
 */
public interface ReportsDao {

    /**
     * Retrieve a List of all report links by module code.
     * 
     * @return
     * @throws LookupException
     * @throws SQLException 
     */
    public List<ReportLink> getAllReportLinksByCoeusModule() throws LookupException, SQLException;

}
