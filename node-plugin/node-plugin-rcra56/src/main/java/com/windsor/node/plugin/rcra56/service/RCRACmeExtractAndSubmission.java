package com.windsor.node.plugin.rcra56.service;

import javax.xml.bind.JAXBElement;

import com.windsor.node.plugin.rcra56.domain.HazardousWasteCMESubmissionDataType;
import com.windsor.node.plugin.rcra56.domain.ObjectFactory;
import com.windsor.node.plugin.rcra56.domain.OperationType;

public class RCRACmeExtractAndSubmission extends AbstractRcraSubmitService<HazardousWasteCMESubmissionDataType> {

	public RCRACmeExtractAndSubmission() {
		super(OperationType.CME);
	}

	@Override
	protected JAXBElement<HazardousWasteCMESubmissionDataType> getPayloadRootElement(ObjectFactory objectFactory, HazardousWasteCMESubmissionDataType entity) {
		return objectFactory.createHazardousWasteCMESubmission(entity);
	}

	@Override
	protected HazardousWasteCMESubmissionDataType getPayloadRootEntity() {
		return getRcraDao().getCmeRoot();
	}
	
}
