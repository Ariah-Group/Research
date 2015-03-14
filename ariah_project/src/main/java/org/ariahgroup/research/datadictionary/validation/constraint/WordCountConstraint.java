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
package org.ariahgroup.research.datadictionary.validation.constraint;

import org.kuali.rice.krad.datadictionary.validation.constraint.BaseConstraint;

/**
 * a constraint to limit the number of words in a field
 * @author The Ariah Group, Inc.
 *
 */
public class WordCountConstraint extends BaseConstraint {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7520720016702637126L;
	private int wordCount;
	private int minWordLength;
	
	/**
	 * the maximum number of words allowed
	 * @return the wordCount
	 */
	public int getWordCount() {
		return wordCount;
	}
	/**
	 * @param wordCount the wordCount to set
	 */
	public void setWordCount(int wordCount) {
		this.wordCount = wordCount;
	}
	/**
	 * the minimum length of words to include in the count
	 * @return the minWordLength
	 */
	public int getMinWordLength() {
		return minWordLength;
	}
	/**
	 * @param minWordLength the minWordLength to set
	 */
	public void setMinWordLength(int minWordLength) {
		this.minWordLength = minWordLength;
	}
}
