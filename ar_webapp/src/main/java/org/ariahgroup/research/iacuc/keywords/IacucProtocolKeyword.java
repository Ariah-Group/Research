/**
 * Copyright 2016 The Ariah Group, Inc.
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
package org.ariahgroup.research.iacuc.keywords;

import org.kuali.kra.SequenceAssociate;
import org.kuali.kra.bo.AbstractScienceKeyword;
import org.kuali.kra.bo.ScienceKeyword;
import org.kuali.kra.iacuc.IacucProtocol;

/**
 * Class representing a keyword for IACUC Protocols.
 *
 * @author The Ariah Group, Inc.
 */
public class IacucProtocolKeyword extends AbstractScienceKeyword implements SequenceAssociate<IacucProtocol> {

    /**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = -8415861677886653309L;

    private Long protocolKeywordId;

    private IacucProtocol protocol;

    private Long protocolId;

    private Boolean selectKeyword = false;

    /**
     * Empty constructor for IacucProtocolKeyword.
     */
    public IacucProtocolKeyword() {
    }

    /**
     * Constructs a IacucProtocolKeyword.
     *
     * @param protocolId
     * @param scienceKeyword
     */
    public IacucProtocolKeyword(Long protocolId, ScienceKeyword scienceKeyword) {
        super();
        setProtocolId(protocolId);
        setScienceKeywordDescription(scienceKeyword.getDescription());
        setScienceKeywordCode(scienceKeyword.getScienceKeywordCode());
        setScienceKeyword(scienceKeyword);
        setVersionNumber(getVersionNumber() == null ? 1 : getVersionNumber());
    }

    @Override
    public IacucProtocol getSequenceOwner() {
        return protocol;
    }

    @Override
    public void setSequenceOwner(IacucProtocol sequenceOwner) {
        protocol = sequenceOwner;
    }

    @Override
    public Integer getSequenceNumber() {
        return getSequenceOwner() != null ? getSequenceOwner().getSequenceNumber() : null;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.kuali.kra.Sequenceable#resetPersistenceState()
     */
    @Override
    public void resetPersistenceState() {
        protocolKeywordId = null;
    }

    /**
     * @return the protocolKeywordId
     */
    public Long getProtocolKeywordId() {
        return protocolKeywordId;
    }

    /**
     * @param protocolKeywordId the protocolKeywordId to set
     */
    public void setProtocolKeywordId(Long protocolKeywordId) {
        this.protocolKeywordId = protocolKeywordId;
    }

    /**
     * @return the protocol
     */
    public IacucProtocol getProtocol() {
        return protocol;
    }

    /**
     * @param protocol the protocol to set
     */
    public void setProtocol(IacucProtocol protocol) {
        this.protocol = protocol;
    }

    public Boolean getSelectKeyword() {
        return selectKeyword;
    }

    public void setSelectKeyword(Boolean selectKeyword) {
        this.selectKeyword = selectKeyword;
    }

    /**
     * @return the protocolId
     */
    public Long getProtocolId() {
        return protocolId;
    }

    /**
     * @param protocolId the protocolId to set
     */
    public void setProtocolId(Long protocolId) {
        this.protocolId = protocolId;
    }
}
