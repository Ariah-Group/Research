/*
 * Copyright 2005-2014 The Kuali Foundation.
 * 
 * Licensed under the Educational Community License, Version 1.0 (the "License");
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
package org.kuali.kra.s2s.printing.print;

import org.kuali.kra.bo.KraPersistableBusinessObjectBase;
import org.kuali.kra.printing.PrintingException;
import org.kuali.kra.printing.print.AbstractPrint;
import org.kuali.kra.printing.xmlstream.XmlStream;

import javax.xml.transform.Source;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class S2SFormPrint extends AbstractPrint {

    private static final long serialVersionUID = 1L;
    private ArrayList<Source> templates;
    private Map<String, byte[]> xmlDataMap;

    public S2SFormPrint() {
        // do nothing
    }

    public S2SFormPrint(XmlStream xmlStream, Source template, KraPersistableBusinessObjectBase printableBusinessObject) {
        setXmlStream(xmlStream);
        setPrintableBusinessObject(printableBusinessObject);
        templates = new ArrayList<Source>();
        templates.add(template);
    }

    public void setXSLT(ArrayList<Source> templates) {
        this.templates = templates;
    }

    @Override
    public List<Source> getXSLTemplates() {
        return templates;
    }

    @Override
    public Map<String, byte[]> renderXML() throws PrintingException {
        return xmlDataMap;
    }

    public Map<String, byte[]> getXmlDataMap() {
        return xmlDataMap;
    }

    public void setXmlDataMap(Map<String, byte[]> xmlDataMap) {
        this.xmlDataMap = xmlDataMap;
    }
}
