package com.windsor.node.plugin.rcra54.solicit;

import com.windsor.node.common.domain.PluginServiceImplementorDescriptor;
import com.windsor.node.common.util.ByIndexOrNameMap;
import com.windsor.node.plugin.rcra54.Rcra54OutboundException;
import com.windsor.node.plugin.rcra54.domain.generated.SolicitHistory;
import com.windsor.node.plugin.rcra54.solicit.request.SolicitRequest;
import com.windsor.node.plugin.rcra54.solicit.request.SolicitRequestFactory;
import com.windsor.node.plugin.rcra54.solicit.request.SolicitRequestType;

public class SolicitOpFAByState extends SolicitOperation {

    public static final String SERVICE_NAME = "SolicitOpFAByState";
    private static final PluginServiceImplementorDescriptor PLUGIN_SERVICE_IMPLEMENTOR_DESCRIPTOR =
            new PluginServiceImplementorDescriptor();

    static {
        PLUGIN_SERVICE_IMPLEMENTOR_DESCRIPTOR.setName(SERVICE_NAME);
        PLUGIN_SERVICE_IMPLEMENTOR_DESCRIPTOR.setDescription("Solicits FA Data by State from the RCRAInfo service.");
        PLUGIN_SERVICE_IMPLEMENTOR_DESCRIPTOR.setClassName(SolicitOperation.class.getCanonicalName());
    }

    @Override
    public PluginServiceImplementorDescriptor getPluginServiceImplementorDescription() {
        return PLUGIN_SERVICE_IMPLEMENTOR_DESCRIPTOR;
    }

    @Override
    public SolicitRequestType getRequestType() {
        return SolicitRequestType.FA_BY_STATE;
    }

    @Override
    public SolicitRequest handleGetRequest(SolicitRequestFactory requestFactory, ByIndexOrNameMap namedParams)
            throws Rcra54OutboundException {

        String state = namedParams.get(SolicitOperation.PARAM_STATE_REQ.getName()).toString();
        String changeDate = namedParams.get(SolicitOperation.PARAM_CHANGE_DATE.getName()).toString();

        if(getUseHistory() != null && getUseHistory()) {
            SolicitHistory history = getSolicitHistoryLast(SolicitHistory.Status.COMPLETE);
            if(history != null) {
                changeDate = history.getRunDateFormatted();
            }
        }

        if(getUseHistory() != null && getUseHistory() && changeDate == null) {
            throw new Rcra54OutboundException("The solicit request cannot be created without a change date! The \"Use " +
                    "solicit history\" flag is set to \"" + getUseHistory() + "\" but there is no solicit history records in " +
                    "the database and the change date is set to \"" + changeDate + "\".");
        }

        return requestFactory.getFADataByState(state, changeDate);
    }

}