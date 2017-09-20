/*
Copyright (c) 2009, The Environmental Council of the States (ECOS)
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

 * Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
 * Neither the name of the ECOS nor the names of its contributors may
   be used to endorse or promote products derived from this software
   without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
 */

package com.windsor.node.plugin.nysitesspills;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;

import javax.sql.DataSource;

import com.windsor.node.common.domain.ProcessContentResult;
import org.apache.commons.lang3.time.StopWatch;

public class Doh2DecDocBuilder extends SitesSpillsDocBuilder {

    public Doh2DecDocBuilder(String templatePath) {

        super(templatePath);
    }

    public void buildDocument(DataSource ds, String targetFilePath,
            ProcessContentResult result) {

        buildDocument(ds, targetFilePath, result, 0);
    }

    public void buildDocument(DataSource ds, String targetFilePath,
            ProcessContentResult result, int maxListItems) {

        OutputStreamWriter out = null;

        makeEntry(result, "Building DOH-to-DEC UISExchange document "
                + targetFilePath);

        stopWatch = new StopWatch();

        try {
            out = getWriter(targetFilePath);

            stopWatch.start();

            gen.writeDocumentOpen(out);

            if (maxListItems > 0) {

                makeEntry(result, "Fectching first " + maxListItems
                        + " items for each list");
            }

            makeEntry(result, "Building ErMaterialList...");

            buildErMaterialList(ds, out, maxListItems);

            stopWatch.split();
            makeEntry(result, "Time after building ErMaterialList "
                    + stopWatch.toSplitString());
            stopWatch.unsplit();

            makeEntry(result, "Building AffiliationList...");

            buildAffiliationList(ds, out, maxListItems);

            stopWatch.split();
            makeEntry(result, "Time after building AffiliationList "
                    + stopWatch.toSplitString());
            stopWatch.unsplit();

            makeEntry(result, "Building ErSiteList...");

            buildErSiteList(ds, out, maxListItems);

            stopWatch.split();
            makeEntry(result, "Time after building ErSiteList "
                    + stopWatch.toSplitString());
            stopWatch.unsplit();

            makeEntry(result, "Building GeographicLocList...");

            buildGeographicLocList(ds, out, maxListItems);

            stopWatch.split();
            makeEntry(result, "Time after building GeographicLocList "
                    + stopWatch.toSplitString());
            stopWatch.unsplit();

            gen.writeDocumentClose(out);

            out.close();

            stopWatch.stop();

            makeEntry(result, "Done building DOH-to-DEC UISExchange document.");
            makeEntry(result, "Total elapsed time: " + stopWatch.toString());

        } catch (UnsupportedEncodingException e) {

            makeErrorEntry(result, e.getMessage());
            throw new RuntimeException(e);

        } catch (FileNotFoundException e) {

            makeErrorEntry(result, e.getMessage());
            throw new RuntimeException(e);

        } catch (IOException e) {

            makeErrorEntry(result, e.getMessage());
            throw new RuntimeException(e);

        } finally {
            try {
                out.close();
            } catch (Exception e) {
                logger.debug("Exception in finally block: ", e);
            }
        }

    }
}