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
package org.kuali.kra.protocol.correspondence;

/** 
 * The batch correspondence detail authorization service handles access to batch 
 * correspondence detail.
 */
public interface BatchCorrespondenceDetailAuthorizationService {

    /**
     * 
     * This method checks if the current user has the specified permission.
     * @param permissionName the name of the permission
     * @return true if the user has permission; otherwise false
     */
    boolean hasPermission(String permissionName);

}
