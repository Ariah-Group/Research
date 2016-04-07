/*
 * Copyright 2016 The Ariah Group, Inc.
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
package org.ariahgroup.research.questionnaire.dao;

import java.util.Collection;
import org.kuali.rice.krad.bo.BusinessObject;

/**
 *
 * @author The Ariah Group, Inc.
 */
public interface QuestionnaireFinderDao {

    public <T extends BusinessObject> Collection<T> getQuestionnaireById(Class<T> clazz, String questionnaireId);
}
