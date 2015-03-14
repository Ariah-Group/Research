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
package org.ariahgroup.research.datadictionary;

import org.ariahgroup.research.datadictionary.validation.capability.WordCountConstrainable;
import org.ariahgroup.research.datadictionary.validation.constraint.WordCountConstraint;

/**
 * adds custom fields to attribute definition.
 *
* @author The Ariah Group, Inc.
 */
public class AttributeDefinition extends org.kuali.rice.krad.datadictionary.AttributeDefinition
        implements WordCountConstrainable {

    /**
     *
     */
    private static final long serialVersionUID = -7029081502722407910L;
    private WordCountConstraint wordCountConstraint;

    @Override
    public WordCountConstraint getWordCountConstraint() {
        return wordCountConstraint;
    }

    /**
     * @param wordCountConstraint the wordCountConstraint to set
     */
    public void setWordCountConstraint(WordCountConstraint wordCountConstraint) {
        this.wordCountConstraint = wordCountConstraint;
    }

}
