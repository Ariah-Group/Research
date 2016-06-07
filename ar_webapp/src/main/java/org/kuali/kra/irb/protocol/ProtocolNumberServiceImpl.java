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
package org.kuali.kra.irb.protocol;

import java.util.Calendar;
import org.kuali.kra.infrastructure.Constants;

import org.kuali.kra.protocol.protocol.ProtocolNumberServiceImplBase;
import org.kuali.rice.coreservice.framework.CoreFrameworkServiceLocator;
import org.kuali.rice.coreservice.framework.parameter.ParameterConstants;
import org.kuali.rice.krad.service.SequenceAccessorService;

/**
 * ProtocolNumberService Implementation.
 */
public class ProtocolNumberServiceImpl extends ProtocolNumberServiceImplBase implements ProtocolNumberService {

    private static final String ZERO = "0";
    private static final String SEQUENCE_NAME = "SEQ_IRB_PROTOCOL_NUM";
    private static final int MAX_NUMBER = 1000000;

    private SequenceAccessorService sequenceAccessorService;

    /**
     * Set the Sequence Accessor Service.
     *
     * @param sequenceAccessorService the Sequence Accessor Service
     */
    @Override
    public void setSequenceAccessorService(SequenceAccessorService sequenceAccessorService) {
        this.sequenceAccessorService = sequenceAccessorService;
    }

    /**
     * @see
     * org.kuali.kra.irb.protocol.ProtocolNumberService#generateProtocolNumber()
     */
    @Override
    public String generateProtocolNumber() {

        String protocolNumberPattern = CoreFrameworkServiceLocator.getParameterService().getParameterValueAsString(
                Constants.MODULE_NAMESPACE_PROTOCOL, ParameterConstants.DOCUMENT_COMPONENT, Constants.ARIAH_IRB_PROTOCOL_NUMBER_PATTERN);

        String result = null;

        if (protocolNumberPattern != null && "0000SEQUENCE".equalsIgnoreCase(protocolNumberPattern)) {
            result = "0000" + getNextNumber();
        } else if (protocolNumberPattern != null && "SEQUENCE".equalsIgnoreCase(protocolNumberPattern)) {
            result = getNextNumber();
        } else if (protocolNumberPattern != null && "YYMMSEQUENCE".equalsIgnoreCase(protocolNumberPattern)) {
            Calendar calendar = Calendar.getInstance();
            result = getYear(calendar) + getMonth(calendar) + getNextNumber();
        } else if (protocolNumberPattern != null && "YYYYMMSEQUENCE".equalsIgnoreCase(protocolNumberPattern)) {
            Calendar calendar = Calendar.getInstance();
            result = getFullYear(calendar) + getMonth(calendar) + getNextNumber();
        } else if (protocolNumberPattern != null && "YYYYSEQUENCE".equalsIgnoreCase(protocolNumberPattern)) {
            Calendar calendar = Calendar.getInstance();
            result = getFullYear(calendar) + getNextNumber();
        } else {
            // default if parameter not set
            Calendar calendar = Calendar.getInstance();
            result = getYear(calendar) + getMonth(calendar) + getNextNumber();
        }

        return result;
    }

    /**
     * Get the current year, only the last two digits.
     *
     * @param calendar the current time
     * @return the year as 2 digits as a string
     */
    @Override
    protected String getYear(Calendar calendar) {
        int year = calendar.get(Calendar.YEAR);
        String s = Integer.toString(year).substring(2);
        if (s.length() == 1) {
            s = ZERO + s;
        }
        return s;
    }

    /**
     * Get the current year with 4 digits.
     *
     * @param calendar the current time
     * @return the year as 4 digits as a string
     */
    protected String getFullYear(Calendar calendar) {
        int year = calendar.get(Calendar.YEAR);
        String s = Integer.toString(year);
        return s;
    }

    /**
     * Get the current month, always 2 digits.
     *
     * @param calendar the current time
     * @return the month as 2 digits, e.g. 03 is March
     */
    @Override
    protected String getMonth(Calendar calendar) {
        int month = calendar.get(Calendar.MONTH) + 1;
        String s = Integer.toString(month);
        if (s.length() == 1) {
            s = ZERO + s;
        }
        return s;
    }

    /**
     * Get the next sequence number which is always 6 digits, including leading
     * zeros.
     *
     * @return the next sequence number
     */
    @Override
    protected String getNextNumber() {
        Long nextNumber = getSequenceNumber() % MAX_NUMBER;
        String s = nextNumber.toString();
        int length = s.length();
        for (int i = 0; i < 6 - length; i++) {
            s = ZERO + s;
        }
        return s;
    }

    /**
     * Get the next database sequence number. Not sure what would happen if
     * multiple threads were to call this method at the same time to access the
     * database sequence. Therefore, it is synchronized to prevent any possible
     * conflicts.
     *
     * @return the next database sequence number
     */
    @Override
    protected synchronized Long getSequenceNumber() {
        // TODO the constant SEQUENCE_NAME is now replaced by a hook invocation in the refactored parent code
        return sequenceAccessorService.getNextAvailableSequenceNumber(SEQUENCE_NAME);
    }

    @Override
    protected String getSequenceNameHook() {
        return SEQUENCE_NAME;
    }

}
