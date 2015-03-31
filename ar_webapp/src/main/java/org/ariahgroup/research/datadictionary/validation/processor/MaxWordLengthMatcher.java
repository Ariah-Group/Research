/**
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
package org.ariahgroup.research.datadictionary.validation.processor;

import org.apache.commons.lang.text.StrMatcher;

/**
 * a matcher that matches only words of a specified maximum length
 *
 * @author The Ariah Group, Inc.
 */
public class MaxWordLengthMatcher extends StrMatcher {

    private int maxWordLength;

    /**
     *
     */
    public MaxWordLengthMatcher(int maxWordLength) {
        super();
        this.setMaxWordLength(maxWordLength);
    }

    /* (non-Javadoc)
     * @see org.apache.commons.lang.text.StrMatcher#isMatch(char[], int, int, int)
     */
    @Override
    public int isMatch(char[] buffer, int pos, int bufferStart, int bufferEnd) {
        /* if maxWordLength is zero or less, do not match anything*/
        if (getMaxWordLength() <= 0) {
            return 0;
        }
        /*
         * ignore words less than maxWordLength
         * if, after combining the character before pos, the character at pos and next characters of number maxWordLength (if present) 
         * then trimming, I am left with maxWordLength or less 
         */
        StringBuilder text = new StringBuilder();
        for (int i = pos - 1; i <= pos + getMaxWordLength(); i++) {
            if (i >= bufferStart && i <= bufferEnd - 1) {
                text.append(buffer[i]);
            }
        }
        if (text.toString().trim().length() <= getMaxWordLength()) {
            return text.length();
        } else {
            return 0;
        }
    }

    /**
     * @return the maxWordLength
     */
    public int getMaxWordLength() {
        return maxWordLength;
    }

    /**
     * @param maxWordLength the maxWordLength to set
     */
    public void setMaxWordLength(int maxWordLength) {
        this.maxWordLength = maxWordLength;
    }

}
