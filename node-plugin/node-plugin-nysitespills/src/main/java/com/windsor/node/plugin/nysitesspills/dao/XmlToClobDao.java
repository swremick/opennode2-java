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

package com.windsor.node.plugin.nysitesspills.dao;

import java.sql.Types;
import java.util.HashMap;
import java.util.Map;

import javax.sql.DataSource;

import org.safehaus.uuid.UUID;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.object.StoredProcedure;

import com.windsor.node.plugin.common.dao.BaseJdbcDao;
import com.windsor.node.plugin.common.dao.TextLoader;
import com.windsor.node.util.DateUtil;

/**
 * Builds a well-formed Xml document in memory, then inserts it into a database
 * table.
 * 
 * <p>
 * Intended for &quot;spooling&quot; a large document into an Oracle CLOB
 * column.
 * </p>
 * 
 */
public class XmlToClobDao extends BaseJdbcDao implements TextLoader {

    /** Insert statement for Xml data. */
    private static final String SQL = "INSERT INTO DW_CLOB_PROCESS (CLOB_ID, CLOB_OBJECT, CREATED_ON) VALUES (?,?,?) ";

    private static final String PROC_PARAM = "rowId";

    private final ClobProcessingProcedure clobProcessingProcedure;

    private final ClearStagingTablesProcedure clearStagingTablesProcedure;

    private final int[] types = new int[3];

    /**
     * @param dataSource
     * @param batchSize
     *            upper bound on number of elements in a top-level list
     */
    public XmlToClobDao(DataSource dataSource, String importprocName,
            String clearProcName) {

        setDataSource(dataSource);

        clobProcessingProcedure = new ClobProcessingProcedure(dataSource,
                importprocName);

        clearStagingTablesProcedure = new ClearStagingTablesProcedure(
                dataSource, clearProcName);

        types[0] = Types.VARCHAR;
        types[1] = Types.VARCHAR;
        types[2] = Types.DATE;
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * com.windsor.node.plugin.common.dao.TextLoader#loadText(java.lang.String)
     */
    public void loadText(String xml) {

        String id = makeId();

        Object[] args = new Object[3];

        args[0] = id;
        args[1] = xml;
        args[2] = DateUtil.getTimestamp();

        getJdbcTemplate().update(SQL, args, types);

        logger.debug("Calling clobProcessingProcedure.execute(id)");

        clobProcessingProcedure.execute(id);

    }

    public void clearStagingTables() {

        logger.debug("Calling clearStagingTablesProcedure.execute()");
        clearStagingTablesProcedure.execute();
    }

    private class ClobProcessingProcedure extends StoredProcedure {

        public ClobProcessingProcedure(DataSource ds, String procedureName) {
            super(ds, procedureName);
            declareParameter(new SqlParameter(PROC_PARAM, Types.VARCHAR));
            compile();
        }

        public void execute(String clobId) {

            Map params = new HashMap();
            params.put(PROC_PARAM, clobId);

            super.execute(params);

        }

    }

    private class ClearStagingTablesProcedure extends StoredProcedure {

        public ClearStagingTablesProcedure(DataSource ds, String procedureName) {
            super(ds, procedureName);
            compile();
        }

        public void execute() {

            super.execute(new HashMap());
        }
    }

    private String makeId() {
        UUID uuid = org.safehaus.uuid.UUIDGenerator.getInstance()
                .generateRandomBasedUUID();
        return uuid.toString().toUpperCase();
    }

}