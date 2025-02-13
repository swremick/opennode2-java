package com.windsor.node.plugin.rcra56.service;

import javax.xml.bind.JAXBElement;

import com.windsor.node.plugin.rcra56.domain.HazardousWastePermitDataType;
import com.windsor.node.plugin.rcra56.domain.ObjectFactory;
import com.windsor.node.plugin.rcra56.domain.OperationType;

public class RCRAPermittingExtractAndSubmission extends AbstractRcraSubmitService<HazardousWastePermitDataType> {

	public RCRAPermittingExtractAndSubmission() {
		super(OperationType.PERMITTING);
	}

	@Override
	protected HazardousWastePermitDataType getPayloadRootEntity() {
		return getRcraDao().getPermitRoot();
	}

	@Override
	protected JAXBElement<HazardousWastePermitDataType> getPayloadRootElement(ObjectFactory objectFactory,
			HazardousWastePermitDataType rootEntity) {
		return objectFactory.createHazardousWastePermitSubmission(rootEntity);
	}

}
