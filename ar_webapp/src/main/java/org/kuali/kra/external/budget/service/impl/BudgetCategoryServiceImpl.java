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
package org.kuali.kra.external.budget.service.impl;

import org.kuali.kra.budget.core.BudgetCategory;
import org.kuali.kra.external.HashMapElement;
import org.kuali.kra.external.budget.service.BudgetCategoryDTO;
import org.kuali.kra.external.budget.service.BudgetCategoryService;
import org.kuali.rice.krad.service.BusinessObjectService;
import org.kuali.rice.krad.util.ObjectUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * This class implements the budget categories service.
 */
public class BudgetCategoryServiceImpl implements BudgetCategoryService {

    private BusinessObjectService businessObjectService;

    /**
     * This method looks up the BudgetCategories bo.
     *
     * @param criteria
     * @return
     */
    @Override
    public List<BudgetCategoryDTO> lookupBudgetCategories(List<HashMapElement> criteria) {

        HashMap<String, String> searchCriteria = new HashMap<String, String>();
        List<BudgetCategoryDTO> budgetCategoryDTO = new ArrayList<BudgetCategoryDTO>();
        List<BudgetCategory> budgetCategories = null;

        // if the criteria passed is null, then return all budget categories.
        if (ObjectUtils.isNull(criteria)) {
            budgetCategories = new ArrayList<BudgetCategory>(businessObjectService.findAll(BudgetCategory.class));
        } else {
            // Reconstruct Hashmap from object list
            for (HashMapElement element : criteria) {
                searchCriteria.put(element.getKey(), element.getValue());
            }
            budgetCategories = new ArrayList<BudgetCategory>(businessObjectService.findMatching(BudgetCategory.class, searchCriteria));
        }

        for (BudgetCategory budCat : budgetCategories) {

            BudgetCategoryDTO budCatDto = new BudgetCategoryDTO();

            budCatDto.setBudgetCategoryCode(budCat.getBudgetCategoryCode());
            budCatDto.setDescription(budCat.getDescription());
            budCatDto.setAuthorPersonName(budCat.getAuthorPersonName());
            budCatDto.setBudgetCategoryTypeCode(budCat.getBudgetCategoryTypeCode());

            if (budCat.getBudgetCategoryType() != null) {
                budCatDto.setBudgetCategoryTypeDescription(budCat.getBudgetCategoryType().getDescription());
            }

            budgetCategoryDTO.add(budCatDto);
        }

        return budgetCategoryDTO;
    }

    /**
     * Sets the businessObjectService attribute value. Injected by Spring.
     *
     * @param businessObjectService The businessObjectService to set.
     */
    public void setBusinessObjectService(BusinessObjectService businessObjectService) {
        this.businessObjectService = businessObjectService;
    }
}
