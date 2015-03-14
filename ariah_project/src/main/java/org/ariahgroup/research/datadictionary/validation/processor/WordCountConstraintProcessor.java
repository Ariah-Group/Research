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

import org.apache.commons.lang.text.StrTokenizer;
import org.ariahgroup.research.datadictionary.validation.constraint.WordCountConstraint;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.rice.krad.datadictionary.exception.AttributeValidationException;
import org.kuali.rice.krad.datadictionary.validation.AttributeValueReader;
import org.kuali.rice.krad.datadictionary.validation.ValidationUtils;
import org.kuali.rice.krad.datadictionary.validation.constraint.Constraint;
import org.kuali.rice.krad.datadictionary.validation.processor.MandatoryElementConstraintProcessor;
import org.kuali.rice.krad.datadictionary.validation.result.ConstraintValidationResult;
import org.kuali.rice.krad.datadictionary.validation.result.DictionaryValidationResult;
import org.kuali.rice.krad.datadictionary.validation.result.ProcessorResult;

/**
 * @author The Ariah Group, Inc.
 *
 */
public class WordCountConstraintProcessor extends
        MandatoryElementConstraintProcessor<WordCountConstraint> {

    private static final String CONSTRAINT_NAME = "Word Count constraint";

    @Override
    public ProcessorResult process(DictionaryValidationResult result,
            Object value, WordCountConstraint constraint,
            AttributeValueReader attributeValueReader)
            throws AttributeValidationException {

        if (constraint == null) {
            return new ProcessorResult(result.addNoConstraint(attributeValueReader, CONSTRAINT_NAME));
        }

        if (ValidationUtils.isNullOrEmpty(value) || constraint.getWordCount() == 0) {
            return new ProcessorResult(result.addSkipped(attributeValueReader, CONSTRAINT_NAME));
        }

        ConstraintValidationResult constraintValidationResult = new ConstraintValidationResult(CONSTRAINT_NAME);
        StrTokenizer tokenizer = new StrTokenizer(value.toString());
        tokenizer.setIgnoredMatcher(new MaxWordLengthMatcher(constraint.getMinWordLength() - 1));
        int wordCount = tokenizer.getTokenList().size();
        if (wordCount > constraint.getWordCount()) {
            return new ProcessorResult(result.addError(attributeValueReader,
                    CONSTRAINT_NAME,
                    Constants.MESSAGE_WORD_COUNT_EXCEEDED,
                    String.valueOf(constraint.getWordCount()),
                    String.valueOf(wordCount - constraint.getWordCount()),
                    attributeValueReader.getLabel(attributeValueReader.getAttributeName()),
                    String.valueOf(constraint.getMinWordLength())));
        } else {
            return new ProcessorResult(constraintValidationResult);
        }
    }

    @Override
    public String getName() {
        return CONSTRAINT_NAME;
    }

    @Override
    public Class<? extends Constraint> getConstraintType() {
        return WordCountConstraint.class;
    }
}
