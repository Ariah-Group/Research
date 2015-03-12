/*
 * Copyright 2005-2014 The Kuali Foundation
 *
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.osedu.org/licenses/ECL-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.bo;


public class ArgValueLookup extends KraPersistableBusinessObjectBase {

    private static final long serialVersionUID = 1L;

    private Integer argValueLookupId;

    private String argumentName;

    private String value;

    private String description;

    public ArgValueLookup() {
    }

    public Integer getArgValueLookupId() {
        return argValueLookupId;
    }

    public void setArgValueLookupId(Integer argValueLookupId) {
        this.argValueLookupId = argValueLookupId;
    }

    public String getArgumentName() {
        return argumentName;
    }

    public void setArgumentName(String argumentName) {
        this.argumentName = argumentName;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
