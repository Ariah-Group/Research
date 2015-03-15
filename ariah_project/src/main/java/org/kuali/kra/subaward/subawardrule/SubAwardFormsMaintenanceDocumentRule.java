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
 *
 * ------------------------------------------------------
 * Updates made after January 1, 2015 are :
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
package org.kuali.kra.subaward.subawardrule;

import org.kuali.kra.infrastructure.KeyConstants;
import org.kuali.kra.rules.KraMaintenanceDocumentRuleBase;
import org.kuali.kra.subaward.bo.SubAwardForms;
import org.kuali.rice.kns.document.MaintenanceDocument;

public class SubAwardFormsMaintenanceDocumentRule extends KraMaintenanceDocumentRuleBase {
    
    private static final String TEMPLATE_FILE_FIELD_NAME = "templateFile";

    /**
     * 
     * @see org.kuali.rice.kns.maintenance.rules.MaintenanceDocumentRuleBase#processCustomRouteDocumentBusinessRules(org.kuali.rice.kns.document.MaintenanceDocument)
     */

    protected boolean processCustomRouteDocumentBusinessRules(MaintenanceDocument document) {
        return isDocumentValidForSave(document);
    }


    /**
     * @see org.kuali.rice.kns.maintenance.rules.MaintenanceDocumentRuleBase#processCustomSaveDocumentBusinessRules(org.kuali.rice.kns.document.MaintenanceDocument)
     */
    @Override
    public boolean processCustomSaveDocumentBusinessRules(MaintenanceDocument document) {
        return isDocumentValidForSave(document);
    }

    /**
     * 
     * @see org.kuali.rice.kns.maintenance.rules.MaintenanceDocumentRuleBase#processCustomApproveDocumentBusinessRules(org.kuali.rice.kns.document.MaintenanceDocument)
     */
    @Override
    public boolean processCustomApproveDocumentBusinessRules(MaintenanceDocument document) {
        return isDocumentValidForSave(document);
    }

    /**
     * 
     * @see org.kuali.rice.kns.maintenance.rules.MaintenanceDocumentRuleBase#isDocumentValidForSave(org.kuali.rice.kns.document.MaintenanceDocument)
     */
    public boolean isDocumentValidForSave(MaintenanceDocument document) {
        boolean result = super.isDocumentValidForSave(document);
        final SubAwardForms subAwardForms = (SubAwardForms) document.getNewMaintainableObject().getDataObject();
       
        String fileName = "";
        if (subAwardForms.getFileName() == null) {  
            if (subAwardForms.getTemplateFile() != null) {
                fileName = subAwardForms.getTemplateFile().getFileName();
            }
        } else {
            fileName = subAwardForms.getFileName();
        }
        
        if (!fileName.endsWith(".xsl")) {
            result = false;
            putFieldError(TEMPLATE_FILE_FIELD_NAME, KeyConstants.SUBAWARD_ERROR_INVALID_FILE_TYPE);
        }
        return result;
    }
    
}
