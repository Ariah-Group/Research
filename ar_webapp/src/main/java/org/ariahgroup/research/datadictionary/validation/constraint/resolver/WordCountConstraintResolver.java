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
package org.ariahgroup.research.datadictionary.validation.constraint.resolver;

import java.util.Collections;
import java.util.List;
import org.ariahgroup.research.datadictionary.validation.capability.WordCountConstrainable;
import org.kuali.rice.krad.datadictionary.validation.capability.Constrainable;
import org.kuali.rice.krad.datadictionary.validation.constraint.Constraint;
import org.kuali.rice.krad.datadictionary.validation.constraint.resolver.ConstraintResolver;

/**
 * a resolver for attributes that implement {@link WordCountConstrainable}.
 * @author The Ariah Group, Inc.
 */
public class WordCountConstraintResolver<T extends Constrainable> implements ConstraintResolver<T> {

    @Override
    public <C extends Constraint> List<C> resolve(T definition) {
        if (definition instanceof WordCountConstrainable) {
            @SuppressWarnings("unchecked")
            C constraint = (C) ((WordCountConstrainable) definition).getWordCountConstraint();
            return Collections.singletonList(constraint);
        } else {
            return Collections.emptyList();
        }
    }
}
