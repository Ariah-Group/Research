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
package org.kuali.kra.award.contacts;

/**
 * This class is a minor hack to satisfy the DataDictionary requirements.
 *  Since the Award Central Admin contact type uses the same BO as the Unit Contact type, 
 *  the DD can't find the AwardCentralAdminContact DD entry when it does  
 *  de = documentEntriesByBusinessObjectClass.get(clazz) lookup
 */
public class AwardCentralAdminContact extends AwardUnitContact {
    private static final long serialVersionUID = 2430642816335021874L;

}