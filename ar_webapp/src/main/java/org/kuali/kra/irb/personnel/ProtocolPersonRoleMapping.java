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
package org.kuali.kra.irb.personnel;

import org.kuali.kra.protocol.personnel.ProtocolPersonRoleMappingBase;

/**
 * This class represents protocol person role mapping business object
 */
public class ProtocolPersonRoleMapping extends ProtocolPersonRoleMappingBase {

    /**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = -4525940858799917386L;

    private Integer roleMappingId;

    private String sourceRoleId;

    private String targetRoleId;

    private ProtocolPersonRole sourceRole;

    private ProtocolPersonRole targetRole;

    public ProtocolPersonRoleMapping() {
    }
    @Override

    public Integer getRoleMappingId() {
        return roleMappingId;
    }
    @Override

    public void setRoleMappingId(Integer roleMappingId) {
        this.roleMappingId = roleMappingId;
    }
    @Override

    public String getSourceRoleId() {
        return sourceRoleId;
    }
    @Override

    public void setSourceRoleId(String sourceRoleId) {
        this.sourceRoleId = sourceRoleId;
    }
    @Override

    public String getTargetRoleId() {
        return targetRoleId;
    }
    @Override

    public void setTargetRoleId(String targetRoleId) {
        this.targetRoleId = targetRoleId;
    }
    @Override

    public ProtocolPersonRole getSourceRole() {
        return sourceRole;
    }

    public void setSourceRole(ProtocolPersonRole sourceRole) {
        this.sourceRole = sourceRole;
    }
    @Override

    public ProtocolPersonRole getTargetRole() {
        return targetRole;
    }

    public void setTargetRole(ProtocolPersonRole targetRole) {
        this.targetRole = targetRole;
    }
}
