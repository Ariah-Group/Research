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

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.JarURLConnection;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.jar.JarEntry;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.kuali.rice.krad.datadictionary.DataDictionaryException;
import org.springframework.core.io.Resource;

/**
 * adds loading of data dictionary files from archive files
 *
* @author The Ariah Group, Inc.
 *
 */
public class DataDictionary extends org.kuali.rice.krad.datadictionary.DataDictionary {

    private static final Log LOG = LogFactory.getLog(DataDictionary.class);

    /**
     * adds loading data dictionary files in archive files
     *
     * @param sourceName
     * @throws IOException
     */
    protected void indexSource(String namespaceCode, String sourceName) throws IOException {
        if (sourceName == null) {
            throw new DataDictionaryException("Source Name given is null");
        }

        if (!sourceName.endsWith(".xml")) {
            Resource resource = getFileResource(sourceName);
            if (resource.exists()) {
                try {
                    indexSource(namespaceCode, resource.getFile());
                } catch (FileNotFoundException e) {
                    /*
                     *  could be on an archive file
                     *  credits:
                     *  http://stackoverflow.com/questions/5848975/classpathresource-getfile-throws-filenotfoundexception-within-war
                     *  http://stackoverflow.com/questions/2063099/unzipping-a-file-from-inputstream-and-returning-another-inputstream
                     */
                    if (resource.getURL().toString().startsWith("jar:")) {
                        final List<String> configLocationsFromZipEntry = getConfigLocationsFromZipEntry((JarURLConnection) resource.getURL().openConnection());
                        for (String location : configLocationsFromZipEntry) {
                            addModuleDictionaryFile(namespaceCode, location);
                        }
                    }
                }
            } else {
                LOG.warn("Could not find " + sourceName);
                throw new DataDictionaryException("DD Resource " + sourceName + " not found");
            }
        } else {
            if (LOG.isDebugEnabled()) {
                LOG.debug("adding sourceName " + sourceName + " ");
            }

            Resource resource = getFileResource(sourceName);
            if (!resource.exists()) {
                throw new DataDictionaryException("DD Resource " + sourceName + " not found");
            }

            addModuleDictionaryFile(namespaceCode, sourceName);
        }
    }

    /**
     * generate data dictionary xml config files for individual files under the
     * given zip/jar entry e.g.
     *
     * @return a list of config files if found under the entry, empty list if
     * not found
     */
    protected List<String> getConfigLocationsFromZipEntry(JarURLConnection connection) {
        ArrayList<String> locations = new ArrayList<String>();
        try {
            if (connection.getJarEntry() != null) {
                Enumeration<JarEntry> entries = connection.getJarFile().entries();
                while (entries.hasMoreElements()) {
                    JarEntry entry = null;
                    try {
                        entry = entries.nextElement();
                    } catch (Exception e1) {
                        LOG.debug("error getting entry", e1);
                    }
                    if (entry != null && entry.getName().startsWith(connection.getEntryName())) {
                        if (!entry.isDirectory() && entry.getName().endsWith(".xml")) {
                            final String entryClasspath = "classpath:" + entry.getName();
                            locations.add(entryClasspath);
                        } else {
                            LOG.debug("Skipping non xml file " + entry.getName() + " in DD archive load");
                        }
                    }
                }
            }
        } catch (IOException e) {
            LOG.debug("could not get jar entry", e);
        }

        return locations;
    }
}
