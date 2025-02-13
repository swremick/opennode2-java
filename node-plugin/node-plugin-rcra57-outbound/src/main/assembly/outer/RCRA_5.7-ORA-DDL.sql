/*
Copyright (c) 2016, The Environmental Council of the States (ECOS)
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

/*****************************************************************************************************************************
 *
 *  Script Name:  RCRA_5.7-ORA-DDL.sql.sql
 *
 *  Company:  Windsor Solutions, Inc.
 *
 *  Purpose:  This script will build the database objects supporting the RCRA v5.7 flow
 *
 *  Maintenance:
 *
 *    Analyst         Date            Comment
 *    ----------      ----------      ------------------------------------------------------------------------------
 *    Windsor         06/18/2019      Created
 *
 ****************************************************************************************************************************
 */

  CREATE TABLE "RCRA_CA_AREA" 
   (	"CA_AREA_ID" VARCHAR2(40 BYTE), 
	"CA_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"AREA_SEQ_NUM" NUMBER(10,0), 
	"FAC_WIDE_IND" CHAR(1 BYTE), 
	"AREA_NAME" VARCHAR2(40 BYTE), 
	"AIR_REL_IND" CHAR(1 BYTE), 
	"GROUNDWATER_REL_IND" CHAR(1 BYTE), 
	"SOIL_REL_IND" CHAR(1 BYTE), 
	"SURFACE_WATER_REL_IND" CHAR(1 BYTE), 
	"REGULATED_UNIT_IND" CHAR(1 BYTE), 
	"EPA_RESP_PERSON_DATA_OWNER_CDE" CHAR(2 BYTE), 
	"EPA_RESP_PERSON_ID" VARCHAR2(5 BYTE), 
	"STA_RESP_PERSON_DATA_OWNER_CDE" CHAR(2 BYTE), 
	"STA_RESP_PERSON_ID" VARCHAR2(5 BYTE), 
	"SUPP_INFO_TXT" VARCHAR2(2000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CA_AREA"."CA_AREA_ID" IS 'Parent: A list of Correction Action Areas for a particluar Handler (_PK)';
   COMMENT ON COLUMN "RCRA_CA_AREA"."CA_FAC_SUBM_ID" IS 'Parent: A list of Correction Action Areas for a particluar Handler (_FK)';
   COMMENT ON COLUMN "RCRA_CA_AREA"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CA_AREA"."AREA_SEQ_NUM" IS 'Code used for administrative purposes to uniquely designate a group of units (or a single unit) with a common history and projection of corrective action requirements. (AreaSequenceNumber)';
   COMMENT ON COLUMN "RCRA_CA_AREA"."FAC_WIDE_IND" IS 'Indicates that the corrective action applies to the entire facility. (FacilityWideIndicator)';
   COMMENT ON COLUMN "RCRA_CA_AREA"."AREA_NAME" IS 'The name of the Corrective Action area. (AreaName)';
   COMMENT ON COLUMN "RCRA_CA_AREA"."AIR_REL_IND" IS 'Indicates that there has been a release to air (either within or beyond the facility boundary) from the unit/area. This may include releases of subsurface gas. (AirReleaseIndicator)';
   COMMENT ON COLUMN "RCRA_CA_AREA"."GROUNDWATER_REL_IND" IS 'Indicates that there has been a release to groundwater from the unit/area. (GroundwaterReleaseIndicator)';
   COMMENT ON COLUMN "RCRA_CA_AREA"."SOIL_REL_IND" IS 'Indicates that there has been a release to soil (either within or beyond the facility boundary) from the unit/area. This may include subsoil contamination beneath the unit/area. (SoilReleaseIndicator)';
   COMMENT ON COLUMN "RCRA_CA_AREA"."SURFACE_WATER_REL_IND" IS 'Indicates that there has been a release to surface water (either within or beyond the facility boundary) from the unit/area. (SurfaceWaterReleaseIndicator)';
   COMMENT ON COLUMN "RCRA_CA_AREA"."REGULATED_UNIT_IND" IS 'Indicates that the corrective action applies to a regulated unit. (RegulatedUnitIndicator)';
   COMMENT ON COLUMN "RCRA_CA_AREA"."EPA_RESP_PERSON_DATA_OWNER_CDE" IS 'Indicates the agency that defines the person identifier. (EPAResponsiblePersonDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_CA_AREA"."EPA_RESP_PERSON_ID" IS 'The person currently responsible for the permit at the EPA level. (EPAResponsiblePersonID)';
   COMMENT ON COLUMN "RCRA_CA_AREA"."STA_RESP_PERSON_DATA_OWNER_CDE" IS 'Indicates the agency that defines the person identifier. (StateResponsiblePersonDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_CA_AREA"."STA_RESP_PERSON_ID" IS 'The state person currently responsible for overseeing the corrective action area. (StateResponsiblePersonID)';
   COMMENT ON COLUMN "RCRA_CA_AREA"."SUPP_INFO_TXT" IS 'Notes providing more information. (SupplementalInformationText)';
   COMMENT ON TABLE "RCRA_CA_AREA"  IS 'Schema element: CorrectiveActionAreaDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CA_AREA_REL_EVENT
--------------------------------------------------------

  CREATE TABLE "RCRA_CA_AREA_REL_EVENT" 
   (	"CA_AREA_REL_EVENT_ID" VARCHAR2(40 BYTE), 
	"CA_AREA_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"ACT_LOC_CODE" CHAR(2 BYTE), 
	"CORCT_ACT_EVENT_DATA_OWNER_CDE" CHAR(2 BYTE), 
	"CORCT_ACT_EVENT_CODE" VARCHAR2(7 BYTE), 
	"EVENT_AGN_CODE" CHAR(1 BYTE), 
	"EVENT_SEQ_NUM" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "RCRA_CA_AREA_REL_EVENT"."CA_AREA_REL_EVENT_ID" IS 'Parent: Linking Data for Corrective Action Areas and Events or Authorities and Events (_PK)';
   COMMENT ON COLUMN "RCRA_CA_AREA_REL_EVENT"."CA_AREA_ID" IS 'Parent: Linking Data for Corrective Action Areas and Events or Authorities and Events (_FK)';
   COMMENT ON COLUMN "RCRA_CA_AREA_REL_EVENT"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CA_AREA_REL_EVENT"."ACT_LOC_CODE" IS 'Indicates the location of the agency regulating the handler. (ActivityLocationCode)';
   COMMENT ON COLUMN "RCRA_CA_AREA_REL_EVENT"."CORCT_ACT_EVENT_DATA_OWNER_CDE" IS 'Indicates the agency that defines the corrective action event. (CorrectiveActionEventDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_CA_AREA_REL_EVENT"."CORCT_ACT_EVENT_CODE" IS 'A code which corresponds to a specific event or event type. The first two characters indicate the event category and the last three characters the numeric event number. (CorrectiveActionEventCode)';
   COMMENT ON COLUMN "RCRA_CA_AREA_REL_EVENT"."EVENT_AGN_CODE" IS 'Agency responsible for the event. (EventAgencyCode)';
   COMMENT ON COLUMN "RCRA_CA_AREA_REL_EVENT"."EVENT_SEQ_NUM" IS 'System-generated value used to uniquely identify multiple occurrences of a corrective action event. (EventSequenceNumber)';
   COMMENT ON TABLE "RCRA_CA_AREA_REL_EVENT"  IS 'Schema element: CorrectiveActionAreaRelatedEventDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CA_AUTHORITY
--------------------------------------------------------

  CREATE TABLE "RCRA_CA_AUTHORITY" 
   (	"CA_AUTHORITY_ID" VARCHAR2(40 BYTE), 
	"CA_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"ACT_LOC_CODE" CHAR(2 BYTE), 
	"AUTHORITY_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"AUTHORITY_TYPE_CODE" CHAR(1 BYTE), 
	"AUTHORITY_AGN_CODE" CHAR(1 BYTE), 
	"AUTHORITY_EFFC_DATE" DATE, 
	"ISSUE_DATE" DATE, 
	"END_DATE" DATE, 
	"ESTABLISHED_REPOSITORY_CODE" CHAR(1 BYTE), 
	"RESP_LEAD_PROG_IDEN" CHAR(1 BYTE), 
	"AUTHORITY_SUBORG_DATA_OWNR_CDE" CHAR(2 BYTE), 
	"AUTHORITY_SUBORG_CODE" VARCHAR2(10 BYTE), 
	"RESP_PERSON_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"RESP_PERSON_ID" VARCHAR2(5 BYTE), 
	"SUPP_INFO_TXT" VARCHAR2(2000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."CA_AUTHORITY_ID" IS 'Parent: A list of Correction Action Authorities for a particluar Handler (_PK)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."CA_FAC_SUBM_ID" IS 'Parent: A list of Correction Action Authorities for a particluar Handler (_FK)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."ACT_LOC_CODE" IS 'Indicates the location of the agency regulating the handler. (ActivityLocationCode)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."AUTHORITY_DATA_OWNER_CODE" IS 'Indicates the agency that defines the authority. (AuthorityDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."AUTHORITY_TYPE_CODE" IS 'A code used to indicate whether a permit, administrative order, or other authority has been issued to implement the corrective action process. (AuthorityTypeCode)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."AUTHORITY_AGN_CODE" IS 'Agency responsible for the Authority. (AuthorityAgencyCode)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."AUTHORITY_EFFC_DATE" IS 'Date that the authority became effective. (AuthorityEffectiveDate)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."ISSUE_DATE" IS 'Date the authorized agency official signs the order, permit, or permit modification. (IssueDate)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."END_DATE" IS 'The date when the corrective action authority is revoked or ended. (EndDate)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."ESTABLISHED_REPOSITORY_CODE" IS 'The action by which the Director requires the owner/operator to establish and maintain an information repository at a location near the facility for the purpose of making accessible to interested parties documents, reports, and other public information relevant to public understanding of the activities, findings, and plans for such corrective action initiatives. (EstablishedRepositoryCode)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."RESP_LEAD_PROG_IDEN" IS 'Code indicating the program in which the organization establishes the applicable guidance that the authority should be issued. (ResponsibleLeadProgramIdentifier)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."AUTHORITY_SUBORG_DATA_OWNR_CDE" IS 'Authority responsible suborganization owner. (AuthoritySuborganizationDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."AUTHORITY_SUBORG_CODE" IS 'Authority responsible suborganization. (AuthoritySuborganizationCode)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."RESP_PERSON_DATA_OWNER_CODE" IS 'Indicates the agency that defines the person identifier. (ResponsiblePersonDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."RESP_PERSON_ID" IS 'Code indicating the person within the agency responsible for conducting the evaluation or who is the responsible Authority. (ResponsiblePersonID)';
   COMMENT ON COLUMN "RCRA_CA_AUTHORITY"."SUPP_INFO_TXT" IS 'Notes providing more information. (SupplementalInformationText)';
   COMMENT ON TABLE "RCRA_CA_AUTHORITY"  IS 'Schema element: CorrectiveActionAuthorityDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CA_AUTH_REL_EVENT
--------------------------------------------------------

  CREATE TABLE "RCRA_CA_AUTH_REL_EVENT" 
   (	"CA_AUTH_REL_EVENT_ID" VARCHAR2(40 BYTE), 
	"CA_AUTHORITY_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"ACT_LOC_CODE" CHAR(2 BYTE), 
	"CORCT_ACT_EVENT_DATA_OWNER_CDE" CHAR(2 BYTE), 
	"CORCT_ACT_EVENT_CODE" VARCHAR2(7 BYTE), 
	"EVENT_AGN_CODE" CHAR(1 BYTE), 
	"EVENT_SEQ_NUM" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "RCRA_CA_AUTH_REL_EVENT"."CA_AUTH_REL_EVENT_ID" IS 'Parent: Linking Data for Corrective Action Areas and Events or Authorities and Events (_PK)';
   COMMENT ON COLUMN "RCRA_CA_AUTH_REL_EVENT"."CA_AUTHORITY_ID" IS 'Parent: Linking Data for Corrective Action Areas and Events or Authorities and Events (_FK)';
   COMMENT ON COLUMN "RCRA_CA_AUTH_REL_EVENT"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CA_AUTH_REL_EVENT"."ACT_LOC_CODE" IS 'Indicates the location of the agency regulating the handler. (ActivityLocationCode)';
   COMMENT ON COLUMN "RCRA_CA_AUTH_REL_EVENT"."CORCT_ACT_EVENT_DATA_OWNER_CDE" IS 'Indicates the agency that defines the corrective action event. (CorrectiveActionEventDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_CA_AUTH_REL_EVENT"."CORCT_ACT_EVENT_CODE" IS 'A code which corresponds to a specific event or event type. The first two characters indicate the event category and the last three characters the numeric event number. (CorrectiveActionEventCode)';
   COMMENT ON COLUMN "RCRA_CA_AUTH_REL_EVENT"."EVENT_AGN_CODE" IS 'Agency responsible for the event. (EventAgencyCode)';
   COMMENT ON COLUMN "RCRA_CA_AUTH_REL_EVENT"."EVENT_SEQ_NUM" IS 'System-generated value used to uniquely identify multiple occurrences of a corrective action event. (EventSequenceNumber)';
   COMMENT ON TABLE "RCRA_CA_AUTH_REL_EVENT"  IS 'Schema element: CorrectiveActionAuthorityRelatedEventDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CA_EVENT
--------------------------------------------------------

  CREATE TABLE "RCRA_CA_EVENT" 
   (	"CA_EVENT_ID" VARCHAR2(40 BYTE), 
	"CA_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"ACT_LOC_CODE" CHAR(2 BYTE), 
	"CORCT_ACT_EVENT_DATA_OWNER_CDE" CHAR(2 BYTE), 
	"CORCT_ACT_EVENT_CODE" VARCHAR2(7 BYTE), 
	"EVENT_AGN_CODE" CHAR(1 BYTE), 
	"EVENT_SEQ_NUM" NUMBER(10,0), 
	"ACTL_DATE" DATE, 
	"ORIGINAL_SCHEDULE_DATE" DATE, 
	"NEW_SCHEDULE_DATE" DATE, 
	"EVENT_SUBORG_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"EVENT_SUBORG_CODE" VARCHAR2(10 BYTE), 
	"RESP_PERSON_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"RESP_PERSON_ID" VARCHAR2(5 BYTE), 
	"SUPP_INFO_TXT" VARCHAR2(2000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CA_EVENT"."CA_EVENT_ID" IS 'Parent: A list of Correction Action Events for a particluar Handler (_PK)';
   COMMENT ON COLUMN "RCRA_CA_EVENT"."CA_FAC_SUBM_ID" IS 'Parent: A list of Correction Action Events for a particluar Handler (_FK)';
   COMMENT ON COLUMN "RCRA_CA_EVENT"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CA_EVENT"."ACT_LOC_CODE" IS 'Indicates the location of the agency regulating the handler. (ActivityLocationCode)';
   COMMENT ON COLUMN "RCRA_CA_EVENT"."CORCT_ACT_EVENT_DATA_OWNER_CDE" IS 'Indicates the agency that defines the corrective action event. (CorrectiveActionEventDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_CA_EVENT"."CORCT_ACT_EVENT_CODE" IS 'A code which corresponds to a specific event or event type. The first two characters indicate the event category and the last three characters the numeric event number. (CorrectiveActionEventCode)';
   COMMENT ON COLUMN "RCRA_CA_EVENT"."EVENT_AGN_CODE" IS 'Agency responsible for the event. (EventAgencyCode)';
   COMMENT ON COLUMN "RCRA_CA_EVENT"."EVENT_SEQ_NUM" IS 'System-generated value used to uniquely identify multiple occurrences of a corrective action event. (EventSequenceNumber)';
   COMMENT ON COLUMN "RCRA_CA_EVENT"."ACTL_DATE" IS 'Date on which actual completion of an event occurs. (ActualDate)';
   COMMENT ON COLUMN "RCRA_CA_EVENT"."ORIGINAL_SCHEDULE_DATE" IS 'The original scheduled completion date for an event. This date cannot be changed once entered. Slippage of the scheduled completion date is recorded in the NewScheduleDate Data Element. (OriginalScheduleDate)';
   COMMENT ON COLUMN "RCRA_CA_EVENT"."NEW_SCHEDULE_DATE" IS 'Revised scheduled completion date of the event. This date is used in conjunction with the Original Scheduled Event Date to allow tracking scheduled date slippage. As the scheduled date changes, this field is updated with the new date and the Original Scheduled Event Date is not changed. (NewScheduleDate)';
   COMMENT ON COLUMN "RCRA_CA_EVENT"."EVENT_SUBORG_DATA_OWNER_CODE" IS 'Event responsible suborganization owner. (EventSuborganizationDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_CA_EVENT"."EVENT_SUBORG_CODE" IS 'Event responsible suborganization. (EventSuborganizationCode)';
   COMMENT ON COLUMN "RCRA_CA_EVENT"."RESP_PERSON_DATA_OWNER_CODE" IS 'Indicates the agency that defines the person identifier. (ResponsiblePersonDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_CA_EVENT"."RESP_PERSON_ID" IS 'Code indicating the person within the agency responsible for conducting the evaluation or who is the responsible Authority. (ResponsiblePersonID)';
   COMMENT ON COLUMN "RCRA_CA_EVENT"."SUPP_INFO_TXT" IS 'Notes providing more information. (SupplementalInformationText)';
   COMMENT ON TABLE "RCRA_CA_EVENT"  IS 'Schema element: CorrectiveActionEventDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CA_EVENT_COMMITMENT
--------------------------------------------------------

  CREATE TABLE "RCRA_CA_EVENT_COMMITMENT" 
   (	"CA_EVENT_COMMITMENT_ID" VARCHAR2(40 BYTE), 
	"CA_EVENT_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"COMMIT_LEAD" CHAR(2 BYTE), 
	"COMMIT_SEQ_NUM" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "RCRA_CA_EVENT_COMMITMENT"."CA_EVENT_COMMITMENT_ID" IS 'Parent: Linking Data for Commitment/Initiative and Corrective Action or Permitting Events. (_PK)';
   COMMENT ON COLUMN "RCRA_CA_EVENT_COMMITMENT"."CA_EVENT_ID" IS 'Parent: Linking Data for Commitment/Initiative and Corrective Action or Permitting Events. (_FK)';
   COMMENT ON COLUMN "RCRA_CA_EVENT_COMMITMENT"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CA_EVENT_COMMITMENT"."COMMIT_LEAD" IS 'Parent: Linking Data for Commitment/Initiative and Corrective Action or Permitting Events. (CommitmentLead)';
   COMMENT ON COLUMN "RCRA_CA_EVENT_COMMITMENT"."COMMIT_SEQ_NUM" IS 'Parent: Linking Data for Commitment/Initiative and Corrective Action or Permitting Events. (CommitmentSequenceNumber)';
   COMMENT ON TABLE "RCRA_CA_EVENT_COMMITMENT"  IS 'Schema element: EventEventCommitmentDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CA_FAC_SUBM
--------------------------------------------------------

  CREATE TABLE "RCRA_CA_FAC_SUBM" 
   (	"CA_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"CA_SUBM_ID" VARCHAR2(40 BYTE), 
	"HANDLER_ID" VARCHAR2(12 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CA_FAC_SUBM"."CA_FAC_SUBM_ID" IS 'Parent: Supplies all of the relevant Corrective Action Data for a given Handler (_PK)';
   COMMENT ON COLUMN "RCRA_CA_FAC_SUBM"."CA_SUBM_ID" IS 'Parent: Supplies all of the relevant Corrective Action Data for a given Handler (_FK)';
   COMMENT ON COLUMN "RCRA_CA_FAC_SUBM"."HANDLER_ID" IS 'Code that uniquely identifies the handler. (HandlerID)';
   COMMENT ON TABLE "RCRA_CA_FAC_SUBM"  IS 'Schema element: CorrectiveActionFacilitySubmissionDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CA_REL_PERMIT_UNIT
--------------------------------------------------------

  CREATE TABLE "RCRA_CA_REL_PERMIT_UNIT" 
   (	"CA_REL_PERMIT_UNIT_ID" VARCHAR2(40 BYTE), 
	"CA_AREA_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"PERMIT_UNIT_SEQ_NUM" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "RCRA_CA_REL_PERMIT_UNIT"."CA_REL_PERMIT_UNIT_ID" IS 'Parent: A permitted unit related to a corrective action area. (_PK)';
   COMMENT ON COLUMN "RCRA_CA_REL_PERMIT_UNIT"."CA_AREA_ID" IS 'Parent: A permitted unit related to a corrective action area. (_FK)';
   COMMENT ON COLUMN "RCRA_CA_REL_PERMIT_UNIT"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CA_REL_PERMIT_UNIT"."PERMIT_UNIT_SEQ_NUM" IS 'System-generated value used to uniquely identify a process unit. (PermitUnitSequenceNumber)';
   COMMENT ON TABLE "RCRA_CA_REL_PERMIT_UNIT"  IS 'Schema element: CorrectiveActionRelatedPermitUnitDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CA_STATUTORY_CITATION
--------------------------------------------------------

  CREATE TABLE "RCRA_CA_STATUTORY_CITATION" 
   (	"CA_STATUTORY_CITATION_ID" VARCHAR2(40 BYTE), 
	"CA_AUTHORITY_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"STATUTORY_CITTION_DTA_OWNR_CDE" CHAR(2 BYTE), 
	"STATUTORY_CITATION_IDEN" CHAR(1 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CA_STATUTORY_CITATION"."CA_STATUTORY_CITATION_ID" IS 'Parent: Linking Data for Corrective Action Authorities and Statutory Citations (_PK)';
   COMMENT ON COLUMN "RCRA_CA_STATUTORY_CITATION"."CA_AUTHORITY_ID" IS 'Parent: Linking Data for Corrective Action Authorities and Statutory Citations (_FK)';
   COMMENT ON COLUMN "RCRA_CA_STATUTORY_CITATION"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CA_STATUTORY_CITATION"."STATUTORY_CITTION_DTA_OWNR_CDE" IS 'Orgnaization responsible for the Statutory Citation (use two-digit postal code) (StatutoryCitationDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_CA_STATUTORY_CITATION"."STATUTORY_CITATION_IDEN" IS 'Identifier that identifies the statutory authority under which the corrective action event occured (StatutoryCitationIdentifier)';
   COMMENT ON TABLE "RCRA_CA_STATUTORY_CITATION"  IS 'Schema element: CorrectiveActionStatutoryCitationDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CA_SUBM
--------------------------------------------------------

  CREATE TABLE "RCRA_CA_SUBM" 
   (	"CA_SUBM_ID" VARCHAR2(40 BYTE)
   ) ;

   COMMENT ON TABLE "RCRA_CA_SUBM"  IS 'Schema element: HazardousWasteCorrectiveActionDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_CITATION
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_CITATION" 
   (	"CME_CITATION_ID" VARCHAR2(40 BYTE), 
	"CME_VIOL_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"CITATION_NAME_SEQ_NUM" NUMBER(10,0), 
	"CITATION_NAME" VARCHAR2(80 BYTE), 
	"CITATION_NAME_OWNER" CHAR(2 BYTE), 
	"CITATION_NAME_TYPE" CHAR(2 BYTE), 
	"NOTES" VARCHAR2(4000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CME_CITATION"."CME_CITATION_ID" IS 'Parent: Compliance Monitoring and Enforcement Citation Data (_PK)';
   COMMENT ON COLUMN "RCRA_CME_CITATION"."CME_VIOL_ID" IS 'Parent: Compliance Monitoring and Enforcement Citation Data (_FK)';
   COMMENT ON COLUMN "RCRA_CME_CITATION"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CME_CITATION"."CITATION_NAME_SEQ_NUM" IS 'Parent: Compliance Monitoring and Enforcement Citation Data (CitationNameSequenceNumber)';
   COMMENT ON COLUMN "RCRA_CME_CITATION"."CITATION_NAME" IS 'The citation(s) of the violations alleged (CME) or of the Authority used (CA). (CitationName)';
   COMMENT ON COLUMN "RCRA_CME_CITATION"."CITATION_NAME_OWNER" IS 'State postal code (CitationNameOwner)';
   COMMENT ON COLUMN "RCRA_CME_CITATION"."CITATION_NAME_TYPE" IS 'Existing nationally defined values: FR, FS, OC, PC,SR,SS,V3 (CitationNameType)';
   COMMENT ON COLUMN "RCRA_CME_CITATION"."NOTES" IS 'Parent: Compliance Monitoring and Enforcement Citation Data (Notes)';
   COMMENT ON TABLE "RCRA_CME_CITATION"  IS 'Schema element: CitationDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_CSNY_DATE
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_CSNY_DATE" 
   (	"CME_CSNY_DATE_ID" VARCHAR2(40 BYTE), 
	"CME_ENFRC_ACT_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"SNY_DATE" DATE
   ) ;

   COMMENT ON COLUMN "RCRA_CME_CSNY_DATE"."CME_CSNY_DATE_ID" IS 'Parent: Compliance Monitoring and Enforcement Significant Non-Complier Date Data (_PK)';
   COMMENT ON COLUMN "RCRA_CME_CSNY_DATE"."CME_ENFRC_ACT_ID" IS 'Parent: Compliance Monitoring and Enforcement Significant Non-Complier Date Data (_FK)';
   COMMENT ON COLUMN "RCRA_CME_CSNY_DATE"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CME_CSNY_DATE"."SNY_DATE" IS 'Date of the SNY that the Action is Addressing (SNYDate)';
   COMMENT ON TABLE "RCRA_CME_CSNY_DATE"  IS 'Schema element: CSNYDateDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_ENFRC_ACT
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_ENFRC_ACT" 
   (	"CME_ENFRC_ACT_ID" VARCHAR2(40 BYTE), 
	"CME_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"ENFRC_AGN_LOC_NAME" CHAR(2 BYTE), 
	"ENFRC_ACT_IDEN" VARCHAR2(3 BYTE), 
	"ENFRC_ACT_DATE" DATE, 
	"ENFRC_AGN_NAME" CHAR(1 BYTE), 
	"ENFRC_DOCKET_NUM" VARCHAR2(15 BYTE), 
	"ENFRC_ATTRY" VARCHAR2(5 BYTE), 
	"CORCT_ACT_COMPT" CHAR(1 BYTE), 
	"CNST_AGMT_FINAL_ORDER_SEQ_NUM" NUMBER(10,0), 
	"APPEAL_INIT_DATE" DATE, 
	"APPEAL_RSLN_DATE" DATE, 
	"DISP_STAT_DATE" DATE, 
	"DISP_STAT_OWNER" CHAR(2 BYTE), 
	"DISP_STAT" CHAR(2 BYTE), 
	"ENFRC_OWNER" CHAR(2 BYTE), 
	"ENFRC_TYPE" CHAR(3 BYTE), 
	"ENFRC_RESP_PERSON_OWNER" CHAR(2 BYTE), 
	"ENFRC_RESP_PERSON_IDEN" VARCHAR2(5 BYTE), 
	"ENFRC_RESP_SUBORG_OWNER" CHAR(2 BYTE), 
	"ENFRC_RESP_SUBORG" VARCHAR2(10 BYTE), 
	"NOTES" VARCHAR2(4000 BYTE), 
	"FA_REQUIRED" CHAR(1 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."CME_ENFRC_ACT_ID" IS 'Parent: Compliance Monitoring and Enforcement Data (_PK)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."CME_FAC_SUBM_ID" IS 'Parent: Compliance Monitoring and Enforcement Data (_FK)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."ENFRC_AGN_LOC_NAME" IS 'The U.S.Postal Service alphabetic code that represents the U.S.State or territory in which a state or local government enforcement agency operates. (EnforcementAgencyLocationName)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."ENFRC_ACT_IDEN" IS 'The unique alphanumeric identifier used in the applicable database to identify a specific enforcement action pertaining to a regulated entity or facility. (EnforcementActionIdentifier)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."ENFRC_ACT_DATE" IS 'The calendar date the enforcement action was issued or filed. (EnforcementActionDate)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."ENFRC_AGN_NAME" IS 'The full name of the agency, department, or organization that submitted the enforcement action data to EPA. (EnforcementAgencyName)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."ENFRC_DOCKET_NUM" IS 'Notes the relevant docket number which enforcement staff have assigned for tracking of enforcement actions. (EnforcementDocketNumber)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."ENFRC_ATTRY" IS 'Identifies the attorney within the agency responsible for issuing the enforcement action. (EnforcementAttorney)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."CORCT_ACT_COMPT" IS 'Parent: Compliance Monitoring and Enforcement Data (CorrectiveActionComponent)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."CNST_AGMT_FINAL_ORDER_SEQ_NUM" IS 'Parent: Compliance Monitoring and Enforcement Data (ConsentAgreementFinalOrderSequenceNumber)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."APPEAL_INIT_DATE" IS 'Parent: Compliance Monitoring and Enforcement Data (AppealInitiatedDate)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."APPEAL_RSLN_DATE" IS 'Parent: Compliance Monitoring and Enforcement Data (AppealResolutionDate)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."DISP_STAT_DATE" IS 'Parent: Compliance Monitoring and Enforcement Data (DispositionStatusDate)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."DISP_STAT_OWNER" IS 'Parent: Compliance Monitoring and Enforcement Data (DispositionStatusOwner)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."DISP_STAT" IS 'Parent: Compliance Monitoring and Enforcement Data (DispositionStatus)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."ENFRC_OWNER" IS 'State Postal Code (EnforcementOwner)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."ENFRC_TYPE" IS 'A code that identifies the type of action being taken against a handler. (EnforcementType)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."ENFRC_RESP_PERSON_OWNER" IS 'Indicates the agency that defines the person identifier. (EnforcementResponsiblePersonOwner)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."ENFRC_RESP_PERSON_IDEN" IS 'Code indicating the person within the agency responsible for conducting the enforcement. (EnforcementResponsiblePersonIdentifier)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."ENFRC_RESP_SUBORG_OWNER" IS 'Parent: Compliance Monitoring and Enforcement Data (EnforcementResponsibleSuborganizationOwner)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."ENFRC_RESP_SUBORG" IS 'Parent: Compliance Monitoring and Enforcement Data (EnforcementResponsibleSuborganization)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."NOTES" IS 'Parent: Compliance Monitoring and Enforcement Data (Notes)';
   COMMENT ON COLUMN "RCRA_CME_ENFRC_ACT"."FA_REQUIRED" IS 'Parent: Compliance Monitoring and Enforcement Data (FinancialAssuranceReq)';
   COMMENT ON TABLE "RCRA_CME_ENFRC_ACT"  IS 'Schema element: EnforcementActionDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_EVAL
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_EVAL" 
   (	"CME_EVAL_ID" VARCHAR2(40 BYTE), 
	"CME_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"EVAL_ACT_LOC" CHAR(2 BYTE), 
	"EVAL_IDEN" VARCHAR2(3 BYTE), 
	"EVAL_START_DATE" DATE, 
	"EVAL_RESP_AGN" CHAR(1 BYTE), 
	"DAY_ZERO" DATE, 
	"FOUND_VIOL" CHAR(1 BYTE), 
	"CTZN_CPLT_IND" CHAR(1 BYTE), 
	"MULTIMEDIA_IND" CHAR(1 BYTE), 
	"SAMPL_IND" CHAR(1 BYTE), 
	"NOT_SUBTL_C_IND" CHAR(1 BYTE), 
	"EVAL_TYPE_OWNER" CHAR(2 BYTE), 
	"EVAL_TYPE" VARCHAR2(3 BYTE), 
	"FOCUS_AREA_OWNER" CHAR(2 BYTE), 
	"FOCUS_AREA" VARCHAR2(3 BYTE), 
	"EVAL_RESP_PERSON_IDEN_OWNER" CHAR(2 BYTE), 
	"EVAL_RESP_PERSON_IDEN" VARCHAR2(5 BYTE), 
	"EVAL_RESP_SUBORG_OWNER" CHAR(2 BYTE), 
	"EVAL_RESP_SUBORG" VARCHAR2(10 BYTE), 
	"NOTES" VARCHAR2(4000 BYTE), 
	"NOC_DATE" DATE
   ) ;

   COMMENT ON COLUMN "RCRA_CME_EVAL"."CME_EVAL_ID" IS 'Parent: Compliance Monitoring and Enforcement Evaluation Data (_PK)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."CME_FAC_SUBM_ID" IS 'Parent: Compliance Monitoring and Enforcement Evaluation Data (_FK)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."EVAL_ACT_LOC" IS 'Indicates the location of the agency regulating the EPA handler. (EvaluationActivityLocation)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."EVAL_IDEN" IS 'Name or number assigned by the implementing agency to identify an evaluation. (EvaluationIdentifier)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."EVAL_START_DATE" IS 'The first day of the inspection or record review regardless of the duration of the inspection. (EvaluationStartDate)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."EVAL_RESP_AGN" IS 'Code indicating the agency responsible for conducting the evaluation. (EvaluationResponsibleAgency)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."DAY_ZERO" IS 'Date fo the Last Non-Followup Evaluation (Applies to SNY/SNN Evaluations Only) (DayZero)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."FOUND_VIOL" IS 'Flag indicating if a violation was found. (FoundViolation)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."CTZN_CPLT_IND" IS 'The inspection or record review was initiated because of a tip/complaint (CitizenComplaintIndicator)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."MULTIMEDIA_IND" IS 'Parent: Compliance Monitoring and Enforcement Evaluation Data (MultimediaIndicator)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."SAMPL_IND" IS 'Parent: Compliance Monitoring and Enforcement Evaluation Data (SamplingIndicator)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."NOT_SUBTL_C_IND" IS 'The inspection conducted pursuant to RCRA 3007 or State equivalent; determiniation made: sit is Non-Hazardous Waste. (NotSubtitleCIndicator)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."EVAL_TYPE_OWNER" IS 'Indicates the agency that defines the type of evaluation. (EvaluationTypeOwner)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."EVAL_TYPE" IS 'Code to report the type of evaluation conducted at the handler. (EvaluationType)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."FOCUS_AREA_OWNER" IS 'Parent: Compliance Monitoring and Enforcement Evaluation Data (FocusAreaOwner)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."FOCUS_AREA" IS 'Parent: Compliance Monitoring and Enforcement Evaluation Data (FocusArea)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."EVAL_RESP_PERSON_IDEN_OWNER" IS 'Indicates the agency that defines the person identifier. (EvaluationResponsiblePersonIdentifierOwner)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."EVAL_RESP_PERSON_IDEN" IS 'Code indicating the person within the agency responsible for conducting the evaluation. (EvaluationResponsiblePersonIdentifier)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."EVAL_RESP_SUBORG_OWNER" IS 'Indicates the agency that defines the suborganization identifier. (EvaluationResponsibleSuborganizationOwner)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."EVAL_RESP_SUBORG" IS 'Code indicating the branch/district within the agency responsible for conducting the evaluation. (EvaluationResponsibleSuborganization)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."NOTES" IS 'Parent: Compliance Monitoring and Enforcement Evaluation Data (Notes)';
   COMMENT ON COLUMN "RCRA_CME_EVAL"."NOC_DATE" IS 'NOC Date. (NOCDate)';
   COMMENT ON TABLE "RCRA_CME_EVAL"  IS 'Schema element: EvaluationDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_EVAL_COMMIT
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_EVAL_COMMIT" 
   (	"CME_EVAL_COMMIT_ID" VARCHAR2(40 BYTE), 
	"CME_EVAL_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"COMMIT_LEAD" CHAR(2 BYTE), 
	"COMMIT_SEQ_NUM" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "RCRA_CME_EVAL_COMMIT"."CME_EVAL_COMMIT_ID" IS 'Parent: Linking Data for Commitment/Initiative and Evaluation. (_PK)';
   COMMENT ON COLUMN "RCRA_CME_EVAL_COMMIT"."CME_EVAL_ID" IS 'Parent: Linking Data for Commitment/Initiative and Evaluation. (_FK)';
   COMMENT ON COLUMN "RCRA_CME_EVAL_COMMIT"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CME_EVAL_COMMIT"."COMMIT_LEAD" IS 'Parent: Linking Data for Commitment/Initiative and Evaluation. (CommitmentLead)';
   COMMENT ON COLUMN "RCRA_CME_EVAL_COMMIT"."COMMIT_SEQ_NUM" IS 'Parent: Linking Data for Commitment/Initiative and Evaluation. (CommitmentSequenceNumber)';
   COMMENT ON TABLE "RCRA_CME_EVAL_COMMIT"  IS 'Schema element: EvaluationCommitmentDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_EVAL_VIOL
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_EVAL_VIOL" 
   (	"CME_EVAL_VIOL_ID" VARCHAR2(40 BYTE), 
	"CME_EVAL_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"VIOL_ACT_LOC" CHAR(2 BYTE), 
	"VIOL_SEQ_NUM" NUMBER(10,0), 
	"AGN_WHICH_DTRM_VIOL" CHAR(1 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CME_EVAL_VIOL"."CME_EVAL_VIOL_ID" IS 'Parent: Linking Data for Evaluation and Violation (_PK)';
   COMMENT ON COLUMN "RCRA_CME_EVAL_VIOL"."CME_EVAL_ID" IS 'Parent: Linking Data for Evaluation and Violation (_FK)';
   COMMENT ON COLUMN "RCRA_CME_EVAL_VIOL"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CME_EVAL_VIOL"."VIOL_ACT_LOC" IS 'Parent: Linking Data for Evaluation and Violation (ViolationActivityLocation)';
   COMMENT ON COLUMN "RCRA_CME_EVAL_VIOL"."VIOL_SEQ_NUM" IS 'Parent: Linking Data for Evaluation and Violation (ViolationSequenceNumber)';
   COMMENT ON COLUMN "RCRA_CME_EVAL_VIOL"."AGN_WHICH_DTRM_VIOL" IS 'Parent: Linking Data for Evaluation and Violation (AgencyWhichDeterminedViolation)';
   COMMENT ON TABLE "RCRA_CME_EVAL_VIOL"  IS 'Schema element: EvaluationViolationDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_FAC_SUBM
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_FAC_SUBM" 
   (	"CME_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"CME_SUBM_ID" VARCHAR2(40 BYTE), 
	"EPA_HDLR_ID" CHAR(12 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CME_FAC_SUBM"."CME_FAC_SUBM_ID" IS 'Parent: This contains Hbasic Data (_PK)';
   COMMENT ON COLUMN "RCRA_CME_FAC_SUBM"."CME_SUBM_ID" IS 'Parent: This contains Hbasic Data (_FK)';
   COMMENT ON COLUMN "RCRA_CME_FAC_SUBM"."EPA_HDLR_ID" IS 'Number that uniquely identifies the EPA handler. (EPAHandlerID)';
   COMMENT ON TABLE "RCRA_CME_FAC_SUBM"  IS 'Schema element: CMEFacilitySubmissionDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_MEDIA
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_MEDIA" 
   (	"CME_MEDIA_ID" VARCHAR2(40 BYTE), 
	"CME_ENFRC_ACT_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"MULTIMEDIA_CODE_OWNER" CHAR(2 BYTE), 
	"MULTIMEDIA_CODE" VARCHAR2(3 BYTE), 
	"NOTES" VARCHAR2(4000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CME_MEDIA"."CME_MEDIA_ID" IS 'Parent: Compliance Monitoring and Enfocement Multimedia Data (_PK)';
   COMMENT ON COLUMN "RCRA_CME_MEDIA"."CME_ENFRC_ACT_ID" IS 'Parent: Compliance Monitoring and Enfocement Multimedia Data (_FK)';
   COMMENT ON COLUMN "RCRA_CME_MEDIA"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CME_MEDIA"."MULTIMEDIA_CODE_OWNER" IS 'Indicates the agency that defines the multimedia code. (MultimediaCodeOwner)';
   COMMENT ON COLUMN "RCRA_CME_MEDIA"."MULTIMEDIA_CODE" IS 'Code which indicates the medium or program other than RCRA participating in the enforcement action. (MultimediaCode)';
   COMMENT ON COLUMN "RCRA_CME_MEDIA"."NOTES" IS 'Parent: Compliance Monitoring and Enfocement Multimedia Data (Notes)';
   COMMENT ON TABLE "RCRA_CME_MEDIA"  IS 'Schema element: MediaDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_MILESTONE
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_MILESTONE" 
   (	"CME_MILESTONE_ID" VARCHAR2(40 BYTE), 
	"CME_ENFRC_ACT_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"MILESTONE_SEQ_NUM" NUMBER(10,0), 
	"TECH_RQMT_IDEN" VARCHAR2(50 BYTE), 
	"TECH_RQMT_DESC" VARCHAR2(200 BYTE), 
	"MILESTONE_SCHD_COMP_DATE" DATE, 
	"MILESTONE_ACTL_COMP_DATE" DATE, 
	"MILESTONE_DFLT_DATE" DATE, 
	"NOTES" VARCHAR2(4000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CME_MILESTONE"."CME_MILESTONE_ID" IS 'Parent: Compliance Monitoring and Enforcement Milestone Data (_PK)';
   COMMENT ON COLUMN "RCRA_CME_MILESTONE"."CME_ENFRC_ACT_ID" IS 'Parent: Compliance Monitoring and Enforcement Milestone Data (_FK)';
   COMMENT ON COLUMN "RCRA_CME_MILESTONE"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CME_MILESTONE"."MILESTONE_SEQ_NUM" IS 'Parent: Compliance Monitoring and Enforcement Milestone Data (MilestoneSequenceNumber)';
   COMMENT ON COLUMN "RCRA_CME_MILESTONE"."TECH_RQMT_IDEN" IS 'Parent: Compliance Monitoring and Enforcement Milestone Data (TechnicalRequirementIdentifier)';
   COMMENT ON COLUMN "RCRA_CME_MILESTONE"."TECH_RQMT_DESC" IS 'Parent: Compliance Monitoring and Enforcement Milestone Data (TechnicalRequirementDescription)';
   COMMENT ON COLUMN "RCRA_CME_MILESTONE"."MILESTONE_SCHD_COMP_DATE" IS 'Parent: Compliance Monitoring and Enforcement Milestone Data (MilestoneScheduledCompletionDate)';
   COMMENT ON COLUMN "RCRA_CME_MILESTONE"."MILESTONE_ACTL_COMP_DATE" IS 'Parent: Compliance Monitoring and Enforcement Milestone Data (MilestoneActualCompletionDate)';
   COMMENT ON COLUMN "RCRA_CME_MILESTONE"."MILESTONE_DFLT_DATE" IS 'Parent: Compliance Monitoring and Enforcement Milestone Data (MilestoneDefaultedDate)';
   COMMENT ON COLUMN "RCRA_CME_MILESTONE"."NOTES" IS 'Parent: Compliance Monitoring and Enforcement Milestone Data (Notes)';
   COMMENT ON TABLE "RCRA_CME_MILESTONE"  IS 'Schema element: MilestoneDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_PNLTY
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_PNLTY" 
   (	"CME_PNLTY_ID" VARCHAR2(40 BYTE), 
	"CME_ENFRC_ACT_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"PNLTY_TYPE_OWNER" CHAR(2 BYTE), 
	"PNLTY_TYPE" VARCHAR2(3 BYTE), 
	"CASH_CIVIL_PNLTY_SOUGHT_AMOUNT" NUMBER(13,2), 
	"NOTES" VARCHAR2(4000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CME_PNLTY"."CME_PNLTY_ID" IS 'Parent: Compliance Monitoring and Enforcement Penalty Data (_PK)';
   COMMENT ON COLUMN "RCRA_CME_PNLTY"."CME_ENFRC_ACT_ID" IS 'Parent: Compliance Monitoring and Enforcement Penalty Data (_FK)';
   COMMENT ON COLUMN "RCRA_CME_PNLTY"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CME_PNLTY"."PNLTY_TYPE_OWNER" IS 'Indicates the agency that defines the penalty type (PenaltyTypeOwner)';
   COMMENT ON COLUMN "RCRA_CME_PNLTY"."PNLTY_TYPE" IS 'Code which indicates the type of penalty associated with the penalty amount. (PenaltyType)';
   COMMENT ON COLUMN "RCRA_CME_PNLTY"."CASH_CIVIL_PNLTY_SOUGHT_AMOUNT" IS 'The dollar amount of any proposed cash civil penalty set forth in a Complaint/Proposed Order. (CashCivilPenaltySoughtAmount)';
   COMMENT ON COLUMN "RCRA_CME_PNLTY"."NOTES" IS 'Parent: Compliance Monitoring and Enforcement Penalty Data (Notes)';
   COMMENT ON TABLE "RCRA_CME_PNLTY"  IS 'Schema element: PenaltyDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_PYMT
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_PYMT" 
   (	"CME_PYMT_ID" VARCHAR2(40 BYTE), 
	"CME_PNLTY_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"PYMT_SEQ_NUM" NUMBER(10,0), 
	"PYMT_DFLT_DATE" DATE, 
	"SCHD_PYMT_DATE" DATE, 
	"SCHD_PYMT_AMOUNT" NUMBER(13,2), 
	"ACTL_PYMT_DATE" DATE, 
	"ACTL_PAID_AMOUNT" NUMBER(13,2), 
	"NOTES" VARCHAR2(4000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CME_PYMT"."CME_PYMT_ID" IS 'Parent: Compliance Monitoring and Enforcement Payment Data (_PK)';
   COMMENT ON COLUMN "RCRA_CME_PYMT"."CME_PNLTY_ID" IS 'Parent: Compliance Monitoring and Enforcement Payment Data (_FK)';
   COMMENT ON COLUMN "RCRA_CME_PYMT"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CME_PYMT"."PYMT_SEQ_NUM" IS 'Parent: Compliance Monitoring and Enforcement Payment Data (PaymentSequenceNumber)';
   COMMENT ON COLUMN "RCRA_CME_PYMT"."PYMT_DFLT_DATE" IS 'Parent: Compliance Monitoring and Enforcement Payment Data (PaymentDefaultedDate)';
   COMMENT ON COLUMN "RCRA_CME_PYMT"."SCHD_PYMT_DATE" IS 'Parent: Compliance Monitoring and Enforcement Payment Data (ScheduledPaymentDate)';
   COMMENT ON COLUMN "RCRA_CME_PYMT"."SCHD_PYMT_AMOUNT" IS 'Parent: Compliance Monitoring and Enforcement Payment Data (ScheduledPaymentAmount)';
   COMMENT ON COLUMN "RCRA_CME_PYMT"."ACTL_PYMT_DATE" IS 'Parent: Compliance Monitoring and Enforcement Payment Data (ActualPaymentDate)';
   COMMENT ON COLUMN "RCRA_CME_PYMT"."ACTL_PAID_AMOUNT" IS 'The dollar amount of any cost recovery required to be paid pursuant to a Final Order. (ActualPaidAmount)';
   COMMENT ON COLUMN "RCRA_CME_PYMT"."NOTES" IS 'Parent: Compliance Monitoring and Enforcement Payment Data (Notes)';
   COMMENT ON TABLE "RCRA_CME_PYMT"  IS 'Schema element: PaymentDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_RQST
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_RQST" 
   (	"CME_RQST_ID" VARCHAR2(40 BYTE), 
	"CME_EVAL_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"RQST_SEQ_NUM" NUMBER(10,0), 
	"DATE_OF_RQST" DATE, 
	"DATE_RESP_RCVD" DATE, 
	"RQST_AGN" CHAR(1 BYTE), 
	"NOTES" VARCHAR2(4000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CME_RQST"."CME_RQST_ID" IS 'Parent: Compliance Monitoring and Enforcement Request Data (_PK)';
   COMMENT ON COLUMN "RCRA_CME_RQST"."CME_EVAL_ID" IS 'Parent: Compliance Monitoring and Enforcement Request Data (_FK)';
   COMMENT ON COLUMN "RCRA_CME_RQST"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CME_RQST"."RQST_SEQ_NUM" IS 'Parent: Compliance Monitoring and Enforcement Request Data (RequestSequenceNumber)';
   COMMENT ON COLUMN "RCRA_CME_RQST"."DATE_OF_RQST" IS 'Parent: Compliance Monitoring and Enforcement Request Data (DateOfRequest)';
   COMMENT ON COLUMN "RCRA_CME_RQST"."DATE_RESP_RCVD" IS 'Parent: Compliance Monitoring and Enforcement Request Data (DateResponseReceived)';
   COMMENT ON COLUMN "RCRA_CME_RQST"."RQST_AGN" IS 'Parent: Compliance Monitoring and Enforcement Request Data (RequestAgency)';
   COMMENT ON COLUMN "RCRA_CME_RQST"."NOTES" IS 'Parent: Compliance Monitoring and Enforcement Request Data (Notes)';
   COMMENT ON TABLE "RCRA_CME_RQST"  IS 'Schema element: RequestDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_SUBM
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_SUBM" 
   (	"CME_SUBM_ID" VARCHAR2(40 BYTE)
   ) ;

   COMMENT ON TABLE "RCRA_CME_SUBM"  IS 'Schema element: HazardousWasteCMESubmissionDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_SUPP_ENVR_PRJT
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_SUPP_ENVR_PRJT" 
   (	"CME_SUPP_ENVR_PRJT_ID" VARCHAR2(40 BYTE), 
	"CME_ENFRC_ACT_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"SEP_SEQ_NUM" NUMBER(10,0), 
	"SEP_EXPND_AMOUNT" NUMBER(13,2), 
	"SEP_SCHD_COMP_DATE" DATE, 
	"SEP_ACTL_DATE" DATE, 
	"SEP_DFLT_DATE" DATE, 
	"SEP_CODE_OWNER" CHAR(2 BYTE), 
	"SEP_DESC_TXT" VARCHAR2(3 BYTE), 
	"NOTES" VARCHAR2(4000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CME_SUPP_ENVR_PRJT"."CME_SUPP_ENVR_PRJT_ID" IS 'Parent: Compliance Monitoring and Enforcement Supplemental Environmental Project Data (_PK)';
   COMMENT ON COLUMN "RCRA_CME_SUPP_ENVR_PRJT"."CME_ENFRC_ACT_ID" IS 'Parent: Compliance Monitoring and Enforcement Supplemental Environmental Project Data (_FK)';
   COMMENT ON COLUMN "RCRA_CME_SUPP_ENVR_PRJT"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CME_SUPP_ENVR_PRJT"."SEP_SEQ_NUM" IS 'SEP Sequence Number allowed value 01-99 (SEPSequenceNumber)';
   COMMENT ON COLUMN "RCRA_CME_SUPP_ENVR_PRJT"."SEP_EXPND_AMOUNT" IS 'Expenditure Amount (SEPExpenditureAmount)';
   COMMENT ON COLUMN "RCRA_CME_SUPP_ENVR_PRJT"."SEP_SCHD_COMP_DATE" IS 'Valid date greater than or equal to the Date of Enforcement Action. (SEPScheduledCompletionDate)';
   COMMENT ON COLUMN "RCRA_CME_SUPP_ENVR_PRJT"."SEP_ACTL_DATE" IS 'SEP actual completion date (SEPActualDate)';
   COMMENT ON COLUMN "RCRA_CME_SUPP_ENVR_PRJT"."SEP_DFLT_DATE" IS 'Date the SEP defaulted (SEPDefaultedDate)';
   COMMENT ON COLUMN "RCRA_CME_SUPP_ENVR_PRJT"."SEP_CODE_OWNER" IS 'State postal code (SEPCodeOwner)';
   COMMENT ON COLUMN "RCRA_CME_SUPP_ENVR_PRJT"."SEP_DESC_TXT" IS 'The narrative text describing any Supplemental Environmental Projects required to be performed pursuant to a Final Order. (SEPDescriptionText)';
   COMMENT ON COLUMN "RCRA_CME_SUPP_ENVR_PRJT"."NOTES" IS 'Parent: Compliance Monitoring and Enforcement Supplemental Environmental Project Data (Notes)';
   COMMENT ON TABLE "RCRA_CME_SUPP_ENVR_PRJT"  IS 'Schema element: SupplementalEnvironmentalProjectDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_VIOL
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_VIOL" 
   (	"CME_VIOL_ID" VARCHAR2(40 BYTE), 
	"CME_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"VIOL_ACT_LOC" CHAR(2 BYTE), 
	"VIOL_SEQ_NUM" NUMBER(10,0), 
	"AGN_WHICH_DTRM_VIOL" CHAR(1 BYTE), 
	"VIOL_TYPE_OWNER" CHAR(2 BYTE), 
	"VIOL_TYPE" VARCHAR2(10 BYTE), 
	"FORMER_CITATION_NAME" VARCHAR2(35 BYTE), 
	"VIOL_DTRM_DATE" DATE, 
	"RTN_COMPL_ACTL_DATE" DATE, 
	"RTN_TO_COMPL_QUAL" CHAR(1 BYTE), 
	"VIOL_RESP_AGN" CHAR(1 BYTE), 
	"NOTES" VARCHAR2(4000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_CME_VIOL"."CME_VIOL_ID" IS 'Parent: Compliance Monitoring and Enforcement Violation Data (_PK)';
   COMMENT ON COLUMN "RCRA_CME_VIOL"."CME_FAC_SUBM_ID" IS 'Parent: Compliance Monitoring and Enforcement Violation Data (_FK)';
   COMMENT ON COLUMN "RCRA_CME_VIOL"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CME_VIOL"."VIOL_ACT_LOC" IS 'Parent: Compliance Monitoring and Enforcement Violation Data (ViolationActivityLocation)';
   COMMENT ON COLUMN "RCRA_CME_VIOL"."VIOL_SEQ_NUM" IS 'Parent: Compliance Monitoring and Enforcement Violation Data (ViolationSequenceNumber)';
   COMMENT ON COLUMN "RCRA_CME_VIOL"."AGN_WHICH_DTRM_VIOL" IS 'Parent: Compliance Monitoring and Enforcement Violation Data (AgencyWhichDeterminedViolation)';
   COMMENT ON COLUMN "RCRA_CME_VIOL"."VIOL_TYPE_OWNER" IS 'Allowed value HQ (ViolationTypeOwner)';
   COMMENT ON COLUMN "RCRA_CME_VIOL"."VIOL_TYPE" IS 'Violation Type (ViolationType)';
   COMMENT ON COLUMN "RCRA_CME_VIOL"."FORMER_CITATION_NAME" IS 'Parent: Compliance Monitoring and Enforcement Violation Data (FormerCitationName)';
   COMMENT ON COLUMN "RCRA_CME_VIOL"."VIOL_DTRM_DATE" IS 'The calendar date the Responsible Authority determines that a regulated entity is in violation of a legally enforceable obligation. (ViolationDeterminedDate)';
   COMMENT ON COLUMN "RCRA_CME_VIOL"."RTN_COMPL_ACTL_DATE" IS 'The calendar date, determined by the Responsible Authority, on which the regulated entity actually returned to compliance with respect to the legal obligation that is the subject of the Violation Determined Date. (ReturnComplianceActualDate)';
   COMMENT ON COLUMN "RCRA_CME_VIOL"."RTN_TO_COMPL_QUAL" IS 'Parent: Compliance Monitoring and Enforcement Violation Data (ReturnToComplianceQualifier)';
   COMMENT ON COLUMN "RCRA_CME_VIOL"."VIOL_RESP_AGN" IS 'Parent: Compliance Monitoring and Enforcement Violation Data (ViolationResponsibleAgency)';
   COMMENT ON COLUMN "RCRA_CME_VIOL"."NOTES" IS 'Parent: Compliance Monitoring and Enforcement Violation Data (Notes)';
   COMMENT ON TABLE "RCRA_CME_VIOL"  IS 'Schema element: ViolationDataType';
--------------------------------------------------------
--  DDL for Table RCRA_CME_VIOL_ENFRC
--------------------------------------------------------

  CREATE TABLE "RCRA_CME_VIOL_ENFRC" 
   (	"CME_VIOL_ENFRC_ID" VARCHAR2(40 BYTE), 
	"CME_ENFRC_ACT_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"VIOL_SEQ_NUM" NUMBER(10,0), 
	"AGN_WHICH_DTRM_VIOL" CHAR(1 BYTE), 
	"RTN_COMPL_SCHD_DATE" DATE
   ) ;

   COMMENT ON COLUMN "RCRA_CME_VIOL_ENFRC"."CME_VIOL_ENFRC_ID" IS 'Parent: Linking Data for Violation and Enforcement (_PK)';
   COMMENT ON COLUMN "RCRA_CME_VIOL_ENFRC"."CME_ENFRC_ACT_ID" IS 'Parent: Linking Data for Violation and Enforcement (_FK)';
   COMMENT ON COLUMN "RCRA_CME_VIOL_ENFRC"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_CME_VIOL_ENFRC"."VIOL_SEQ_NUM" IS 'Parent: Linking Data for Violation and Enforcement (ViolationSequenceNumber)';
   COMMENT ON COLUMN "RCRA_CME_VIOL_ENFRC"."AGN_WHICH_DTRM_VIOL" IS 'Parent: Linking Data for Violation and Enforcement (AgencyWhichDeterminedViolation)';
   COMMENT ON COLUMN "RCRA_CME_VIOL_ENFRC"."RTN_COMPL_SCHD_DATE" IS 'The calendar date, specified in the Compliance Schedule (if any), on which the regulated entity is scheduled to return to compliance with respect to the legal obligation that is the subject of the Violation Determined Date. (ReturnComplianceScheduledDate)';
   COMMENT ON TABLE "RCRA_CME_VIOL_ENFRC"  IS 'Schema element: ViolationEnforcementDataType';
--------------------------------------------------------
--  DDL for Table RCRA_EM_EMANIFEST
--------------------------------------------------------

  CREATE TABLE "RCRA_EM_EMANIFEST" 
   (	"EM_EMANIFEST_ID" VARCHAR2(40 BYTE), 
	"EM_SUBM_ID" VARCHAR2(40 BYTE), 
	"CREATED_DATE" TIMESTAMP (6), 
	"UPDATED_DATE" TIMESTAMP (6), 
	"MAN_TRACKING_NUM" VARCHAR2(12 BYTE), 
	"STATUS" VARCHAR2(17 BYTE), 
	"PUBLIC_IND" CHAR(1 BYTE), 
	"SUBM_TYPE" VARCHAR2(14 BYTE), 
	"SIGN_STATUS_IND" CHAR(1 BYTE), 
	"ORIGIN_TYPE" VARCHAR2(7 BYTE), 
	"SHIPPED_DATE" TIMESTAMP (6), 
	"RECEIVED_DATE" TIMESTAMP (6), 
	"CERT_DATE" TIMESTAMP (6), 
	"REJ_IND" CHAR(1 BYTE), 
	"DISCREPANCY_IND" CHAR(1 BYTE), 
	"RESIDUE_IND" CHAR(1 BYTE), 
	"IMP_IND" CHAR(1 BYTE), 
	"CONT_PREV_REJ_RES_IND" CHAR(1 BYTE), 
	"CERT_BY_FIRST_NAME" VARCHAR2(38 BYTE), 
	"CERT_BY_LAST_NAME" VARCHAR2(38 BYTE), 
	"CERT_BY_USER_ID" VARCHAR2(255 BYTE), 
	"REJ_TRANS_ON_SITE_IND" CHAR(1 BYTE), 
	"REJ_TYPE" VARCHAR2(13 BYTE), 
	"REJ_ALT_DES_FAC_TYPE" VARCHAR2(9 BYTE), 
	"REJ_COMMENTS" VARCHAR2(255 BYTE), 
	"REJ_GEN_PS_NAME" VARCHAR2(80 BYTE), 
	"REJ_GEN_PS_DATE" TIMESTAMP (6), 
	"REJ_GEN_ES_SIGN_DATE" TIMESTAMP (6), 
	"REJ_GEN_ES_CROMERR_ACT_ID" VARCHAR2(50 BYTE), 
	"REJ_GEN_ES_CROMERR_DOC_ID" VARCHAR2(50 BYTE), 
	"REJ_GEN_ES_SIGNER_FIRST_NAME" VARCHAR2(38 BYTE), 
	"REJ_GEN_ES_SIGNER_LAST_NAME" VARCHAR2(38 BYTE), 
	"REJ_GEN_ES_SIGNER_USER_ID" VARCHAR2(255 BYTE), 
	"REJ_GEN_ES_DOC_NAME" VARCHAR2(255 BYTE), 
	"REJ_GEN_ES_DOC_SIZE" NUMBER(10,0), 
	"REJ_GEN_ES_DOC_MIME_TYPE" VARCHAR2(50 BYTE), 
	"IMP_GEN_NAME" VARCHAR2(80 BYTE), 
	"IMP_GEN_ADDRESS" VARCHAR2(50 BYTE), 
	"IMP_GEN_CITY" VARCHAR2(25 BYTE), 
	"IMP_GEN_POSTAL_CODE" VARCHAR2(25 BYTE), 
	"IMP_GEN_PROVINCE" VARCHAR2(50 BYTE), 
	"IMP_GEN_CNTRY_CODE" CHAR(2 BYTE), 
	"IMP_GEN_CNTRY_NAME" VARCHAR2(100 BYTE), 
	"IMP_PORT_CITY" VARCHAR2(25 BYTE), 
	"IMP_PORT_STATE_CODE" CHAR(2 BYTE), 
	"IMP_PORT_STATE_NAME" VARCHAR2(100 BYTE), 
	"PRINTED_DOC_NAME" VARCHAR2(255 BYTE), 
	"PRINTED_DOC_SIZE" NUMBER(10,0), 
	"PRINTED_DOC_MIME_TYPE" VARCHAR2(50 BYTE), 
	"FORM_DOC_NAME" VARCHAR2(255 BYTE), 
	"FORM_DOC_SIZE" NUMBER(10,0), 
	"FORM_DOC_MIME_TYPE" VARCHAR2(50 BYTE), 
	"ADD_INFO_NEW_MAN_DEST" VARCHAR2(255 BYTE), 
	"ADD_INFO_CONSENT_NUM" VARCHAR2(255 BYTE), 
	"ADD_INFO_HAND_INSTR" VARCHAR2(4000 BYTE), 
	"CORR_VERSION_NUM" NUMBER(10,0), 
	"CORR_ACTIVE_IND" CHAR(1 BYTE), 
	"CORR_EPA_SITE_ID" VARCHAR2(15 BYTE), 
	"CORR_ES_SIGN_DATE" TIMESTAMP (6), 
	"CORR_ES_CROMERR_ACT_ID" VARCHAR2(50 BYTE), 
	"CORR_ES_CROMERR_DOC_ID" VARCHAR2(50 BYTE), 
	"CORR_ES_SIGNER_FIRST_NAME" VARCHAR2(38 BYTE), 
	"CORR_ES_SIGNER_LAST_NAME" VARCHAR2(38 BYTE), 
	"CORR_ES_SIGNER_USER_ID" VARCHAR2(255 BYTE), 
	"CORR_ES_DOC_NAME" VARCHAR2(255 BYTE), 
	"CORR_ES_DOC_SIZE" NUMBER(10,0), 
	"CORR_ES_DOC_MIME_TYPE" VARCHAR2(50 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CREATED_DATE" IS 'Created date (CreatedDate)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."UPDATED_DATE" IS 'Updated date (UpdatedDate)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."MAN_TRACKING_NUM" IS 'Manifest tracking number (ManifestTrackingNumber)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."STATUS" IS 'Manifest status (Status)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."PUBLIC_IND" IS 'Is public indicator (IsPublic)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."SUBM_TYPE" IS 'Submission type (SubmissionType)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."SIGN_STATUS_IND" IS 'Signature status (SignatureStatus)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."ORIGIN_TYPE" IS 'Original type (OriginType)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."SHIPPED_DATE" IS 'Shipped date (ShippedDate)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."RECEIVED_DATE" IS 'Received date (ReceivedDate)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CERT_DATE" IS 'Certified date (CertifiedDate)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_IND" IS 'Rejection indicator (Rejection)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."DISCREPANCY_IND" IS 'Discrepancy indicator (Discrepancy)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."RESIDUE_IND" IS 'Indicate residue information (Residue)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."IMP_IND" IS 'Import indicator (Import)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CONT_PREV_REJ_RES_IND" IS 'Original manifest tracking number (ContainsPreviousRejectOrResidue)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CERT_BY_FIRST_NAME" IS 'Identifies frist name in contact. (ManifestFirstName)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CERT_BY_LAST_NAME" IS 'Identifies last name in contact. (ManifestLastName)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CERT_BY_USER_ID" IS 'Identifies a user id (SignerUserId)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_TRANS_ON_SITE_IND" IS 'Indicates if transporter is on site (TransporterOnSite)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_TYPE" IS 'Rejection type (RejectionType)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_ALT_DES_FAC_TYPE" IS 'Alternate designated facility type (AlternateDesignatedFacilityType)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_COMMENTS" IS 'Rejection comments (RejectionComments)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_GEN_PS_NAME" IS 'Identifies printed name (PrintedName)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_GEN_PS_DATE" IS 'Identifies paper signature date (PaperSignatureDate)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_GEN_ES_SIGN_DATE" IS 'Identifies electronic signature date (ElectronicSignatureDate)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_GEN_ES_CROMERR_ACT_ID" IS 'Cromerr activity Id (CromerrActivityId)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_GEN_ES_CROMERR_DOC_ID" IS 'Cromerr document Id (CromerrDocumentId)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_GEN_ES_SIGNER_FIRST_NAME" IS 'Identifies frist name in contact. (ManifestFirstName)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_GEN_ES_SIGNER_LAST_NAME" IS 'Identifies last name in contact. (ManifestLastName)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_GEN_ES_SIGNER_USER_ID" IS 'Identifies a user id (SignerUserId)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_GEN_ES_DOC_NAME" IS 'Identifies document name (DocumentName)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_GEN_ES_DOC_SIZE" IS 'Identifies a size (Size)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."REJ_GEN_ES_DOC_MIME_TYPE" IS 'Identifies a mime type (MimeType)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."IMP_GEN_NAME" IS 'Import generator name (ImportGeneratorName)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."IMP_GEN_ADDRESS" IS 'Import generator address (ImportGeneratorAddress)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."IMP_GEN_CITY" IS 'Identifies city in address. (ImportCity)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."IMP_GEN_POSTAL_CODE" IS 'Identifies postal code in address. (PostalCode)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."IMP_GEN_PROVINCE" IS 'Import generator province (Province)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."IMP_GEN_CNTRY_CODE" IS 'Locality code (ManifestLocalityCode)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."IMP_GEN_CNTRY_NAME" IS 'Locality name (ManifestLocalityName)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."IMP_PORT_CITY" IS 'Identifies city in address. (ImportCity)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."IMP_PORT_STATE_CODE" IS 'Locality code (ManifestLocalityCode)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."IMP_PORT_STATE_NAME" IS 'Locality name (ManifestLocalityName)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."PRINTED_DOC_NAME" IS 'Identifies document name (DocumentName)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."PRINTED_DOC_SIZE" IS 'Identifies a size (Size)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."PRINTED_DOC_MIME_TYPE" IS 'Identifies a mime type (MimeType)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."FORM_DOC_NAME" IS 'Identifies document name (DocumentName)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."FORM_DOC_SIZE" IS 'Identifies a size (Size)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."FORM_DOC_MIME_TYPE" IS 'Identifies a mime type (MimeType)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."ADD_INFO_NEW_MAN_DEST" IS 'New Mmnifest destination (NewManifestDestination)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."ADD_INFO_CONSENT_NUM" IS 'Identifies a consent number (ConsentNumber)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."ADD_INFO_HAND_INSTR" IS 'Identifies a handling instructions (HandlingInstructions)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CORR_VERSION_NUM" IS 'Correction version number (VersionNumber)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CORR_ACTIVE_IND" IS 'Correction active flag (Active)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CORR_EPA_SITE_ID" IS 'EPA site id. (EpaSiteId)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CORR_ES_SIGN_DATE" IS 'Identifies electronic signature date (ElectronicSignatureDate)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CORR_ES_CROMERR_ACT_ID" IS 'Cromerr activity Id (CromerrActivityId)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CORR_ES_CROMERR_DOC_ID" IS 'Cromerr document Id (CromerrDocumentId)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CORR_ES_SIGNER_FIRST_NAME" IS 'Identifies frist name in contact. (ManifestFirstName)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CORR_ES_SIGNER_LAST_NAME" IS 'Identifies last name in contact. (ManifestLastName)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CORR_ES_SIGNER_USER_ID" IS 'Identifies a user id (SignerUserId)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CORR_ES_DOC_NAME" IS 'Identifies document name (DocumentName)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CORR_ES_DOC_SIZE" IS 'Identifies a size (Size)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST"."CORR_ES_DOC_MIME_TYPE" IS 'Identifies a mime type (MimeType)';
   COMMENT ON TABLE "RCRA_EM_EMANIFEST"  IS 'Schema element: Emanifests';
--------------------------------------------------------
--  DDL for Table RCRA_EM_EMANIFEST_COMMENT
--------------------------------------------------------

  CREATE TABLE "RCRA_EM_EMANIFEST_COMMENT" 
   (	"EM_EMANIFEST_COMMENT_ID" VARCHAR2(40 BYTE), 
	"EM_EMANIFEST_ID" VARCHAR2(40 BYTE), 
	"COMMENT_DESC" VARCHAR2(4000 BYTE), 
	"HANDLER_ID" VARCHAR2(15 BYTE), 
	"COMMENT_LABEL" VARCHAR2(255 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_EM_EMANIFEST_COMMENT"."COMMENT_DESC" IS 'Comment description (CommentDescription)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST_COMMENT"."HANDLER_ID" IS 'Comment handler Id (HandlerId)';
   COMMENT ON COLUMN "RCRA_EM_EMANIFEST_COMMENT"."COMMENT_LABEL" IS 'Comment label (CommentLabel)';
   COMMENT ON TABLE "RCRA_EM_EMANIFEST_COMMENT"  IS 'Schema element: EmanifestsAdditionalComment';
--------------------------------------------------------
--  DDL for Table RCRA_EM_HANDLER
--------------------------------------------------------

  CREATE TABLE "RCRA_EM_HANDLER" 
   (	"EM_HANDLER_ID" VARCHAR2(40 BYTE), 
	"EM_EMANIFEST_ID" VARCHAR2(40 BYTE), 
	"SITE_TYPE" VARCHAR2(11 BYTE), 
	"EPA_SITE_ID" VARCHAR2(15 BYTE), 
	"MANIFEST_NAME" VARCHAR2(80 BYTE), 
	"ORDER_NUM" NUMBER(10,0), 
	"REG_IND" CHAR(1 BYTE), 
	"MOD_IND" CHAR(1 BYTE), 
	"MANIFEST_HANDLER_TYPE" VARCHAR2(40 BYTE), 
	"MAIL_STREET_NUM" VARCHAR2(12 BYTE), 
	"MAIL_STREET1" VARCHAR2(50 BYTE), 
	"MAIL_STREET2" VARCHAR2(50 BYTE), 
	"MAIL_CITY" VARCHAR2(25 BYTE), 
	"MAIL_ZIP" VARCHAR2(14 BYTE), 
	"MAIL_CNTRY_CODE" CHAR(2 BYTE), 
	"MAIL_CNTRY_NAME" VARCHAR2(100 BYTE), 
	"MAIL_STATE_CODE" CHAR(2 BYTE), 
	"MAIL_STATE_NAME" VARCHAR2(100 BYTE), 
	"SITE_STREET_NUM" VARCHAR2(12 BYTE), 
	"SITE_STREET1" VARCHAR2(50 BYTE), 
	"SITE_STREET2" VARCHAR2(50 BYTE), 
	"SITE_CITY" VARCHAR2(25 BYTE), 
	"SITE_ZIP" VARCHAR2(14 BYTE), 
	"SITE_CNTRY_CODE" CHAR(2 BYTE), 
	"SITE_CNTRY_NAME" VARCHAR2(100 BYTE), 
	"SITE_STATE_CODE" CHAR(2 BYTE), 
	"SITE_STATE_NAME" VARCHAR2(100 BYTE), 
	"CONTACT_FIRST_NAME" VARCHAR2(38 BYTE), 
	"CONTACT_MIDDLE_INITIAL" CHAR(1 BYTE), 
	"CONTACT_LAST_NAME" VARCHAR2(38 BYTE), 
	"CONTACT_EMAIL" VARCHAR2(80 BYTE), 
	"CONTACT_COMPANY_NAME" VARCHAR2(80 BYTE), 
	"CONTACT_PHONE_NUM" VARCHAR2(15 BYTE), 
	"CONTACT_PHONE_EXT" VARCHAR2(6 BYTE), 
	"EMERG_PHONE_NUM" VARCHAR2(15 BYTE), 
	"EMERG_PHONE_EXT" VARCHAR2(6 BYTE), 
	"PS_NAME" VARCHAR2(80 BYTE), 
	"PS_DATE" TIMESTAMP (6), 
	"ES_SIGN_DATE" TIMESTAMP (6), 
	"ES_CROMERR_ACT_ID" VARCHAR2(50 BYTE), 
	"ES_CROMERR_DOC_ID" VARCHAR2(50 BYTE), 
	"ES_SIGNER_FIRST_NAME" VARCHAR2(38 BYTE), 
	"ES_SIGNER_LAST_NAME" VARCHAR2(38 BYTE), 
	"ES_SIGNER_USER_ID" VARCHAR2(255 BYTE), 
	"ES_DOC_NAME" VARCHAR2(255 BYTE), 
	"ES_DOC_SIZE" NUMBER(10,0), 
	"ES_DOC_MIME_TYPE" VARCHAR2(50 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_EM_HANDLER"."SITE_TYPE" IS 'Emanifest site type. (SiteType)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."EPA_SITE_ID" IS 'EPA site id. (EpaSiteId)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."MANIFEST_NAME" IS 'Name description. (EmanifestName)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."ORDER_NUM" IS 'Order type. (Order)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."REG_IND" IS 'Registered indicator. (Registered)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."MOD_IND" IS 'Modified indicator. (Modified)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."MAIL_STREET_NUM" IS 'Identifies street number in address. (StreetNumber)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."MAIL_STREET1" IS 'Identifies address1. (Address1)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."MAIL_STREET2" IS 'Identifies address2. (Address2)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."MAIL_CITY" IS 'Identifies city in address. (City)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."MAIL_ZIP" IS 'Identifies zip in address. (Zip)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."MAIL_CNTRY_CODE" IS 'Locality code (ManifestLocalityCode)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."MAIL_CNTRY_NAME" IS 'Locality name (ManifestLocalityName)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."MAIL_STATE_CODE" IS 'Locality code (ManifestLocalityCode)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."MAIL_STATE_NAME" IS 'Locality name (ManifestLocalityName)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."SITE_STREET_NUM" IS 'Identifies street number in address. (StreetNumber)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."SITE_STREET1" IS 'Identifies address1. (Address1)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."SITE_STREET2" IS 'Identifies address2. (Address2)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."SITE_CITY" IS 'Identifies city in address. (City)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."SITE_ZIP" IS 'Identifies zip in address. (Zip)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."SITE_CNTRY_CODE" IS 'Locality code (ManifestLocalityCode)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."SITE_CNTRY_NAME" IS 'Locality name (ManifestLocalityName)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."SITE_STATE_CODE" IS 'Locality code (ManifestLocalityCode)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."SITE_STATE_NAME" IS 'Locality name (ManifestLocalityName)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."CONTACT_FIRST_NAME" IS 'Identifies frist name in contact. (ManifestFirstName)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."CONTACT_MIDDLE_INITIAL" IS 'Identifies middle initial in contact. (ManifestMiddleInitial)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."CONTACT_LAST_NAME" IS 'Identifies last name in contact. (ManifestLastName)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."CONTACT_EMAIL" IS 'Identifies email in contact. (Email)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."CONTACT_COMPANY_NAME" IS 'Identifies company name in contact. (CompanyName)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."CONTACT_PHONE_NUM" IS 'Identifies phone number (PhoneNumber)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."CONTACT_PHONE_EXT" IS 'Identifies phone extension. (PhoneExtension)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."EMERG_PHONE_NUM" IS 'Identifies phone number (PhoneNumber)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."EMERG_PHONE_EXT" IS 'Identifies phone extension. (PhoneExtension)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."PS_NAME" IS 'Identifies printed name (PrintedName)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."PS_DATE" IS 'Identifies paper signature date (PaperSignatureDate)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."ES_SIGN_DATE" IS 'Identifies electronic signature date (ElectronicSignatureDate)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."ES_CROMERR_ACT_ID" IS 'Cromerr activity Id (CromerrActivityId)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."ES_CROMERR_DOC_ID" IS 'Cromerr document Id (CromerrDocumentId)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."ES_SIGNER_FIRST_NAME" IS 'Identifies frist name in contact. (ManifestFirstName)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."ES_SIGNER_LAST_NAME" IS 'Identifies last name in contact. (ManifestLastName)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."ES_SIGNER_USER_ID" IS 'Identifies a user id (SignerUserId)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."ES_DOC_NAME" IS 'Identifies document name (DocumentName)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."ES_DOC_SIZE" IS 'Identifies a size (Size)';
   COMMENT ON COLUMN "RCRA_EM_HANDLER"."ES_DOC_MIME_TYPE" IS 'Identifies a mime type (MimeType)';
   COMMENT ON TABLE "RCRA_EM_HANDLER"  IS 'Schema element: ManifestHandler';
--------------------------------------------------------
--  DDL for Table RCRA_EM_SUBM
--------------------------------------------------------

  CREATE TABLE "RCRA_EM_SUBM" 
   (	"EM_SUBM_ID" VARCHAR2(40 BYTE)
   ) ;

   COMMENT ON TABLE "RCRA_EM_SUBM"  IS 'Schema element: HazardousWasteEmanifestsDataType';
--------------------------------------------------------
--  DDL for Table RCRA_EM_TR_NUM_ORIG
--------------------------------------------------------

  CREATE TABLE "RCRA_EM_TR_NUM_ORIG" 
   (	"EM_TR_NUM_ORIG_ID" VARCHAR2(40 BYTE), 
	"EM_EMANIFEST_ID" VARCHAR2(40 BYTE), 
	"MANIFEST_TRACKING_NUM" VARCHAR2(12 BYTE)
   ) ;

   COMMENT ON TABLE "RCRA_EM_TR_NUM_ORIG"  IS 'Schema element: EmanifestsManifestTrackingNumber';
--------------------------------------------------------
--  DDL for Table RCRA_EM_TR_NUM_REJ
--------------------------------------------------------

  CREATE TABLE "RCRA_EM_TR_NUM_REJ" 
   (	"EM_TR_NUM_REJ_ID" VARCHAR2(40 BYTE), 
	"EM_EMANIFEST_ID" VARCHAR2(40 BYTE), 
	"MANIFEST_TRACKING_NUM" VARCHAR2(12 BYTE)
   ) ;

   COMMENT ON TABLE "RCRA_EM_TR_NUM_REJ"  IS 'Schema element: RejectionManifestTrackingNumber';
--------------------------------------------------------
--  DDL for Table RCRA_EM_TR_NUM_RESIDUE_NEW
--------------------------------------------------------

  CREATE TABLE "RCRA_EM_TR_NUM_RESIDUE_NEW" 
   (	"EM_TR_NUM_RESIDUE_NEW_ID" VARCHAR2(40 BYTE), 
	"EM_EMANIFEST_ID" VARCHAR2(40 BYTE), 
	"MANIFEST_TRACKING_NUM" VARCHAR2(12 BYTE)
   ) ;

   COMMENT ON TABLE "RCRA_EM_TR_NUM_RESIDUE_NEW"  IS 'Schema element: ResidueNewManifestTrackingNumber';
--------------------------------------------------------
--  DDL for Table RCRA_EM_TR_NUM_WASTE
--------------------------------------------------------

  CREATE TABLE "RCRA_EM_TR_NUM_WASTE" 
   (	"EM_TR_NUM_WASTE_ID" VARCHAR2(40 BYTE), 
	"EM_WASTE_ID" VARCHAR2(40 BYTE), 
	"MANIFEST_TRACKING_NUM" VARCHAR2(12 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_EM_TR_NUM_WASTE"."EM_TR_NUM_WASTE_ID" IS 'Parent: Wastes information (_PK)';
   COMMENT ON COLUMN "RCRA_EM_TR_NUM_WASTE"."EM_WASTE_ID" IS 'Parent: Wastes information (_FK)';
   COMMENT ON COLUMN "RCRA_EM_TR_NUM_WASTE"."MANIFEST_TRACKING_NUM" IS 'Parent: Wastes information (TrackingNumber)';
   COMMENT ON TABLE "RCRA_EM_TR_NUM_WASTE"  IS 'Schema element: WasteManifestTrackingNumber';
--------------------------------------------------------
--  DDL for Table RCRA_EM_WASTE
--------------------------------------------------------

  CREATE TABLE "RCRA_EM_WASTE" 
   (	"EM_WASTE_ID" VARCHAR2(40 BYTE), 
	"EM_EMANIFEST_ID" VARCHAR2(40 BYTE), 
	"DOT_HAZ_IND" CHAR(1 BYTE), 
	"WASTES_DESC" VARCHAR2(500 BYTE), 
	"BR_IND" CHAR(1 BYTE), 
	"PCB_IND" CHAR(1 BYTE), 
	"LINE_NUM" NUMBER(10,0), 
	"EPA_WASTE_IND" CHAR(1 BYTE), 
	"DOT_ID_NUM" VARCHAR2(255 BYTE), 
	"DOT_PRINTED_INFO" VARCHAR2(500 BYTE), 
	"QNT_CONT_NUM" NUMBER(10,0), 
	"QNT_VAL" NUMBER(14,6), 
	"QNT_CONT_TYPE_CODE" VARCHAR2(255 BYTE), 
	"QNT_CONT_TYPE_DESC" VARCHAR2(255 BYTE), 
	"QNT_UOM_CODE" CHAR(1 BYTE), 
	"QNT_UOM_DESC" VARCHAR2(28 BYTE), 
	"BR_DENSITY" NUMBER(14,6), 
	"BR_DENSITY_UOM_CODE" CHAR(1 BYTE), 
	"BR_DENSITY_UOM_DESC" VARCHAR2(240 BYTE), 
	"BR_FORM_CODE" VARCHAR2(4 BYTE), 
	"BR_FORM_DESC" VARCHAR2(240 BYTE), 
	"BR_SRC_CODE" VARCHAR2(3 BYTE), 
	"BR_SRC_DESC" VARCHAR2(240 BYTE), 
	"BR_WM_CODE" CHAR(1 BYTE), 
	"BR_WM_DESC" VARCHAR2(240 BYTE), 
	"DISC_WASTE_QTY_IND" CHAR(1 BYTE), 
	"DISC_WASTE_TYPE_IND" CHAR(1 BYTE), 
	"DISC_COMMENTS" VARCHAR2(255 BYTE), 
	"DISC_RESIDUE_IND" CHAR(1 BYTE), 
	"DISC_RESIDUE_COMMENTS" VARCHAR2(255 BYTE), 
	"MGMT_METHOD_CODE" VARCHAR2(4 BYTE), 
	"MGMT_METHOD_DESC" VARCHAR2(240 BYTE), 
	"ADD_INFO_NEW_MAN_DEST" VARCHAR2(255 BYTE), 
	"ADD_INFO_CONSENT_NUM" VARCHAR2(255 BYTE), 
	"ADD_INFO_HAND_INSTR" VARCHAR2(4000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_EM_WASTE"."EM_WASTE_ID" IS 'Parent: Wastes information (_PK)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."EM_EMANIFEST_ID" IS 'Parent: Wastes information (_FK)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."DOT_HAZ_IND" IS 'Hazardous indicator. (DotHazardous)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."WASTES_DESC" IS 'Waste description. (WastesDescription)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."BR_IND" IS 'BR indicator. (Br)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."PCB_IND" IS 'PCB indicator. (Pcb)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."LINE_NUM" IS 'Line number. (LineNumber)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."EPA_WASTE_IND" IS 'Indicate if it''s a waste (EpaWaste)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."DOT_ID_NUM" IS 'Id number information (IdNumber)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."DOT_PRINTED_INFO" IS 'Printed DOT information (PrintedDotInformation)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."QNT_CONT_NUM" IS 'Container number information (ContainerNumber)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."QNT_VAL" IS 'Quantity Valure information (QuantityVal)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."QNT_CONT_TYPE_CODE" IS 'Code information (Code)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."QNT_CONT_TYPE_DESC" IS 'Description information (ManifestDescription)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."QNT_UOM_CODE" IS 'Quantity UOM Code information (QuantityUOMCode)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."QNT_UOM_DESC" IS 'Quantity UOM description information (QuantityUOMDescription)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."BR_DENSITY" IS 'BR density information (Density)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."BR_DENSITY_UOM_CODE" IS 'Quantity UOM Code information (UOMCode)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."BR_DENSITY_UOM_DESC" IS 'Quantity UOM description information (UOMDescription)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."BR_FORM_CODE" IS 'Form code information (FormCode)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."BR_FORM_DESC" IS 'Form description information (FormDescription)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."BR_SRC_CODE" IS 'Source code information (SourceCode)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."BR_SRC_DESC" IS 'Source description information (SourceDescription)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."BR_WM_CODE" IS 'Waste minimization code information (WMCode)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."BR_WM_DESC" IS 'Waste minimization description information (WMDescription)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."DISC_WASTE_QTY_IND" IS 'Indicate waste quantity (WasteQuantity)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."DISC_WASTE_TYPE_IND" IS 'Indicate waste type (HasWasteType)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."DISC_COMMENTS" IS 'Discrepancy comments information (DiscrepancyComments)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."DISC_RESIDUE_IND" IS 'Indicate residue information (Residue)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."DISC_RESIDUE_COMMENTS" IS 'Residue comments information (ResidueComments)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."MGMT_METHOD_CODE" IS 'Management method code information (ManagementMethodCode)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."MGMT_METHOD_DESC" IS 'Management method description information (ManagementMethodDescription)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."ADD_INFO_NEW_MAN_DEST" IS 'New Mmnifest destination (NewManifestDestination)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."ADD_INFO_CONSENT_NUM" IS 'Identifies a consent number (ConsentNumber)';
   COMMENT ON COLUMN "RCRA_EM_WASTE"."ADD_INFO_HAND_INSTR" IS 'Identifies a handling instructions (HandlingInstructions)';
   COMMENT ON TABLE "RCRA_EM_WASTE"  IS 'Schema element: Waste';
--------------------------------------------------------
--  DDL for Table RCRA_EM_WASTE_CD_FED
--------------------------------------------------------

  CREATE TABLE "RCRA_EM_WASTE_CD_FED" 
   (	"EM_WASTE_CD_FED_ID" VARCHAR2(40 BYTE), 
	"EM_WASTE_ID" VARCHAR2(40 BYTE), 
	"WASTE_CODE" VARCHAR2(6 BYTE), 
	"WASTE_DESC" VARCHAR2(2000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_EM_WASTE_CD_FED"."EM_WASTE_CD_FED_ID" IS 'Parent: Wastes information (_PK)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_CD_FED"."EM_WASTE_ID" IS 'Parent: Wastes information (_FK)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_CD_FED"."WASTE_CODE" IS 'Manifest waste code information (ManifestWasteCode)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_CD_FED"."WASTE_DESC" IS 'Manifest waste description information (ManifestWasteDescription)';
   COMMENT ON TABLE "RCRA_EM_WASTE_CD_FED"  IS 'Schema element: FederalWasteCode';
--------------------------------------------------------
--  DDL for Table RCRA_EM_WASTE_CD_GEN
--------------------------------------------------------

  CREATE TABLE "RCRA_EM_WASTE_CD_GEN" 
   (	"EM_WASTE_CD_GEN_ID" VARCHAR2(40 BYTE), 
	"EM_WASTE_ID" VARCHAR2(40 BYTE), 
	"WASTE_CODE" VARCHAR2(6 BYTE), 
	"WASTE_DESC" VARCHAR2(2000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_EM_WASTE_CD_GEN"."EM_WASTE_CD_GEN_ID" IS 'Parent: Wastes information (_PK)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_CD_GEN"."EM_WASTE_ID" IS 'Parent: Wastes information (_FK)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_CD_GEN"."WASTE_CODE" IS 'Manifest waste code information (ManifestWasteCode)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_CD_GEN"."WASTE_DESC" IS 'Manifest waste description information (ManifestWasteDescription)';
   COMMENT ON TABLE "RCRA_EM_WASTE_CD_GEN"  IS 'Schema element: GeneratorStateWasteCode';
--------------------------------------------------------
--  DDL for Table RCRA_EM_WASTE_CD_TRANS
--------------------------------------------------------

  CREATE TABLE "RCRA_EM_WASTE_CD_TRANS" 
   (	"EM_WASTE_CD_TRANS_ID" VARCHAR2(40 BYTE), 
	"EM_WASTE_ID" VARCHAR2(40 BYTE), 
	"WASTE_CODE" VARCHAR2(12 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_EM_WASTE_CD_TRANS"."EM_WASTE_CD_TRANS_ID" IS 'Parent: Wastes information (_PK)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_CD_TRANS"."EM_WASTE_ID" IS 'Parent: Wastes information (_FK)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_CD_TRANS"."WASTE_CODE" IS 'Parent: Wastes information (WasteCode)';
   COMMENT ON TABLE "RCRA_EM_WASTE_CD_TRANS"  IS 'Schema element: TxWasteCode';
--------------------------------------------------------
--  DDL for Table RCRA_EM_WASTE_CD_TSDF
--------------------------------------------------------

  CREATE TABLE "RCRA_EM_WASTE_CD_TSDF" 
   (	"EM_WASTE_CD_TSDF_ID" VARCHAR2(40 BYTE), 
	"EM_WASTE_ID" VARCHAR2(40 BYTE), 
	"WASTE_CODE" VARCHAR2(6 BYTE), 
	"WASTE_DESC" VARCHAR2(2000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_EM_WASTE_CD_TSDF"."EM_WASTE_CD_TSDF_ID" IS 'Parent: Wastes information (_PK)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_CD_TSDF"."EM_WASTE_ID" IS 'Parent: Wastes information (_FK)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_CD_TSDF"."WASTE_CODE" IS 'Manifest waste code information (ManifestWasteCode)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_CD_TSDF"."WASTE_DESC" IS 'Manifest waste description information (ManifestWasteDescription)';
   COMMENT ON TABLE "RCRA_EM_WASTE_CD_TSDF"  IS 'Schema element: TsdfStateWasteCode';
--------------------------------------------------------
--  DDL for Table RCRA_EM_WASTE_COMMENT
--------------------------------------------------------

  CREATE TABLE "RCRA_EM_WASTE_COMMENT" 
   (	"EM_WASTE_COMMENT_ID" VARCHAR2(40 BYTE), 
	"EM_WASTE_ID" VARCHAR2(40 BYTE), 
	"COMMENT_DESC" VARCHAR2(4000 BYTE), 
	"HANDLER_ID" VARCHAR2(15 BYTE), 
	"COMMENT_LABEL" VARCHAR2(255 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_EM_WASTE_COMMENT"."EM_WASTE_COMMENT_ID" IS 'Parent: Wastes information (_PK)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_COMMENT"."EM_WASTE_ID" IS 'Parent: Wastes information (_FK)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_COMMENT"."COMMENT_DESC" IS 'Comment description (CommentDescription)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_COMMENT"."HANDLER_ID" IS 'Comment handler Id (HandlerId)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_COMMENT"."COMMENT_LABEL" IS 'Comment label (CommentLabel)';
   COMMENT ON TABLE "RCRA_EM_WASTE_COMMENT"  IS 'Schema element: WasteAdditionalComment';
--------------------------------------------------------
--  DDL for Table RCRA_EM_WASTE_PCB
--------------------------------------------------------

  CREATE TABLE "RCRA_EM_WASTE_PCB" 
   (	"EM_WASTE_PCB_ID" VARCHAR2(40 BYTE), 
	"EM_WASTE_ID" VARCHAR2(40 BYTE), 
	"PCB_LOAD_TYPE_CODE" VARCHAR2(255 BYTE), 
	"PCB_ARTICLE_CONT_ID" VARCHAR2(255 BYTE), 
	"PCB_REMOVAL_DATE" TIMESTAMP (6), 
	"PCB_WEIGHT" NUMBER(14,6), 
	"PCB_WASTE_TYPE" VARCHAR2(255 BYTE), 
	"PCB_BULK_IDENTITY" VARCHAR2(255 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_EM_WASTE_PCB"."EM_WASTE_PCB_ID" IS 'Parent: PCB information. (_PK)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_PCB"."EM_WASTE_ID" IS 'Parent: PCB information. (_FK)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_PCB"."PCB_LOAD_TYPE_CODE" IS 'Load type information (LoadType)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_PCB"."PCB_ARTICLE_CONT_ID" IS 'Article container Id (ArticleContainerId)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_PCB"."PCB_REMOVAL_DATE" IS 'Date of removal (DateOfRemoval)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_PCB"."PCB_WEIGHT" IS 'Weight information (Weight)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_PCB"."PCB_WASTE_TYPE" IS 'Waste type information (WasteType)';
   COMMENT ON COLUMN "RCRA_EM_WASTE_PCB"."PCB_BULK_IDENTITY" IS 'Bulk identity information (BulkIdentity)';
   COMMENT ON TABLE "RCRA_EM_WASTE_PCB"  IS 'Schema element: PcbInfo';
--------------------------------------------------------
--  DDL for Table RCRA_FA_COST_EST
--------------------------------------------------------

  CREATE TABLE "RCRA_FA_COST_EST" 
   (	"FA_COST_EST_ID" VARCHAR2(40 BYTE), 
	"FA_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"ACT_LOC_CODE" CHAR(2 BYTE), 
	"COST_ESTIMATE_TYPE_CODE" CHAR(1 BYTE), 
	"COST_ESTIMATE_AGN_CODE" CHAR(1 BYTE), 
	"COST_ESTIMATE_SEQ_NUM" NUMBER(10,0), 
	"RESP_PERSON_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"RESP_PERSON_ID" VARCHAR2(5 BYTE), 
	"COST_ESTIMATE_AMOUNT" NUMBER(13,2), 
	"COST_ESTIMATE_DATE" DATE, 
	"COST_ESTIMATE_RSN_CODE" CHAR(1 BYTE), 
	"AREA_UNIT_NOTES_TXT" VARCHAR2(240 BYTE), 
	"SUPP_INFO_TXT" VARCHAR2(2000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_FA_COST_EST"."FA_COST_EST_ID" IS 'Parent: Estimates of the Financial liability costs associated with a given Handler. (_PK)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST"."FA_FAC_SUBM_ID" IS 'Parent: Estimates of the Financial liability costs associated with a given Handler. (_FK)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST"."ACT_LOC_CODE" IS 'Indicates the location of the agency regulating the handler. (ActivityLocationCode)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST"."COST_ESTIMATE_TYPE_CODE" IS 'Indicates what type of Financial Assurance is Required. (CostEstimateTypeCode)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST"."COST_ESTIMATE_AGN_CODE" IS 'Code indicating the agency responsible for overseeing the review of the cost estimate. (CostEstimateAgencyCode)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST"."COST_ESTIMATE_SEQ_NUM" IS 'Unique number that identifies the cost estimate. (CostEstimateSequenceNumber)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST"."RESP_PERSON_DATA_OWNER_CODE" IS 'Indicates the agency that defines the person identifier. (ResponsiblePersonDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST"."RESP_PERSON_ID" IS 'Code indicating the person within the agency responsible for conducting the evaluation or who is the responsible Authority. (ResponsiblePersonID)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST"."COST_ESTIMATE_AMOUNT" IS 'The dollar amount of the cost estimate for a given financial assurance type. (CostEstimateAmount)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST"."COST_ESTIMATE_DATE" IS 'The date when the cost estimate for a given financial assurance type was submitted, adjusted, approved, or required to be in place. (CostEstimateDate)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST"."COST_ESTIMATE_RSN_CODE" IS 'The reason the cost estimate for a financial assurance type is being reported. (CostEstimateReasonCode)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST"."AREA_UNIT_NOTES_TXT" IS 'Notes regarding the corrective action area or permit unit that this cost estimate applies. (AreaUnitNotesText)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST"."SUPP_INFO_TXT" IS 'Notes providing more information. (SupplementalInformationText)';
   COMMENT ON TABLE "RCRA_FA_COST_EST"  IS 'Schema element: CostEstimateDataType';
--------------------------------------------------------
--  DDL for Table RCRA_FA_COST_EST_REL_MECHANISM
--------------------------------------------------------

  CREATE TABLE "RCRA_FA_COST_EST_REL_MECHANISM" 
   (	"FA_COST_EST_REL_MECHANISM_ID" VARCHAR2(40 BYTE), 
	"FA_COST_EST_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"ACT_LOC_CODE" CHAR(2 BYTE), 
	"MECHANISM_AGN_CODE" CHAR(1 BYTE), 
	"MECHANISM_SEQ_NUM" NUMBER(10,0), 
	"MECHANISM_DETAIL_SEQ_NUM" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "RCRA_FA_COST_EST_REL_MECHANISM"."FA_COST_EST_REL_MECHANISM_ID" IS 'Parent: Linking Data for Cost Estimates and Related Mechanisms (_PK)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST_REL_MECHANISM"."FA_COST_EST_ID" IS 'Parent: Linking Data for Cost Estimates and Related Mechanisms (_FK)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST_REL_MECHANISM"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST_REL_MECHANISM"."ACT_LOC_CODE" IS 'Indicates the location of the agency regulating the handler. (ActivityLocationCode)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST_REL_MECHANISM"."MECHANISM_AGN_CODE" IS 'The agency responsible for overseeing the review of the mechanism. (MechanismAgencyCode)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST_REL_MECHANISM"."MECHANISM_SEQ_NUM" IS 'Unique numerical identier for the mechanism. (MechanismSequenceNumber)';
   COMMENT ON COLUMN "RCRA_FA_COST_EST_REL_MECHANISM"."MECHANISM_DETAIL_SEQ_NUM" IS 'Unique numerical code identifying the mechanism detail. (MechanismDetailSequenceNumber)';
   COMMENT ON TABLE "RCRA_FA_COST_EST_REL_MECHANISM"  IS 'Schema element: CostEstimateRelatedMechanismDataType';
--------------------------------------------------------
--  DDL for Table RCRA_FA_FAC_SUBM
--------------------------------------------------------

  CREATE TABLE "RCRA_FA_FAC_SUBM" 
   (	"FA_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"FA_SUBM_ID" VARCHAR2(40 BYTE), 
	"HANDLER_ID" VARCHAR2(12 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_FA_FAC_SUBM"."FA_FAC_SUBM_ID" IS 'Parent: Supplies all of the relevant Financial Assurance Data for a given Handler (_PK)';
   COMMENT ON COLUMN "RCRA_FA_FAC_SUBM"."FA_SUBM_ID" IS 'Parent: Supplies all of the relevant Financial Assurance Data for a given Handler (_FK)';
   COMMENT ON COLUMN "RCRA_FA_FAC_SUBM"."HANDLER_ID" IS 'Code that uniquely identifies the handler. (HandlerID)';
   COMMENT ON TABLE "RCRA_FA_FAC_SUBM"  IS 'Schema element: FinancialAssuranceFacilitySubmissionDataType';
--------------------------------------------------------
--  DDL for Table RCRA_FA_MECHANISM
--------------------------------------------------------

  CREATE TABLE "RCRA_FA_MECHANISM" 
   (	"FA_MECHANISM_ID" VARCHAR2(40 BYTE), 
	"FA_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"ACT_LOC_CODE" CHAR(2 BYTE), 
	"MECHANISM_AGN_CODE" CHAR(1 BYTE), 
	"MECHANISM_SEQ_NUM" NUMBER(10,0), 
	"MECHANISM_TYPE_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"MECHANISM_TYPE_CODE" CHAR(1 BYTE), 
	"PROVIDER_TXT" VARCHAR2(80 BYTE), 
	"PROVIDER_FULL_CONTACT_NAME" VARCHAR2(33 BYTE), 
	"TELE_NUM_TXT" VARCHAR2(15 BYTE), 
	"SUPP_INFO_TXT" VARCHAR2(2000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_FA_MECHANISM"."FA_MECHANISM_ID" IS 'Parent: Mechanisms used to address cost estimates of the Financial liability associated with a given Handler. (_PK)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM"."FA_FAC_SUBM_ID" IS 'Parent: Mechanisms used to address cost estimates of the Financial liability associated with a given Handler. (_FK)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM"."ACT_LOC_CODE" IS 'Indicates the location of the agency regulating the handler. (ActivityLocationCode)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM"."MECHANISM_AGN_CODE" IS 'The agency responsible for overseeing the review of the mechanism. (MechanismAgencyCode)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM"."MECHANISM_SEQ_NUM" IS 'Unique numerical identier for the mechanism. (MechanismSequenceNumber)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM"."MECHANISM_TYPE_DATA_OWNER_CODE" IS 'Indicates the agency that defined the mechanism type. (MechanismTypeDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM"."MECHANISM_TYPE_CODE" IS 'The type of mechanism that addresses the cost estimate. (MechanismTypeCode)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM"."PROVIDER_TXT" IS 'The name of the financial institution with which the financial assurance mechanism is held, such as a bank (letter of credit) or a surety (surety bond); also identifies a facility (financial test), or a guarantor (corporate guarantee). (ProviderText)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM"."PROVIDER_FULL_CONTACT_NAME" IS 'Contact Name of the provider. (ProviderFullContactName)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM"."TELE_NUM_TXT" IS 'Telephone Number data (TelephoneNumberText)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM"."SUPP_INFO_TXT" IS 'Notes providing more information. (SupplementalInformationText)';
   COMMENT ON TABLE "RCRA_FA_MECHANISM"  IS 'Schema element: MechanismDataType';
--------------------------------------------------------
--  DDL for Table RCRA_FA_MECHANISM_DETAIL
--------------------------------------------------------

  CREATE TABLE "RCRA_FA_MECHANISM_DETAIL" 
   (	"FA_MECHANISM_DETAIL_ID" VARCHAR2(40 BYTE), 
	"FA_MECHANISM_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"MECHANISM_DETAIL_SEQ_NUM" NUMBER(10,0), 
	"MECHANISM_IDEN_TXT" VARCHAR2(40 BYTE), 
	"FACE_VAL_AMOUNT" NUMBER(13,2), 
	"EFFC_DATE" DATE, 
	"EXPIRATION_DATE" DATE, 
	"SUPP_INFO_TXT" VARCHAR2(2000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_FA_MECHANISM_DETAIL"."FA_MECHANISM_DETAIL_ID" IS 'Parent: Details of the mechanism used to address cost estimates of the Financial liability associated with a given Handler. (_PK)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM_DETAIL"."FA_MECHANISM_ID" IS 'Parent: Details of the mechanism used to address cost estimates of the Financial liability associated with a given Handler. (_FK)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM_DETAIL"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM_DETAIL"."MECHANISM_DETAIL_SEQ_NUM" IS 'Unique numerical code identifying the mechanism detail. (MechanismDetailSequenceNumber)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM_DETAIL"."MECHANISM_IDEN_TXT" IS 'The number assigned to the mechanism, such as a bond number or insurance policy number. (MechanismIdentificationText)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM_DETAIL"."FACE_VAL_AMOUNT" IS 'The total dollar value of the financial assurance mechanism. (FaceValueAmount)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM_DETAIL"."EFFC_DATE" IS 'The Effective Date of the action: 1. Hazardous Secondary Material notification in Handler, 2. Corrective Action Authority, 3. Financial Assurance Mechanism. (EffectiveDate)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM_DETAIL"."EXPIRATION_DATE" IS 'The date the instrument terminates, such as the end of the term of an insurance policy. (ExpirationDate)';
   COMMENT ON COLUMN "RCRA_FA_MECHANISM_DETAIL"."SUPP_INFO_TXT" IS 'Notes providing more information. (SupplementalInformationText)';
   COMMENT ON TABLE "RCRA_FA_MECHANISM_DETAIL"  IS 'Schema element: MechanismDetailDataType';
--------------------------------------------------------
--  DDL for Table RCRA_FA_SUBM
--------------------------------------------------------

  CREATE TABLE "RCRA_FA_SUBM" 
   (	"FA_SUBM_ID" VARCHAR2(40 BYTE)
   ) ;

   COMMENT ON TABLE "RCRA_FA_SUBM"  IS 'Schema element: FinancialAssuranceSubmissionDataType';
--------------------------------------------------------
--  DDL for Table RCRA_GIS_FAC_SUBM
--------------------------------------------------------

  CREATE TABLE "RCRA_GIS_FAC_SUBM" 
   (	"GIS_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"GIS_SUBM_ID" VARCHAR2(40 BYTE), 
	"HANDLER_ID" VARCHAR2(12 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_GIS_FAC_SUBM"."GIS_FAC_SUBM_ID" IS 'Parent: Supplies all of the relevant GIS Data for a given Handler (_PK)';
   COMMENT ON COLUMN "RCRA_GIS_FAC_SUBM"."GIS_SUBM_ID" IS 'Parent: Supplies all of the relevant GIS Data for a given Handler (_FK)';
   COMMENT ON COLUMN "RCRA_GIS_FAC_SUBM"."HANDLER_ID" IS 'Code that uniquely identifies the handler. (HandlerID)';
   COMMENT ON TABLE "RCRA_GIS_FAC_SUBM"  IS 'Schema element: GISFacilitySubmissionDataType';
--------------------------------------------------------
--  DDL for Table RCRA_GIS_GEO_INFORMATION
--------------------------------------------------------

  CREATE TABLE "RCRA_GIS_GEO_INFORMATION" 
   (	"GIS_GEO_INFORMATION_ID" VARCHAR2(40 BYTE), 
	"GIS_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"GEO_INFO_OWNER" CHAR(2 BYTE), 
	"GEO_INFO_SEQ_NUM" NUMBER(10,0), 
	"PERMIT_UNIT_SEQ_NUM" NUMBER(10,0), 
	"AREA_SEQ_NUM" NUMBER(10,0), 
	"LOC_COMM_TXT" VARCHAR2(2000 BYTE), 
	"AREA_ACREAGE_MEAS" NUMBER(13,2), 
	"AREA_MEAS_SRC_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"AREA_MEAS_SRC_CODE" VARCHAR2(4 BYTE), 
	"AREA_MEAS_DATE" DATE, 
	"DATA_COLL_DATE" DATE, 
	"HORZ_ACC_MEAS" NUMBER(10,0), 
	"SRC_MAP_SCALE_NUM" NUMBER(10,0), 
	"COORD_DATA_SRC_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"COORD_DATA_SRC_CODE" VARCHAR2(3 BYTE), 
	"GEO_REF_PT_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"GEO_REF_PT_CODE" VARCHAR2(3 BYTE), 
	"GEOM_TYPE_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"GEOM_TYPE_CODE" VARCHAR2(3 BYTE), 
	"HORZ_COLL_METH_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"HORZ_COLL_METH_CODE" VARCHAR2(3 BYTE), 
	"HRZ_CRD_RF_SYS_DTM_DTA_OWN_CDE" CHAR(2 BYTE), 
	"HORZ_COORD_REF_SYS_DATUM_CODE" VARCHAR2(3 BYTE), 
	"VERF_METH_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"VERF_METH_CODE" VARCHAR2(3 BYTE), 
	"LATITUDE" NUMBER(19,14), 
	"LONGITUDE" NUMBER(19,14), 
	"ELEVATION" NUMBER(19,14)
   ) ;

   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."GIS_GEO_INFORMATION_ID" IS 'Parent: Used to define the geographic coordinates of the Handler. (_PK)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."GIS_FAC_SUBM_ID" IS 'Parent: Used to define the geographic coordinates of the Handler. (_FK)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."GEO_INFO_OWNER" IS 'Owner of Geographic Information. Should match state code (i.e. KS). (GeographicInformationOwner)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."GEO_INFO_SEQ_NUM" IS 'Unique identifier for the geographic information. (GeographicInformationSequenceNumber)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."PERMIT_UNIT_SEQ_NUM" IS 'System-generated value used to uniquely identify a process unit. (PermitUnitSequenceNumber)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."AREA_SEQ_NUM" IS 'Code used for administrative purposes to uniquely designate a group of units (or a single unit) with a common history and projection of corrective action requirements. (AreaSequenceNumber)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."LOC_COMM_TXT" IS 'The text that provides additional informaiton about the geographic coordinates. (LocationCommentsText)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."AREA_ACREAGE_MEAS" IS 'The number of acres associated with the handler or area. (AreaAcreageMeasure)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."AREA_MEAS_SRC_DATA_OWNER_CODE" IS 'Indicates the agency that defined the AreaMeasureSource. (AreaMeasureSourceDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."AREA_MEAS_SRC_CODE" IS 'The source of information used to determine the number of acres associated with the handler or area. (AreaMeasureSourceCode)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."AREA_MEAS_DATE" IS 'The date acreage information for the handler or area was collected. (AreaMeasureDate)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."DATA_COLL_DATE" IS 'The calender date when data were collected (DataCollectionDate)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."HORZ_ACC_MEAS" IS 'The horizontal measure, in meters, of the relative accuracy of the latitude and longitude coordinates. (HorizontalAccuracyMeasure)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."SRC_MAP_SCALE_NUM" IS 'The number that represents the proportional distance on the ground for one unit of measure on the map or photo. (SourceMapScaleNumeric)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."COORD_DATA_SRC_DATA_OWNER_CODE" IS 'The owner of the code. If provided, it should be HQ. (CoordinateDataSourceDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."COORD_DATA_SRC_CODE" IS 'The code that represents the party responsible for proiding the latitude and longitude coordinates. (CoordinateDataSourceCode)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."GEO_REF_PT_DATA_OWNER_CODE" IS 'The owner of the code. If provided, it should be HQ. (GeographicReferencePointDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."GEO_REF_PT_CODE" IS 'The code that represents the place for which the geographic codes were established (GeographicReferencePointCode)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."GEOM_TYPE_DATA_OWNER_CODE" IS 'The owner of the code. If provided, it should be HQ. (GeometricTypeDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."GEOM_TYPE_CODE" IS 'The code that represents the geometric entity represented by one point or a sequence of points (GeometricTypeCode)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."HORZ_COLL_METH_DATA_OWNER_CODE" IS 'The owner of the code. If provided, it should be HQ. (HorizontalCollectionMethodDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."HORZ_COLL_METH_CODE" IS 'The code that represents the method used to deterimine the latitude and longitude coordinates for a point on the earth. (HorizontalCollectionMethodCode)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."HRZ_CRD_RF_SYS_DTM_DTA_OWN_CDE" IS 'The owner of the code. If provided, it should be HQ. (HorizontalCoordinateReferenceSystemDatumDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."HORZ_COORD_REF_SYS_DATUM_CODE" IS 'The code that represents the datum used in determining latitude and longitude coordinates (HorizontalCoordinateReferenceSystemDatumCode)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."VERF_METH_DATA_OWNER_CODE" IS 'The owner of the code. If provided, it should be HQ. (VerificationMethodDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."VERF_METH_CODE" IS 'The code that represents the process used to verify the latitude and longitude coordinates. (VerificationMethodCode)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."LATITUDE" IS 'Parent: Geometry property element of a GeoRSS GML instance (Latitude)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."LONGITUDE" IS 'Parent: Geometry property element of a GeoRSS GML instance (Longitude)';
   COMMENT ON COLUMN "RCRA_GIS_GEO_INFORMATION"."ELEVATION" IS 'Parent: Geometry property element of a GeoRSS GML instance (Elevation)';
   COMMENT ON TABLE "RCRA_GIS_GEO_INFORMATION"  IS 'Schema element: GeographicInformationDataType';
--------------------------------------------------------
--  DDL for Table RCRA_GIS_SUBM
--------------------------------------------------------

  CREATE TABLE "RCRA_GIS_SUBM" 
   (	"GIS_SUBM_ID" VARCHAR2(40 BYTE)
   ) ;

   COMMENT ON TABLE "RCRA_GIS_SUBM"  IS 'Schema element: GeographicInformationSubmissionDataType';
--------------------------------------------------------
--  DDL for Table RCRA_HD_CERTIFICATION
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_CERTIFICATION" 
   (	"HD_CERTIFICATION_ID" VARCHAR2(40 BYTE), 
	"HD_HANDLER_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"CERT_SEQ" NUMBER(10,0), 
	"CERT_SIGNED_DATE" VARCHAR2(10 BYTE), 
	"CERT_TITLE" VARCHAR2(45 BYTE), 
	"CERT_FIRST_NAME" VARCHAR2(38 BYTE), 
	"CERT_MIDDLE_INITIAL" CHAR(1 BYTE), 
	"CERT_LAST_NAME" VARCHAR2(38 BYTE), 
	"CERT_EMAIL_TEXT" VARCHAR2(80 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_CERTIFICATION"."HD_CERTIFICATION_ID" IS 'Parent: Certification information for the person who certified report to the authorizing agency. (_PK)';
   COMMENT ON COLUMN "RCRA_HD_CERTIFICATION"."HD_HANDLER_ID" IS 'Parent: Certification information for the person who certified report to the authorizing agency. (_FK)';
   COMMENT ON COLUMN "RCRA_HD_CERTIFICATION"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_CERTIFICATION"."CERT_SEQ" IS 'Sequence number for each certification for the handler. (CertificationSequenceNumber)';
   COMMENT ON COLUMN "RCRA_HD_CERTIFICATION"."CERT_SIGNED_DATE" IS 'Date on which the handler information was certified by the reporting site. (SignedDate)';
   COMMENT ON COLUMN "RCRA_HD_CERTIFICATION"."CERT_TITLE" IS 'Title of the contact person or the title of the person who certified the handler information reported to the authorizing agency. (IndividualTitleText)';
   COMMENT ON COLUMN "RCRA_HD_CERTIFICATION"."CERT_FIRST_NAME" IS 'First name of a person. (FirstName)';
   COMMENT ON COLUMN "RCRA_HD_CERTIFICATION"."CERT_MIDDLE_INITIAL" IS 'Middle initial of a person. (MiddleInitial)';
   COMMENT ON COLUMN "RCRA_HD_CERTIFICATION"."CERT_LAST_NAME" IS 'Last name of a person. (LastName)';
   COMMENT ON COLUMN "RCRA_HD_CERTIFICATION"."CERT_EMAIL_TEXT" IS 'Email address data (CertificationEmailText)';
   COMMENT ON TABLE "RCRA_HD_CERTIFICATION"  IS 'Schema element: CertificationDataType';
--------------------------------------------------------
--  DDL for Table RCRA_HD_ENV_PERMIT
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_ENV_PERMIT" 
   (	"HD_ENV_PERMIT_ID" VARCHAR2(40 BYTE), 
	"HD_HANDLER_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"ENV_PERMIT_NUMBER" VARCHAR2(13 BYTE), 
	"ENV_PERMIT_OWNER" CHAR(2 BYTE), 
	"ENV_PERMIT_TYPE" CHAR(1 BYTE), 
	"ENV_PERMIT_DESC" VARCHAR2(80 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_ENV_PERMIT"."HD_ENV_PERMIT_ID" IS 'Parent: Information about environmental permits issued to the handler. (_PK)';
   COMMENT ON COLUMN "RCRA_HD_ENV_PERMIT"."HD_HANDLER_ID" IS 'Parent: Information about environmental permits issued to the handler. (_FK)';
   COMMENT ON COLUMN "RCRA_HD_ENV_PERMIT"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_ENV_PERMIT"."ENV_PERMIT_NUMBER" IS 'Identification number of an effective environmental permit issued to the handler, or the number of a filed application for which an environmental permit has not yet been issued. (EnvironmentalPermitID)';
   COMMENT ON COLUMN "RCRA_HD_ENV_PERMIT"."ENV_PERMIT_OWNER" IS 'Indicates the agency that defines the other permit type. (EnvironmentalPermitOwnerName)';
   COMMENT ON COLUMN "RCRA_HD_ENV_PERMIT"."ENV_PERMIT_TYPE" IS 'Code indicating the environmental program and/or jurisdictional authority under which an environmental permit was issued to the facility, or under which an application has been filed for which a permit has not yet been issued. This data element is applicable to TSD facilities only. (EnvironmentalPermitTypeCode)';
   COMMENT ON COLUMN "RCRA_HD_ENV_PERMIT"."ENV_PERMIT_DESC" IS 'Description of any permit type indicated as O (Other) in the Permit Type field. (EnvironmentalPermitDescription)';
   COMMENT ON TABLE "RCRA_HD_ENV_PERMIT"  IS 'Schema element: EnvironmentalPermitDataType';
--------------------------------------------------------
--  DDL for Table RCRA_HD_EPISODIC_EVENT
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_EPISODIC_EVENT" 
   (	"HD_EPISODIC_EVENT_ID" VARCHAR2(40 BYTE), 
	"HD_HANDLER_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"EVENT_OWNER" CHAR(2 BYTE), 
	"EVENT_TYPE" VARCHAR2(3 BYTE), 
	"EVENT_OTHER_DESC" VARCHAR2(80 BYTE), 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"CONTACT_FIRST_NAME" VARCHAR2(38 BYTE), 
	"CONTACT_MIDDLE_INITIAL" CHAR(1 BYTE), 
	"CONTACT_LAST_NAME" VARCHAR2(38 BYTE), 
	"CONTACT_ORG_NAME" VARCHAR2(80 BYTE), 
	"CONTACT_TITLE" VARCHAR2(80 BYTE), 
	"CONTACT_EMAIL_ADDRESS" VARCHAR2(80 BYTE), 
	"CONTACT_PHONE" VARCHAR2(15 BYTE), 
	"CONTACT_PHONE_EXT" VARCHAR2(6 BYTE), 
	"CONTACT_FAX" VARCHAR2(15 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."HD_EPISODIC_EVENT_ID" IS 'Parent: Top level of all information about the handler. (_PK)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."HD_HANDLER_ID" IS 'Parent: Top level of all information about the handler. (_FK)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."EVENT_OWNER" IS 'Owner of the episodic event. (EpisodicEventOwner)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."EVENT_TYPE" IS 'Type of the episodic event. (EpisodicEventType)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."EVENT_OTHER_DESC" IS 'Other description of the episodic event. (EpisodicEventOtherDescription)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."START_DATE" IS 'Episodic event start event. (EpisodicEventStartDate)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."END_DATE" IS 'Episodic event end date. (EpisodicEventEndDate)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."CONTACT_FIRST_NAME" IS 'Parent: Contact information. (FirstName)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."CONTACT_MIDDLE_INITIAL" IS 'Parent: Contact information. (MiddleInitial)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."CONTACT_LAST_NAME" IS 'Parent: Contact information. (LastName)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."CONTACT_ORG_NAME" IS 'Parent: Contact information. (OrganizationFormalName)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."CONTACT_TITLE" IS 'Title of the contact person or the title of the person who certified the handler information reported to the authorizing agency. (IndividualTitleText)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."CONTACT_EMAIL_ADDRESS" IS 'Email address data (EmailAddressText)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."CONTACT_PHONE" IS 'Telephone Number data (TelephoneNumberText)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."CONTACT_PHONE_EXT" IS 'Telephone number extension (PhoneExtensionText)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_EVENT"."CONTACT_FAX" IS 'Contact fax number (FaxNumberText)';
   COMMENT ON TABLE "RCRA_HD_EPISODIC_EVENT"  IS 'Schema element: HandlerEpisodicEvent';
--------------------------------------------------------
--  DDL for Table RCRA_HD_EPISODIC_WASTE
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_EPISODIC_WASTE" 
   (	"HD_EPISODIC_WASTE_ID" VARCHAR2(40 BYTE), 
	"HD_EPISODIC_EVENT_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"SEQ_NUMBER" NUMBER(10,0), 
	"WASTE_DESC" VARCHAR2(4000 BYTE), 
	"EST_QNTY" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_EPISODIC_WASTE"."HD_EPISODIC_WASTE_ID" IS 'Parent: Episodic waste of the Handler (_PK)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_WASTE"."HD_EPISODIC_EVENT_ID" IS 'Parent: Episodic waste of the Handler (_FK)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_WASTE"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_WASTE"."SEQ_NUMBER" IS 'Unique number that identifies the episodic waste. (EpisodicWasteSequenceNumber)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_WASTE"."WASTE_DESC" IS 'Waste description. (WasteDescription)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_WASTE"."EST_QNTY" IS 'The quantity of waste that is handled by each process code. This element pertains only to Part A submissions. (EstimatedQuantity)';
   COMMENT ON TABLE "RCRA_HD_EPISODIC_WASTE"  IS 'Schema element: EpisodicWaste';
--------------------------------------------------------
--  DDL for Table RCRA_HD_EPISODIC_WASTE_CODE
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_EPISODIC_WASTE_CODE" 
   (	"HD_EPISODIC_WASTE_CODE_ID" VARCHAR2(40 BYTE), 
	"HD_EPISODIC_WASTE_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"WASTE_CODE_OWNER" CHAR(2 BYTE), 
	"WASTE_CODE" VARCHAR2(6 BYTE), 
	"WASTE_CODE_TEXT" VARCHAR2(80 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_EPISODIC_WASTE_CODE"."HD_EPISODIC_WASTE_CODE_ID" IS 'Parent: Hazardous waste codes describing the handler''s hazardous waste streams. (_PK)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_WASTE_CODE"."HD_EPISODIC_WASTE_ID" IS 'Parent: Hazardous waste codes describing the handler''s hazardous waste streams. (_FK)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_WASTE_CODE"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_WASTE_CODE"."WASTE_CODE_OWNER" IS 'Indicates the agency that owns the data record. (WasteCodeOwnerName)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_WASTE_CODE"."WASTE_CODE" IS 'Code used to describe hazardous waste. (WasteCode)';
   COMMENT ON COLUMN "RCRA_HD_EPISODIC_WASTE_CODE"."WASTE_CODE_TEXT" IS 'Descriptive text describing the Waste Code(Data publishing only). (WasteCodeText)';
   COMMENT ON TABLE "RCRA_HD_EPISODIC_WASTE_CODE"  IS 'Schema element: EpisodicHandlerWasteCodeDataType';
--------------------------------------------------------
--  DDL for Table RCRA_HD_HANDLER
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_HANDLER" 
   (	"HD_HANDLER_ID" VARCHAR2(40 BYTE), 
	"HD_HBASIC_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"ACTIVITY_LOCATION" CHAR(2 BYTE), 
	"SOURCE_TYPE" CHAR(1 BYTE), 
	"SEQ_NUMBER" NUMBER(10,0), 
	"RECEIVE_DATE" VARCHAR2(10 BYTE), 
	"HANDLER_NAME" VARCHAR2(80 BYTE), 
	"ACKNOWLEDGE_DATE" VARCHAR2(10 BYTE), 
	"NON_NOTIFIER" CHAR(1 BYTE), 
	"NON_NOTIFIER_TEXT" VARCHAR2(255 BYTE), 
	"TSD_DATE" VARCHAR2(10 BYTE), 
	"NATURE_OF_BUSINESS_TEXT" VARCHAR2(4000 BYTE), 
	"OFF_SITE_RECEIPT" CHAR(1 BYTE), 
	"ACCESSIBILITY" CHAR(1 BYTE), 
	"ACCESSIBILITY_TEXT" VARCHAR2(255 BYTE), 
	"COUNTY_CODE_OWNER" CHAR(2 BYTE), 
	"COUNTY_CODE" VARCHAR2(5 BYTE), 
	"NOTES" VARCHAR2(4000 BYTE), 
	"INTRNL_NOTES" VARCHAR2(4000 BYTE), 
	"SHORT_TERM_INTRNL_NOTES" VARCHAR2(4000 BYTE), 
	"ACKNOWLEDGE_FLAG_IND" CHAR(1 BYTE), 
	"INCLUDE_IN_NATIONAL_REPORT_IND" CHAR(1 BYTE), 
	"LQHUW_IND" CHAR(1 BYTE), 
	"HD_REPORT_CYCLE_YEAR" NUMBER(10,0), 
	"HEALTHCARE_FAC" CHAR(1 BYTE), 
	"REVERSE_DISTRIBUTOR" CHAR(1 BYTE), 
	"SUBPART_P_WITHDRAWAL" CHAR(1 BYTE), 
	"ACKNOWLEDGE_FLAG" CHAR(1 BYTE), 
	"LOCATION_STREET_NUMBER" VARCHAR2(12 BYTE), 
	"LOCATION_STREET1" VARCHAR2(50 BYTE), 
	"LOCATION_STREET2" VARCHAR2(50 BYTE), 
	"LOCATION_CITY" VARCHAR2(25 BYTE), 
	"LOCATION_STATE" CHAR(2 BYTE), 
	"LOCATION_COUNTRY" CHAR(2 BYTE), 
	"LOCATION_ZIP" VARCHAR2(14 BYTE), 
	"MAIL_STREET_NUMBER" VARCHAR2(12 BYTE), 
	"MAIL_STREET1" VARCHAR2(50 BYTE), 
	"MAIL_STREET2" VARCHAR2(50 BYTE), 
	"MAIL_CITY" VARCHAR2(25 BYTE), 
	"MAIL_STATE" CHAR(2 BYTE), 
	"MAIL_COUNTRY" CHAR(2 BYTE), 
	"MAIL_ZIP" VARCHAR2(14 BYTE), 
	"CONTACT_FIRST_NAME" VARCHAR2(38 BYTE), 
	"CONTACT_MIDDLE_INITIAL" CHAR(1 BYTE), 
	"CONTACT_LAST_NAME" VARCHAR2(38 BYTE), 
	"CONTACT_ORG_NAME" VARCHAR2(80 BYTE), 
	"CONTACT_TITLE" VARCHAR2(80 BYTE), 
	"CONTACT_EMAIL_ADDRESS" VARCHAR2(80 BYTE), 
	"CONTACT_PHONE" VARCHAR2(15 BYTE), 
	"CONTACT_PHONE_EXT" VARCHAR2(6 BYTE), 
	"CONTACT_FAX" VARCHAR2(15 BYTE), 
	"CONTACT_STREET_NUMBER" VARCHAR2(12 BYTE), 
	"CONTACT_STREET1" VARCHAR2(50 BYTE), 
	"CONTACT_STREET2" VARCHAR2(50 BYTE), 
	"CONTACT_CITY" VARCHAR2(25 BYTE), 
	"CONTACT_STATE" CHAR(2 BYTE), 
	"CONTACT_COUNTRY" CHAR(2 BYTE), 
	"CONTACT_ZIP" VARCHAR2(14 BYTE), 
	"PCONTACT_FIRST_NAME" VARCHAR2(38 BYTE), 
	"PCONTACT_MIDDLE_NAME" CHAR(1 BYTE), 
	"PCONTACT_LAST_NAME" VARCHAR2(38 BYTE), 
	"PCONTACT_ORG_NAME" VARCHAR2(80 BYTE), 
	"PCONTACT_TITLE" VARCHAR2(80 BYTE), 
	"PCONTACT_EMAIL_ADDRESS" VARCHAR2(80 BYTE), 
	"PCONTACT_PHONE" VARCHAR2(15 BYTE), 
	"PCONTACT_PHONE_EXT" VARCHAR2(6 BYTE), 
	"PCONTACT_FAX" VARCHAR2(15 BYTE), 
	"PCONTACT_STREET_NUMBER" VARCHAR2(12 BYTE), 
	"PCONTACT_STREET1" VARCHAR2(50 BYTE), 
	"PCONTACT_STREET2" VARCHAR2(50 BYTE), 
	"PCONTACT_CITY" VARCHAR2(25 BYTE), 
	"PCONTACT_STATE" CHAR(2 BYTE), 
	"PCONTACT_COUNTRY" CHAR(2 BYTE), 
	"PCONTACT_ZIP" VARCHAR2(14 BYTE), 
	"USED_OIL_BURNER" CHAR(1 BYTE), 
	"USED_OIL_PROCESSOR" CHAR(1 BYTE), 
	"USED_OIL_REFINER" CHAR(1 BYTE), 
	"USED_OIL_MARKET_BURNER" CHAR(1 BYTE), 
	"USED_OIL_SPEC_MARKETER" CHAR(1 BYTE), 
	"USED_OIL_TRANSFER_FACILITY" CHAR(1 BYTE), 
	"USED_OIL_TRANSPORTER" CHAR(1 BYTE), 
	"LAND_TYPE" CHAR(1 BYTE), 
	"STATE_DISTRICT_OWNER" CHAR(2 BYTE), 
	"STATE_DISTRICT" VARCHAR2(10 BYTE), 
	"STATE_DISTRICT_TEXT" VARCHAR2(255 BYTE), 
	"IMPORTER_ACTIVITY" CHAR(1 BYTE), 
	"MIXED_WASTE_GENERATOR" CHAR(1 BYTE), 
	"RECYCLER_ACTIVITY" CHAR(1 BYTE), 
	"TRANSPORTER_ACTIVITY" CHAR(1 BYTE), 
	"TSD_ACTIVITY" CHAR(1 BYTE), 
	"UNDERGROUND_INJECTION_ACTIVITY" CHAR(1 BYTE), 
	"UNIVERSAL_WASTE_DEST_FACILITY" CHAR(1 BYTE), 
	"ONSITE_BURNER_EXEMPTION" CHAR(1 BYTE), 
	"FURNACE_EXEMPTION" CHAR(1 BYTE), 
	"SHORT_TERM_GEN_IND" CHAR(1 BYTE), 
	"TRANSFER_FACILITY_IND" CHAR(1 BYTE), 
	"RECOGNIZED_TRADER_IMPORTER_IND" CHAR(1 BYTE), 
	"RECOGNIZED_TRADER_EXPORTER_IND" CHAR(1 BYTE), 
	"SLAB_IMPORTER_IND" CHAR(1 BYTE), 
	"SLAB_EXPORTER_IND" CHAR(1 BYTE), 
	"RECYCLER_ACT_NONSTORAGE" CHAR(1 BYTE), 
	"MANIFEST_BROKER" CHAR(1 BYTE), 
	"STATE_WASTE_GENERATOR_OWNER" CHAR(2 BYTE), 
	"STATE_WASTE_GENERATOR" CHAR(1 BYTE), 
	"FED_WASTE_GENERATOR_OWNER" CHAR(2 BYTE), 
	"FED_WASTE_GENERATOR" CHAR(1 BYTE), 
	"COLLEGE_IND" CHAR(1 BYTE), 
	"HOSPITAL_IND" CHAR(1 BYTE), 
	"NON_PROFIT_IND" CHAR(1 BYTE), 
	"WITHDRAWAL_IND" CHAR(1 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"NOTIFICATION_RSN_CODE" CHAR(1 BYTE), 
	"EFFC_DATE" DATE, 
	"FINANCIAL_ASSURANCE_IND" CHAR(1 BYTE), 
	"RECYCLER_IND" CHAR(1 BYTE), 
	"RECYCLER_NOTES" VARCHAR2(4000 BYTE), 
	"RECYCLING_IND" CHAR(1 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_HANDLER"."HD_HANDLER_ID" IS 'Parent: Top level of all information about the handler. (_PK)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."HD_HBASIC_ID" IS 'Parent: Top level of all information about the handler. (_FK)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."ACTIVITY_LOCATION" IS 'Indicates the location of the agency regulating the handler. (ActivityLocationCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."SOURCE_TYPE" IS 'Code indicating the source of information for the associated data (activity, wastes, etc.). (SourceTypeCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."SEQ_NUMBER" IS 'Sequence number for each source record about a handler. (SourceRecordSequenceNumber)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."RECEIVE_DATE" IS 'Date that the form (indicated by the associated Source) was received from the handler by the appropriate authority. (ReceiveDate)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."HANDLER_NAME" IS 'Name of the Handler (HandlerName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."ACKNOWLEDGE_DATE" IS 'Date information was received for the handler. (AcknowledgeReceiptDate)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."NON_NOTIFIER" IS 'Flag indicating that the handler has been identified through a source other than Notification and is suspected of conducting RCRA-regulated activities without proper authority. (NonNotifierIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."NON_NOTIFIER_TEXT" IS 'Descriptive text describing Notification source(Data publishing only). (NonNotifierIndicatorText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."TSD_DATE" IS 'The date that operation of the facility commenced, the date construction on the facility commenced, or the date that operation is expected to begin. Part-A submissions (TreatmentStorageDisposalDate)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."NATURE_OF_BUSINESS_TEXT" IS 'Notes regarding Handler Part-A submissions. (NatureOfBusinessText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."OFF_SITE_RECEIPT" IS 'Code indicating that the handler, whether public or private, currently accepts hazardous waste from another site (site identified by a different EPA ID). If information is also available on the specific processes and wastes which are accepted, it is indicated by a flag at the process unit level (Process Unit Group Commercial Status). (OffsiteWasteReceiptCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."ACCESSIBILITY" IS 'Code indicating the reason why the handler is not accessible for normal RCRA tracking and processing (previously called Bankrupt Indicator). (AccessibilityCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."ACCESSIBILITY_TEXT" IS 'Descriptive text describing reason facility is not accessible(Data publishing only). (AccessibilityCodeText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."COUNTY_CODE_OWNER" IS 'Indicates the agency that defines the county code. (CountyCodeOwner)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."COUNTY_CODE" IS 'The Federal Information Processing Standard (FIPS) code for the county in which the facility is located (Ref: FIPS Publication, 6-3, "Counties and County Equivalents of the States of the United States"). (CountyCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."NOTES" IS 'Notes regarding the Handler (these are public notes; will be available via all services). (HandlerSupplementalInformationText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."INTRNL_NOTES" IS 'Notes regarding the Handler (these are internal notes; will be available via authenticated services). (HandlerInternalSupplementalInformationText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."SHORT_TERM_INTRNL_NOTES" IS 'Notes regarding the Handler (these are internal notes; will be available via authenticated services). (ShortTermSupplementalInformationText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."ACKNOWLEDGE_FLAG_IND" IS 'Flag indicating if it is acknowledged. (AcknowledgeFlagIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."INCLUDE_IN_NATIONAL_REPORT_IND" IS 'Flag indicating if it is included in national report. (IncludeInNationalReportIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."LQHUW_IND" IS 'Flag indicating if it is LQHUW. (LQHUWIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."HD_REPORT_CYCLE_YEAR" IS 'Indicates the year of report cycle. (HDReportCycleYear)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."HEALTHCARE_FAC" IS 'Indicates the health care facility. (HealthcareFacility)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."REVERSE_DISTRIBUTOR" IS 'Indicates the reverse distributor. (ReverseDistributor)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."SUBPART_P_WITHDRAWAL" IS 'Indicates the withdrawal from Subpart P. (SubpartPWithdrawal)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."ACKNOWLEDGE_FLAG" IS 'Parent: Top level of all information about the handler. (AcknowledgeFlag)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."LOCATION_STREET_NUMBER" IS 'Parent: Location address information. (LocationAddressNumberText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."LOCATION_STREET1" IS 'Parent: Location address information. (LocationAddressText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."LOCATION_STREET2" IS 'Parent: Location address information. (SupplementalLocationText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."LOCATION_CITY" IS 'Parent: Location address information. (LocalityName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."LOCATION_STATE" IS 'Parent: Location address information. (StateUSPSCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."LOCATION_COUNTRY" IS 'Parent: Location address information. (CountryName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."LOCATION_ZIP" IS 'Parent: Location address information. (LocationZIPCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."MAIL_STREET_NUMBER" IS 'Parent: Mailing address information. (MailingAddressNumberText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."MAIL_STREET1" IS 'Parent: Mailing address information. (MailingAddressText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."MAIL_STREET2" IS 'Parent: Mailing address information. (SupplementalAddressText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."MAIL_CITY" IS 'Parent: Mailing address information. (MailingAddressCityName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."MAIL_STATE" IS 'Parent: Mailing address information. (MailingAddressStateUSPSCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."MAIL_COUNTRY" IS 'Parent: Mailing address information. (MailingAddressCountryName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."MAIL_ZIP" IS 'Parent: Mailing address information. (MailingAddressZIPCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_FIRST_NAME" IS 'Parent: Contact information. (FirstName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_MIDDLE_INITIAL" IS 'Parent: Contact information. (MiddleInitial)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_LAST_NAME" IS 'Parent: Contact information. (LastName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_ORG_NAME" IS 'Parent: Contact information. (OrganizationFormalName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_TITLE" IS 'Title of the contact person or the title of the person who certified the handler information reported to the authorizing agency. (IndividualTitleText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_EMAIL_ADDRESS" IS 'Email address data (EmailAddressText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_PHONE" IS 'Telephone Number data (TelephoneNumberText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_PHONE_EXT" IS 'Telephone number extension (PhoneExtensionText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_FAX" IS 'Contact fax number (FaxNumberText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_STREET_NUMBER" IS 'Parent: Mailing address information. (MailingAddressNumberText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_STREET1" IS 'Parent: Mailing address information. (MailingAddressText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_STREET2" IS 'Parent: Mailing address information. (SupplementalAddressText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_CITY" IS 'Parent: Mailing address information. (MailingAddressCityName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_STATE" IS 'Parent: Mailing address information. (MailingAddressStateUSPSCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_COUNTRY" IS 'Parent: Mailing address information. (MailingAddressCountryName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."CONTACT_ZIP" IS 'Parent: Mailing address information. (MailingAddressZIPCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_FIRST_NAME" IS 'Parent: Contact information. (FirstName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_MIDDLE_NAME" IS 'Parent: Contact information. (MiddleInitial)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_LAST_NAME" IS 'Parent: Contact information. (LastName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_ORG_NAME" IS 'Parent: Contact information. (OrganizationFormalName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_TITLE" IS 'Title of the contact person or the title of the person who certified the handler information reported to the authorizing agency. (IndividualTitleText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_EMAIL_ADDRESS" IS 'Email address data (EmailAddressText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_PHONE" IS 'Telephone Number data (TelephoneNumberText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_PHONE_EXT" IS 'Telephone number extension (PhoneExtensionText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_FAX" IS 'Contact fax number (FaxNumberText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_STREET_NUMBER" IS 'Parent: Mailing address information. (MailingAddressNumberText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_STREET1" IS 'Parent: Mailing address information. (MailingAddressText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_STREET2" IS 'Parent: Mailing address information. (SupplementalAddressText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_CITY" IS 'Parent: Mailing address information. (MailingAddressCityName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_STATE" IS 'Parent: Mailing address information. (MailingAddressStateUSPSCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_COUNTRY" IS 'Parent: Mailing address information. (MailingAddressCountryName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."PCONTACT_ZIP" IS 'Parent: Mailing address information. (MailingAddressZIPCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."USED_OIL_BURNER" IS 'Code indicating that the handler is engaged in the burning of used oil fuel. (FuelBurnerCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."USED_OIL_PROCESSOR" IS 'Code indicating that the handler is engaged in processing used oil activities. (ProcessorCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."USED_OIL_REFINER" IS 'Code indicating that the handler is engaged in re-refining used oil activities. (RefinerCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."USED_OIL_MARKET_BURNER" IS 'Code indicating that the handler directs shipments of used oil to burners. (MarketBurnerCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."USED_OIL_SPEC_MARKETER" IS 'Code indicating that the handler is a marketer who first claims the used oil meets the specifications. (SpecificationMarketerCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."USED_OIL_TRANSFER_FACILITY" IS 'Code indicating that the handler owns or operates a used oil transfer facility. (TransferFacilityCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."USED_OIL_TRANSPORTER" IS 'Code indicating that the handler is engaged in used oil transportation and/or transfer facility activities. (TransporterCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."LAND_TYPE" IS 'Code indicating current ownership status of the land on which the facility is located. (LandTypeCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."STATE_DISTRICT_OWNER" IS 'Owner of the state district code. Usually 2-digit postal code (i.e. KS). (StateDistrictOwnerName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."STATE_DISTRICT" IS 'Code indicating the state-designated legislative district(s) in which the site is located. (StateDistrictCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."STATE_DISTRICT_TEXT" IS 'Descriptive text describing the code indicating the state-designated legislative district(s) in which the site is located. (StateDistrictCodeText)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."IMPORTER_ACTIVITY" IS 'Code indicating that the handler is engaged in importing hazardous waste into the United States. (ImporterActivityCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."MIXED_WASTE_GENERATOR" IS 'Code indicating that the handler is engaged in generating mixed waste (waste that is both hazardous and radioactive). (MixedWasteGeneratorCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."RECYCLER_ACTIVITY" IS 'Code for recycling hazardous waste. (RecyclerActivityCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."TRANSPORTER_ACTIVITY" IS 'Code indicating that the handler is engaged in the transportation of hazardous waste. (TransporterActivityCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."TSD_ACTIVITY" IS 'Code indicating that the handler is engaged in the treatment, storage, or disposal of hazardous waste. (TreatmentStorageDisposalActivityCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."UNDERGROUND_INJECTION_ACTIVITY" IS 'Code indicating that the handler generates and or treats, stores, or disposes of hazardous waste and has an injection well located at the installation. (UndergroundInjectionActivityCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."UNIVERSAL_WASTE_DEST_FACILITY" IS 'Code indicating that the handler treats, disposes of, or recycles hazardous waste on site. (UniversalWasteDestinationFacilityIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."ONSITE_BURNER_EXEMPTION" IS 'Code indicating that the handler qualifies for the Small Quantity Onsite Burner Exemption. (OnsiteBurnerExemptionCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."FURNACE_EXEMPTION" IS 'Code indicating that the handler qualifies for the Smelting, Melting, and Refining Furnace Exemption. (FurnaceExemptionCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."SHORT_TERM_GEN_IND" IS 'Code indicating that the handler is engaged in short-term hazardous waste generation activities. (ShortTermGeneratorIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."TRANSFER_FACILITY_IND" IS 'Code indicating that the handler is a Hazardous Waste Transfer Facility (not to be confused with a used oil transfer facility). (TransferFacilityIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."RECOGNIZED_TRADER_IMPORTER_IND" IS 'Indicates that the Handler is participating in Import Trading activity. Possible values are: Y/N (RecognizedTraderImporterIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."RECOGNIZED_TRADER_EXPORTER_IND" IS 'Indicates that the Handler is participating in Export Trading activity. Possible values are: Y/N (RecognizedTraderExporterIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."SLAB_IMPORTER_IND" IS 'Indicates that the Handler is participating in Slab Import activity. Possible values are: Y/N (SlabImporterIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."SLAB_EXPORTER_IND" IS 'Indicates that the Handler is participating in Slab Export activity. Possible values are: Y/N (SlabExporterIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."RECYCLER_ACT_NONSTORAGE" IS 'Identifies that Handler participates in Nonstorage Recycler Activity. (RecyclerActivityNonstorage)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."MANIFEST_BROKER" IS 'Identifies that Handler is ManifestBroker. (ManifestBroker)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."STATE_WASTE_GENERATOR_OWNER" IS 'Indicates the agency that defines the generator status type. (WasteGeneratorOwnerName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."STATE_WASTE_GENERATOR" IS 'Code indicating that the handler is engaged in the generation of hazardous waste. (WasteGeneratorStatusCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."FED_WASTE_GENERATOR_OWNER" IS 'Indicates the agency that defines the generator status type. (WasteGeneratorOwnerName)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."FED_WASTE_GENERATOR" IS 'Code indicating that the handler is engaged in the generation of hazardous waste. (WasteGeneratorStatusCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."COLLEGE_IND" IS 'Indicates whether or not the Handler is a College or University opting into SubPart K. (CollegeIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."HOSPITAL_IND" IS 'Indicates whether or not the Handler is a Hospital opting into SubPart K. (HospitalIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."NON_PROFIT_IND" IS 'Indicates whether or not the Handler is a Non-Profit opting into SubPart K. (NonProfitIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."WITHDRAWAL_IND" IS 'Indicates whether or not the Handler is withdrawing from SubPart K. (WithdrawalIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."NOTIFICATION_RSN_CODE" IS 'Indicates the reason for notifying Hazardous Secondary Material (NotificationReasonCode)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."EFFC_DATE" IS 'The Effective Date of the action: 1. Hazardous Secondary Material notification in Handler, 2. Corrective Action Authority, 3. Financial Assurance Mechanism. (EffectiveDate)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."FINANCIAL_ASSURANCE_IND" IS 'Indicates whether or not the facility has provided Financial Assurance for the HSM Activities (FinancialAssuranceIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."RECYCLER_IND" IS 'Code for recycling hazardous waste. (RecyclerIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."RECYCLER_NOTES" IS 'Notes for recycling hazardous waste. (RecyclerNotes)';
   COMMENT ON COLUMN "RCRA_HD_HANDLER"."RECYCLING_IND" IS 'Parent: Description of the Hazardous Secondary Material managed by the Handler (RecyclingIndicator)';
   COMMENT ON TABLE "RCRA_HD_HANDLER"  IS 'Schema element: HandlerDataType';
--------------------------------------------------------
--  DDL for Table RCRA_HD_HBASIC
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_HBASIC" 
   (	"HD_HBASIC_ID" VARCHAR2(40 BYTE), 
	"HD_SUBM_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"HANDLER_ID" VARCHAR2(12 BYTE), 
	"EXTRACT_FLAG" CHAR(1 BYTE), 
	"FACILITY_IDENTIFIER" VARCHAR2(12 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_HBASIC"."HD_HBASIC_ID" IS 'Parent: Details of facility submission. (_PK)';
   COMMENT ON COLUMN "RCRA_HD_HBASIC"."HD_SUBM_ID" IS 'Parent: Details of facility submission. (_FK)';
   COMMENT ON COLUMN "RCRA_HD_HBASIC"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_HBASIC"."HANDLER_ID" IS 'Code that uniquely identifies the handler. (HandlerID)';
   COMMENT ON COLUMN "RCRA_HD_HBASIC"."EXTRACT_FLAG" IS 'Designates that data is available for extract for public use. (PublicUseExtractIndicator)';
   COMMENT ON COLUMN "RCRA_HD_HBASIC"."FACILITY_IDENTIFIER" IS 'Computer-generated primary facility-level key in the EPA FINDS data system used as an identifier to cross-reference entities regulated under different environmental programs. The Agency Facility Identification Data Standard (FIDS) requires that program offices store this key in their data systems. (FacilityRegistryID)';
   COMMENT ON TABLE "RCRA_HD_HBASIC"  IS 'Schema element: FacilitySubmissionDataType';
--------------------------------------------------------
--  DDL for Table RCRA_HD_LQG_CLOSURE
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_LQG_CLOSURE" 
   (	"HD_LQG_CLOSURE_ID" VARCHAR2(40 BYTE), 
	"HD_HANDLER_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"CLOSURE_TYPE" CHAR(1 BYTE), 
	"EXPECTED_CLOSURE_DATE" DATE, 
	"NEW_CLOSURE_DATE" DATE, 
	"DATE_CLOSED" DATE, 
	"IN_COMPLIANCE_IND" CHAR(1 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_LQG_CLOSURE"."HD_LQG_CLOSURE_ID" IS 'Parent: Top level of all information about the handler. (_PK)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CLOSURE"."HD_HANDLER_ID" IS 'Parent: Top level of all information about the handler. (_FK)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CLOSURE"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CLOSURE"."CLOSURE_TYPE" IS 'Type of the closure. (ClosureType)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CLOSURE"."EXPECTED_CLOSURE_DATE" IS 'Date of expected closure. (ExpectedClosureDate)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CLOSURE"."NEW_CLOSURE_DATE" IS 'New closure date. (NewClosureDate)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CLOSURE"."DATE_CLOSED" IS 'Date of closed. (DateClosed)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CLOSURE"."IN_COMPLIANCE_IND" IS 'Type of in compliance. (InComplianceIndicator)';
   COMMENT ON TABLE "RCRA_HD_LQG_CLOSURE"  IS 'Schema element: HandlerLqgClosure';
--------------------------------------------------------
--  DDL for Table RCRA_HD_LQG_CONSOLIDATION
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_LQG_CONSOLIDATION" 
   (	"HD_LQG_CONSOLIDATION_ID" VARCHAR2(40 BYTE), 
	"HD_HANDLER_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"SEQ_NUMBER" NUMBER(10,0), 
	"HANDLER_ID" VARCHAR2(12 BYTE), 
	"HANDLER_NAME" VARCHAR2(80 BYTE), 
	"MAIL_STREET_NUMBER" VARCHAR2(12 BYTE), 
	"MAIL_STREET1" VARCHAR2(50 BYTE), 
	"MAIL_STREET2" VARCHAR2(50 BYTE), 
	"MAIL_CITY" VARCHAR2(25 BYTE), 
	"MAIL_STATE" CHAR(2 BYTE), 
	"MAIL_COUNTRY" CHAR(2 BYTE), 
	"MAIL_ZIP" VARCHAR2(14 BYTE), 
	"CONTACT_FIRST_NAME" VARCHAR2(38 BYTE), 
	"CONTACT_MIDDLE_INITIAL" CHAR(1 BYTE), 
	"CONTACT_LAST_NAME" VARCHAR2(38 BYTE), 
	"CONTACT_ORG_NAME" VARCHAR2(80 BYTE), 
	"CONTACT_TITLE" VARCHAR2(80 BYTE), 
	"CONTACT_EMAIL_ADDRESS" VARCHAR2(80 BYTE), 
	"CONTACT_PHONE" VARCHAR2(15 BYTE), 
	"CONTACT_PHONE_EXT" VARCHAR2(6 BYTE), 
	"CONTACT_FAX" VARCHAR2(15 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."HD_LQG_CONSOLIDATION_ID" IS 'Parent: Top level of all information about the handler. (_PK)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."HD_HANDLER_ID" IS 'Parent: Top level of all information about the handler. (_FK)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."SEQ_NUMBER" IS 'Unique number that identifies the Consolidation. (ConsolidationSequenceNumber)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."HANDLER_ID" IS 'Code that uniquely identifies the handler. (HandlerID)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."HANDLER_NAME" IS 'Name of the Handler (HandlerName)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."MAIL_STREET_NUMBER" IS 'Parent: Mailing address information. (MailingAddressNumberText)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."MAIL_STREET1" IS 'Parent: Mailing address information. (MailingAddressText)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."MAIL_STREET2" IS 'Parent: Mailing address information. (SupplementalAddressText)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."MAIL_CITY" IS 'Parent: Mailing address information. (MailingAddressCityName)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."MAIL_STATE" IS 'Parent: Mailing address information. (MailingAddressStateUSPSCode)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."MAIL_COUNTRY" IS 'Parent: Mailing address information. (MailingAddressCountryName)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."MAIL_ZIP" IS 'Parent: Mailing address information. (MailingAddressZIPCode)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."CONTACT_FIRST_NAME" IS 'Parent: Contact information. (FirstName)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."CONTACT_MIDDLE_INITIAL" IS 'Parent: Contact information. (MiddleInitial)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."CONTACT_LAST_NAME" IS 'Parent: Contact information. (LastName)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."CONTACT_ORG_NAME" IS 'Parent: Contact information. (OrganizationFormalName)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."CONTACT_TITLE" IS 'Title of the contact person or the title of the person who certified the handler information reported to the authorizing agency. (IndividualTitleText)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."CONTACT_EMAIL_ADDRESS" IS 'Email address data (EmailAddressText)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."CONTACT_PHONE" IS 'Telephone Number data (TelephoneNumberText)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."CONTACT_PHONE_EXT" IS 'Telephone number extension (PhoneExtensionText)';
   COMMENT ON COLUMN "RCRA_HD_LQG_CONSOLIDATION"."CONTACT_FAX" IS 'Contact fax number (FaxNumberText)';
   COMMENT ON TABLE "RCRA_HD_LQG_CONSOLIDATION"  IS 'Schema element: HandlerLqgConsolidation';
--------------------------------------------------------
--  DDL for Table RCRA_HD_NAICS
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_NAICS" 
   (	"HD_NAICS_ID" VARCHAR2(40 BYTE), 
	"HD_HANDLER_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"NAICS_SEQ" VARCHAR2(4 BYTE), 
	"NAICS_OWNER" CHAR(2 BYTE), 
	"NAICS_CODE" VARCHAR2(6 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_NAICS"."HD_NAICS_ID" IS 'Parent: North American Industry Classification Status codes reported for the handler. (_PK)';
   COMMENT ON COLUMN "RCRA_HD_NAICS"."HD_HANDLER_ID" IS 'Parent: North American Industry Classification Status codes reported for the handler. (_FK)';
   COMMENT ON COLUMN "RCRA_HD_NAICS"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_NAICS"."NAICS_SEQ" IS 'Sequence number for each NAICS code for the handler. (NAICSSequenceNumber)';
   COMMENT ON COLUMN "RCRA_HD_NAICS"."NAICS_OWNER" IS 'Indicates the agency that defines the NAICS Code. (NAICSOwnerCode)';
   COMMENT ON COLUMN "RCRA_HD_NAICS"."NAICS_CODE" IS 'The North American Industry Classification System Code that identifies the business activities of the facility. (NAICSCode)';
   COMMENT ON TABLE "RCRA_HD_NAICS"  IS 'Schema element: NAICSIdentityDataType';
--------------------------------------------------------
--  DDL for Table RCRA_HD_OTHER_ID
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_OTHER_ID" 
   (	"HD_OTHER_ID_ID" VARCHAR2(40 BYTE), 
	"HD_HBASIC_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"OTHER_ID" VARCHAR2(12 BYTE), 
	"RELATIONSHIP_OWNER" CHAR(2 BYTE), 
	"RELATIONSHIP_TYPE" CHAR(1 BYTE), 
	"SAME_FACILITY" CHAR(1 BYTE), 
	"NOTES" VARCHAR2(4000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_OTHER_ID"."HD_OTHER_ID_ID" IS 'Parent: Contains alternative identifiers for the facility. (_PK)';
   COMMENT ON COLUMN "RCRA_HD_OTHER_ID"."HD_HBASIC_ID" IS 'Parent: Contains alternative identifiers for the facility. (_FK)';
   COMMENT ON COLUMN "RCRA_HD_OTHER_ID"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_OTHER_ID"."OTHER_ID" IS 'Alternate facility identifier. (OtherHandlerID)';
   COMMENT ON COLUMN "RCRA_HD_OTHER_ID"."RELATIONSHIP_OWNER" IS 'Indicates the agency that owns the Relationship. (RelationshipOwnerName)';
   COMMENT ON COLUMN "RCRA_HD_OTHER_ID"."RELATIONSHIP_TYPE" IS 'Indicates the type of the relationship. (RelationshipTypeCode)';
   COMMENT ON COLUMN "RCRA_HD_OTHER_ID"."SAME_FACILITY" IS 'Indicates whether the alternate Id references the same facility. (SameFacilityIndicator)';
   COMMENT ON COLUMN "RCRA_HD_OTHER_ID"."NOTES" IS 'Notes regarding the alternative facility identifier. (OtherIDSupplementalInformationText)';
   COMMENT ON TABLE "RCRA_HD_OTHER_ID"  IS 'Schema element: OtherIDDataType';
--------------------------------------------------------
--  DDL for Table RCRA_HD_OWNEROP
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_OWNEROP" 
   (	"HD_OWNEROP_ID" VARCHAR2(40 BYTE), 
	"HD_HANDLER_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"OWNER_OP_SEQ" NUMBER(10,0), 
	"OWNER_OP_IND" CHAR(2 BYTE), 
	"OWNER_OP_TYPE" CHAR(1 BYTE), 
	"DATE_BECAME_CURRENT" VARCHAR2(10 BYTE), 
	"DATE_ENDED_CURRENT" VARCHAR2(10 BYTE), 
	"NOTES" VARCHAR2(4000 BYTE), 
	"FIRST_NAME" VARCHAR2(38 BYTE), 
	"MIDDLE_INITIAL" CHAR(1 BYTE), 
	"LAST_NAME" VARCHAR2(38 BYTE), 
	"ORG_NAME" VARCHAR2(80 BYTE), 
	"TITLE" VARCHAR2(80 BYTE), 
	"EMAIL_ADDRESS" VARCHAR2(80 BYTE), 
	"PHONE" VARCHAR2(15 BYTE), 
	"PHONE_EXT" VARCHAR2(6 BYTE), 
	"FAX" VARCHAR2(15 BYTE), 
	"MAIL_ADDR_NUM_TXT" VARCHAR2(12 BYTE), 
	"STREET1" VARCHAR2(50 BYTE), 
	"STREET2" VARCHAR2(50 BYTE), 
	"CITY" VARCHAR2(25 BYTE), 
	"STATE" CHAR(2 BYTE), 
	"COUNTRY" CHAR(2 BYTE), 
	"ZIP" VARCHAR2(14 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."HD_OWNEROP_ID" IS 'Parent: Handler owner and operator information. (_PK)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."HD_HANDLER_ID" IS 'Parent: Handler owner and operator information. (_FK)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."OWNER_OP_SEQ" IS 'Sequential number used to order multiple occurrences of owners and operators. (OwnerOperatorSequenceNumber)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."OWNER_OP_IND" IS 'Code indicating whether the data is associated with a current or previous owner or operator. The system will allow multiple current owners and operators. (OwnerOperatorIndicator)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."OWNER_OP_TYPE" IS 'Code indicating the owner/operator type. (OwnerOperatorTypeCode)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."DATE_BECAME_CURRENT" IS 'Date indicating when the owner/operator became current. (CurrentStartDate)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."DATE_ENDED_CURRENT" IS 'Date indicating when the owner/operator changed to a different owner/operator. (CurrentEndDate)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."NOTES" IS 'Notes for the facility Owner Operator. (OwnerOperatorSupplementalInformationText)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."FIRST_NAME" IS 'Parent: Contact information. (FirstName)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."MIDDLE_INITIAL" IS 'Parent: Contact information. (MiddleInitial)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."LAST_NAME" IS 'Parent: Contact information. (LastName)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."ORG_NAME" IS 'Parent: Contact information. (OrganizationFormalName)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."TITLE" IS 'Title of the contact person or the title of the person who certified the handler information reported to the authorizing agency. (IndividualTitleText)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."EMAIL_ADDRESS" IS 'Email address data (EmailAddressText)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."PHONE" IS 'Telephone Number data (TelephoneNumberText)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."PHONE_EXT" IS 'Telephone number extension (PhoneExtensionText)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."FAX" IS 'Contact fax number (FaxNumberText)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."MAIL_ADDR_NUM_TXT" IS 'Parent: Mailing address information. (MailingAddressNumberText)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."STREET1" IS 'Parent: Mailing address information. (MailingAddressText)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."STREET2" IS 'Parent: Mailing address information. (SupplementalAddressText)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."CITY" IS 'Parent: Mailing address information. (MailingAddressCityName)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."STATE" IS 'Parent: Mailing address information. (MailingAddressStateUSPSCode)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."COUNTRY" IS 'Parent: Mailing address information. (MailingAddressCountryName)';
   COMMENT ON COLUMN "RCRA_HD_OWNEROP"."ZIP" IS 'Parent: Mailing address information. (MailingAddressZIPCode)';
   COMMENT ON TABLE "RCRA_HD_OWNEROP"  IS 'Schema element: FacilityOwnerOperatorDataType';
--------------------------------------------------------
--  DDL for Table RCRA_HD_SEC_MATERIAL_ACTIVITY
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_SEC_MATERIAL_ACTIVITY" 
   (	"HD_SEC_MATERIAL_ACTIVITY_ID" VARCHAR2(40 BYTE), 
	"HD_HANDLER_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"HSM_SEQ_NUM" VARCHAR2(4 BYTE), 
	"FAC_CODE_OWNER_NAME" CHAR(2 BYTE), 
	"FAC_TYPE_CODE" CHAR(2 BYTE), 
	"ESTIMATED_SHORT_TONS_QNTY" NUMBER(10,0), 
	"ACTL_SHORT_TONS_QNTY" NUMBER(10,0), 
	"LAND_BASED_UNIT_IND" CHAR(2 BYTE), 
	"LAND_BASED_UNIT_IND_TEXT" VARCHAR2(255 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_SEC_MATERIAL_ACTIVITY"."HD_SEC_MATERIAL_ACTIVITY_ID" IS 'Parent: Hazardous Secondary Material activity of the Handler (_PK)';
   COMMENT ON COLUMN "RCRA_HD_SEC_MATERIAL_ACTIVITY"."HD_HANDLER_ID" IS 'Parent: Hazardous Secondary Material activity of the Handler (_FK)';
   COMMENT ON COLUMN "RCRA_HD_SEC_MATERIAL_ACTIVITY"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_SEC_MATERIAL_ACTIVITY"."HSM_SEQ_NUM" IS 'Unique number identifying the HSM Activity for the Handler (HSMSequenceNumber)';
   COMMENT ON COLUMN "RCRA_HD_SEC_MATERIAL_ACTIVITY"."FAC_CODE_OWNER_NAME" IS 'Owner of the Facility Code. Shoule be HQ or the state code (i.e. KS) (FacilityCodeOwnerName)';
   COMMENT ON COLUMN "RCRA_HD_SEC_MATERIAL_ACTIVITY"."FAC_TYPE_CODE" IS 'Type of facility generating Hazardous Secondary Material (FacilityTypeCode)';
   COMMENT ON COLUMN "RCRA_HD_SEC_MATERIAL_ACTIVITY"."ESTIMATED_SHORT_TONS_QNTY" IS 'The estimated amount of HSM generated by the Handler (EstimatedShortTonsQuantity)';
   COMMENT ON COLUMN "RCRA_HD_SEC_MATERIAL_ACTIVITY"."ACTL_SHORT_TONS_QNTY" IS 'The actual amount of HSM generated by the Handler (ActualShortTonsQuantity)';
   COMMENT ON COLUMN "RCRA_HD_SEC_MATERIAL_ACTIVITY"."LAND_BASED_UNIT_IND" IS 'Code to indicate if the HSM is being managed in a Land Based Unit (LandBasedUnitIndicator)';
   COMMENT ON COLUMN "RCRA_HD_SEC_MATERIAL_ACTIVITY"."LAND_BASED_UNIT_IND_TEXT" IS 'Descriptive text describing the code to indicate if the HSM is being managed in a Land Based Unit (LandBasedUnitIndicatorText)';
   COMMENT ON TABLE "RCRA_HD_SEC_MATERIAL_ACTIVITY"  IS 'Schema element: HazardousSecondaryMaterialActivityDataType';
--------------------------------------------------------
--  DDL for Table RCRA_HD_SEC_WASTE_CODE
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_SEC_WASTE_CODE" 
   (	"HD_SEC_WASTE_CODE_ID" VARCHAR2(40 BYTE), 
	"HD_SEC_MATERIAL_ACTIVITY_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"WASTE_CODE_OWNER" CHAR(2 BYTE), 
	"WASTE_CODE_TYPE" VARCHAR2(6 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_SEC_WASTE_CODE"."HD_SEC_WASTE_CODE_ID" IS 'Parent: Hazardous waste codes describing the handler''s hazardous waste streams. (_PK)';
   COMMENT ON COLUMN "RCRA_HD_SEC_WASTE_CODE"."HD_SEC_MATERIAL_ACTIVITY_ID" IS 'Parent: Hazardous waste codes describing the handler''s hazardous waste streams. (_FK)';
   COMMENT ON COLUMN "RCRA_HD_SEC_WASTE_CODE"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_SEC_WASTE_CODE"."WASTE_CODE_OWNER" IS 'Indicates the agency that owns the data record. (WasteCodeOwnerName)';
   COMMENT ON COLUMN "RCRA_HD_SEC_WASTE_CODE"."WASTE_CODE_TYPE" IS 'Code used to describe hazardous waste. (WasteCode)';
   COMMENT ON TABLE "RCRA_HD_SEC_WASTE_CODE"  IS 'Schema element: SecondaryHandlerWasteCodeDataType';
--------------------------------------------------------
--  DDL for Table RCRA_HD_STATE_ACTIVITY
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_STATE_ACTIVITY" 
   (	"HD_STATE_ACTIVITY_ID" VARCHAR2(40 BYTE), 
	"HD_HANDLER_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"STATE_ACTIVITY_OWNER" CHAR(2 BYTE), 
	"STATE_ACTIVITY_TYPE" VARCHAR2(5 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_STATE_ACTIVITY"."HD_STATE_ACTIVITY_ID" IS 'Parent: State waste activity of the handler. (_PK)';
   COMMENT ON COLUMN "RCRA_HD_STATE_ACTIVITY"."HD_HANDLER_ID" IS 'Parent: State waste activity of the handler. (_FK)';
   COMMENT ON COLUMN "RCRA_HD_STATE_ACTIVITY"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_STATE_ACTIVITY"."STATE_ACTIVITY_OWNER" IS 'Indicates the agency that defines the state activity type. (StateActivityOwnerName)';
   COMMENT ON COLUMN "RCRA_HD_STATE_ACTIVITY"."STATE_ACTIVITY_TYPE" IS 'Code indicating the type of state activity. (StateActivityTypeCode)';
   COMMENT ON TABLE "RCRA_HD_STATE_ACTIVITY"  IS 'Schema element: StateActivityDataType';
--------------------------------------------------------
--  DDL for Table RCRA_HD_SUBM
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_SUBM" 
   (	"HD_SUBM_ID" VARCHAR2(40 BYTE)
   ) ;

   COMMENT ON TABLE "RCRA_HD_SUBM"  IS 'Schema element: HazardousWasteHandlerSubmissionDataType';
--------------------------------------------------------
--  DDL for Table RCRA_HD_UNIVERSAL_WASTE
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_UNIVERSAL_WASTE" 
   (	"HD_UNIVERSAL_WASTE_ID" VARCHAR2(40 BYTE), 
	"HD_HANDLER_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"UNIVERSAL_WASTE_OWNER" CHAR(2 BYTE), 
	"UNIVERSAL_WASTE_TYPE" CHAR(1 BYTE), 
	"ACCUMULATED" CHAR(1 BYTE), 
	"GENERATED" CHAR(1 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_UNIVERSAL_WASTE"."HD_UNIVERSAL_WASTE_ID" IS 'Parent: Information about universal waste generated by the handler. (_PK)';
   COMMENT ON COLUMN "RCRA_HD_UNIVERSAL_WASTE"."HD_HANDLER_ID" IS 'Parent: Information about universal waste generated by the handler. (_FK)';
   COMMENT ON COLUMN "RCRA_HD_UNIVERSAL_WASTE"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_UNIVERSAL_WASTE"."UNIVERSAL_WASTE_OWNER" IS 'Indicates the agency that defines the universal waste type. (UniversalWasteOwnerName)';
   COMMENT ON COLUMN "RCRA_HD_UNIVERSAL_WASTE"."UNIVERSAL_WASTE_TYPE" IS 'Code indicating the type of universal waste. (UniversalWasteTypeCode)';
   COMMENT ON COLUMN "RCRA_HD_UNIVERSAL_WASTE"."ACCUMULATED" IS 'Code indicating that the handler is engaged in accumulating waste on site. (AccumulatedWasteCode)';
   COMMENT ON COLUMN "RCRA_HD_UNIVERSAL_WASTE"."GENERATED" IS 'Code indicating that the handler is engaged in generating waste on site. (GeneratedHandlerCode)';
   COMMENT ON TABLE "RCRA_HD_UNIVERSAL_WASTE"  IS 'Schema element: UniversalWasteActivityDataType';
--------------------------------------------------------
--  DDL for Table RCRA_HD_WASTE_CODE
--------------------------------------------------------

  CREATE TABLE "RCRA_HD_WASTE_CODE" 
   (	"HD_WASTE_CODE_ID" VARCHAR2(40 BYTE), 
	"HD_HANDLER_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"WASTE_CODE_OWNER" CHAR(2 BYTE), 
	"WASTE_CODE_TYPE" VARCHAR2(6 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_HD_WASTE_CODE"."HD_WASTE_CODE_ID" IS 'Parent: Hazardous waste codes describing the handler''s hazardous waste streams. (_PK)';
   COMMENT ON COLUMN "RCRA_HD_WASTE_CODE"."HD_HANDLER_ID" IS 'Parent: Hazardous waste codes describing the handler''s hazardous waste streams. (_FK)';
   COMMENT ON COLUMN "RCRA_HD_WASTE_CODE"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_HD_WASTE_CODE"."WASTE_CODE_OWNER" IS 'Indicates the agency that owns the data record. (WasteCodeOwnerName)';
   COMMENT ON COLUMN "RCRA_HD_WASTE_CODE"."WASTE_CODE_TYPE" IS 'Code used to describe hazardous waste. (WasteCode)';
   COMMENT ON TABLE "RCRA_HD_WASTE_CODE"  IS 'Schema element: HandlerWasteCodeDataType';
--------------------------------------------------------
--  DDL for Table RCRA_PRM_EVENT
--------------------------------------------------------

  CREATE TABLE "RCRA_PRM_EVENT" 
   (	"PRM_EVENT_ID" VARCHAR2(40 BYTE), 
	"PRM_SERIES_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"ACT_LOC_CODE" CHAR(2 BYTE), 
	"PERMIT_EVENT_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"PERMIT_EVENT_CODE" VARCHAR2(7 BYTE), 
	"EVENT_AGN_CODE" CHAR(1 BYTE), 
	"EVENT_SEQ_NUM" NUMBER(10,0), 
	"ACTL_DATE" DATE, 
	"ORIGINAL_SCHEDULE_DATE" DATE, 
	"NEW_SCHEDULE_DATE" DATE, 
	"RESP_PERSON_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"RESP_PERSON_ID" VARCHAR2(5 BYTE), 
	"EVENT_SUBORG_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"EVENT_SUBORG_CODE" VARCHAR2(10 BYTE), 
	"SUPP_INFO_TXT" VARCHAR2(2000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_PRM_EVENT"."PRM_EVENT_ID" IS 'Parent: Permit event Data (_PK)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT"."PRM_SERIES_ID" IS 'Parent: Permit event Data (_FK)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT"."ACT_LOC_CODE" IS 'Indicates the location of the agency regulating the handler. (ActivityLocationCode)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT"."PERMIT_EVENT_DATA_OWNER_CODE" IS 'Indicates the agency that defines the event. (PermitEventDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT"."PERMIT_EVENT_CODE" IS 'Code used to indicate a specific permitting/closure program event and status that has actually occurred or is scheduled to occur. (PermitEventCode)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT"."EVENT_AGN_CODE" IS 'Agency responsible for the event. (EventAgencyCode)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT"."EVENT_SEQ_NUM" IS 'System-generated value used to uniquely identify multiple occurrences of a corrective action event. (EventSequenceNumber)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT"."ACTL_DATE" IS 'Date on which actual completion of an event occurs. (ActualDate)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT"."ORIGINAL_SCHEDULE_DATE" IS 'The original scheduled completion date for an event. This date cannot be changed once entered. Slippage of the scheduled completion date is recorded in the NewScheduleDate Data Element. (OriginalScheduleDate)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT"."NEW_SCHEDULE_DATE" IS 'Revised scheduled completion date of the event. This date is used in conjunction with the Original Scheduled Event Date to allow tracking scheduled date slippage. As the scheduled date changes, this field is updated with the new date and the Original Scheduled Event Date is not changed. (NewScheduleDate)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT"."RESP_PERSON_DATA_OWNER_CODE" IS 'Indicates the agency that defines the person identifier. (ResponsiblePersonDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT"."RESP_PERSON_ID" IS 'Code indicating the person within the agency responsible for conducting the evaluation or who is the responsible Authority. (ResponsiblePersonID)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT"."EVENT_SUBORG_DATA_OWNER_CODE" IS 'Event responsible suborganization owner. (EventSuborganizationDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT"."EVENT_SUBORG_CODE" IS 'Event responsible suborganization. (EventSuborganizationCode)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT"."SUPP_INFO_TXT" IS 'Notes providing more information. (SupplementalInformationText)';
   COMMENT ON TABLE "RCRA_PRM_EVENT"  IS 'Schema element: PermitEventDataType';
--------------------------------------------------------
--  DDL for Table RCRA_PRM_EVENT_COMMITMENT
--------------------------------------------------------

  CREATE TABLE "RCRA_PRM_EVENT_COMMITMENT" 
   (	"PRM_EVENT_COMMITMENT_ID" VARCHAR2(40 BYTE), 
	"PRM_EVENT_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"COMMIT_LEAD" CHAR(2 BYTE), 
	"COMMIT_SEQ_NUM" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "RCRA_PRM_EVENT_COMMITMENT"."PRM_EVENT_COMMITMENT_ID" IS 'Parent: Linking Data for Commitment/Initiative and Corrective Action or Permitting Events. (_PK)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT_COMMITMENT"."PRM_EVENT_ID" IS 'Parent: Linking Data for Commitment/Initiative and Corrective Action or Permitting Events. (_FK)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT_COMMITMENT"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT_COMMITMENT"."COMMIT_LEAD" IS 'Parent: Linking Data for Commitment/Initiative and Corrective Action or Permitting Events. (CommitmentLead)';
   COMMENT ON COLUMN "RCRA_PRM_EVENT_COMMITMENT"."COMMIT_SEQ_NUM" IS 'Parent: Linking Data for Commitment/Initiative and Corrective Action or Permitting Events. (CommitmentSequenceNumber)';
   COMMENT ON TABLE "RCRA_PRM_EVENT_COMMITMENT"  IS 'Schema element: PermitEventCommitmentDataType';
--------------------------------------------------------
--  DDL for Table RCRA_PRM_FAC_SUBM
--------------------------------------------------------

  CREATE TABLE "RCRA_PRM_FAC_SUBM" 
   (	"PRM_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"PRM_SUBM_ID" VARCHAR2(40 BYTE), 
	"HANDLER_ID" VARCHAR2(12 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_PRM_FAC_SUBM"."PRM_FAC_SUBM_ID" IS 'Parent: This is the root element for this flow XML Schema. (_PK)';
   COMMENT ON COLUMN "RCRA_PRM_FAC_SUBM"."PRM_SUBM_ID" IS 'Parent: This is the root element for this flow XML Schema. (_FK)';
   COMMENT ON COLUMN "RCRA_PRM_FAC_SUBM"."HANDLER_ID" IS 'Code that uniquely identifies the handler. (HandlerID)';
   COMMENT ON TABLE "RCRA_PRM_FAC_SUBM"  IS 'Schema element: PermitFacilitySubmissionDataType';
--------------------------------------------------------
--  DDL for Table RCRA_PRM_RELATED_EVENT
--------------------------------------------------------

  CREATE TABLE "RCRA_PRM_RELATED_EVENT" 
   (	"PRM_RELATED_EVENT_ID" VARCHAR2(40 BYTE), 
	"PRM_UNIT_DETAIL_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"ACT_LOC_CODE" CHAR(2 BYTE), 
	"PERMIT_SERIES_SEQ_NUM" NUMBER(10,0), 
	"PERMIT_EVENT_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"PERMIT_EVENT_CODE" VARCHAR2(7 BYTE), 
	"EVENT_AGN_CODE" CHAR(1 BYTE), 
	"EVENT_SEQ_NUM" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "RCRA_PRM_RELATED_EVENT"."PRM_RELATED_EVENT_ID" IS 'Parent: Linking Data for Permitted Units and Permitting Events (_PK)';
   COMMENT ON COLUMN "RCRA_PRM_RELATED_EVENT"."PRM_UNIT_DETAIL_ID" IS 'Parent: Linking Data for Permitted Units and Permitting Events (_FK)';
   COMMENT ON COLUMN "RCRA_PRM_RELATED_EVENT"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_PRM_RELATED_EVENT"."ACT_LOC_CODE" IS 'Indicates the location of the agency regulating the handler. (ActivityLocationCode)';
   COMMENT ON COLUMN "RCRA_PRM_RELATED_EVENT"."PERMIT_SERIES_SEQ_NUM" IS 'System-generated value used to uniquely identify a permit series. (PermitSeriesSequenceNumber)';
   COMMENT ON COLUMN "RCRA_PRM_RELATED_EVENT"."PERMIT_EVENT_DATA_OWNER_CODE" IS 'Indicates the agency that defines the event. (PermitEventDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_PRM_RELATED_EVENT"."PERMIT_EVENT_CODE" IS 'Code used to indicate a specific permitting/closure program event and status that has actually occurred or is scheduled to occur. (PermitEventCode)';
   COMMENT ON COLUMN "RCRA_PRM_RELATED_EVENT"."EVENT_AGN_CODE" IS 'Agency responsible for the event. (EventAgencyCode)';
   COMMENT ON COLUMN "RCRA_PRM_RELATED_EVENT"."EVENT_SEQ_NUM" IS 'System-generated value used to uniquely identify multiple occurrences of a corrective action event. (EventSequenceNumber)';
   COMMENT ON TABLE "RCRA_PRM_RELATED_EVENT"  IS 'Schema element: PermitRelatedEventDataType';
--------------------------------------------------------
--  DDL for Table RCRA_PRM_SERIES
--------------------------------------------------------

  CREATE TABLE "RCRA_PRM_SERIES" 
   (	"PRM_SERIES_ID" VARCHAR2(40 BYTE), 
	"PRM_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"PERMIT_SERIES_SEQ_NUM" NUMBER(10,0), 
	"PERMIT_SERIES_NAME" VARCHAR2(40 BYTE), 
	"RESP_PERSON_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"RESP_PERSON_ID" VARCHAR2(5 BYTE), 
	"SUPP_INFO_TXT" VARCHAR2(2000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_PRM_SERIES"."PRM_SERIES_ID" IS 'Parent: Permit series Data (_PK)';
   COMMENT ON COLUMN "RCRA_PRM_SERIES"."PRM_FAC_SUBM_ID" IS 'Parent: Permit series Data (_FK)';
   COMMENT ON COLUMN "RCRA_PRM_SERIES"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_PRM_SERIES"."PERMIT_SERIES_SEQ_NUM" IS 'System-generated value used to uniquely identify a permit series. (PermitSeriesSequenceNumber)';
   COMMENT ON COLUMN "RCRA_PRM_SERIES"."PERMIT_SERIES_NAME" IS 'Name or number assigned by the implementing agency. (PermitSeriesName)';
   COMMENT ON COLUMN "RCRA_PRM_SERIES"."RESP_PERSON_DATA_OWNER_CODE" IS 'Indicates the agency that defines the person identifier. (ResponsiblePersonDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_PRM_SERIES"."RESP_PERSON_ID" IS 'Code indicating the person within the agency responsible for conducting the evaluation or who is the responsible Authority. (ResponsiblePersonID)';
   COMMENT ON COLUMN "RCRA_PRM_SERIES"."SUPP_INFO_TXT" IS 'Notes providing more information. (SupplementalInformationText)';
   COMMENT ON TABLE "RCRA_PRM_SERIES"  IS 'Schema element: PermitSeriesDataType';
--------------------------------------------------------
--  DDL for Table RCRA_PRM_SUBM
--------------------------------------------------------

  CREATE TABLE "RCRA_PRM_SUBM" 
   (	"PRM_SUBM_ID" VARCHAR2(40 BYTE)
   ) ;

   COMMENT ON TABLE "RCRA_PRM_SUBM"  IS 'Schema element: HazardousWastePermitDataType';
--------------------------------------------------------
--  DDL for Table RCRA_PRM_UNIT
--------------------------------------------------------

  CREATE TABLE "RCRA_PRM_UNIT" 
   (	"PRM_UNIT_ID" VARCHAR2(40 BYTE), 
	"PRM_FAC_SUBM_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"PERMIT_UNIT_SEQ_NUM" NUMBER(10,0), 
	"PERMIT_UNIT_NAME" VARCHAR2(40 BYTE), 
	"SUPP_INFO_TXT" VARCHAR2(2000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_PRM_UNIT"."PRM_UNIT_ID" IS 'Parent: Permit Unit Data (_PK)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT"."PRM_FAC_SUBM_ID" IS 'Parent: Permit Unit Data (_FK)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT"."PERMIT_UNIT_SEQ_NUM" IS 'System-generated value used to uniquely identify a process unit. (PermitUnitSequenceNumber)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT"."PERMIT_UNIT_NAME" IS 'Name or number assigned by the implementing agency to identify a process unit group. (PermitUnitName)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT"."SUPP_INFO_TXT" IS 'Notes providing more information. (SupplementalInformationText)';
   COMMENT ON TABLE "RCRA_PRM_UNIT"  IS 'Schema element: PermitUnitDataType';
--------------------------------------------------------
--  DDL for Table RCRA_PRM_UNIT_DETAIL
--------------------------------------------------------

  CREATE TABLE "RCRA_PRM_UNIT_DETAIL" 
   (	"PRM_UNIT_DETAIL_ID" VARCHAR2(40 BYTE), 
	"PRM_UNIT_ID" VARCHAR2(40 BYTE), 
	"TRANS_CODE" CHAR(1 BYTE), 
	"PERMIT_UNIT_DETAIL_SEQ_NUM" NUMBER(10,0), 
	"PROC_UNIT_DATA_OWNER_CODE" CHAR(2 BYTE), 
	"PROC_UNIT_CODE" VARCHAR2(3 BYTE), 
	"PERMIT_STAT_EFFC_DATE" DATE, 
	"PERMIT_UNIT_CAP_QNTY" NUMBER(14,3), 
	"CAP_TYPE_CODE" CHAR(1 BYTE), 
	"COMMER_STAT_CODE" CHAR(1 BYTE), 
	"LEGAL_OPER_STAT_DATA_OWNER_CDE" CHAR(2 BYTE), 
	"LEGAL_OPER_STAT_CODE" VARCHAR2(4 BYTE), 
	"MEASUREMENT_UNIT_DATA_OWNR_CDE" CHAR(2 BYTE), 
	"MEASUREMENT_UNIT_CODE" CHAR(1 BYTE), 
	"NUM_OF_UNITS_COUNT" NUMBER(10,0), 
	"STANDARD_PERMIT_IND" CHAR(1 BYTE), 
	"SUPP_INFO_TXT" VARCHAR2(2000 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."PRM_UNIT_DETAIL_ID" IS 'Parent: Permit Unit Detail Data (_PK)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."PRM_UNIT_ID" IS 'Parent: Permit Unit Detail Data (_FK)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."TRANS_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."PERMIT_UNIT_DETAIL_SEQ_NUM" IS 'System-generated value used to uniquely identify a process unit detail. (PermitUnitDetailSequenceNumber)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."PROC_UNIT_DATA_OWNER_CODE" IS 'Indicates the agency that defines the process code. (ProcessUnitDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."PROC_UNIT_CODE" IS 'Code specifying the unit group''s current waste treatment, storage, or disposal process. (ProcessUnitCode)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."PERMIT_STAT_EFFC_DATE" IS 'Date specifying when the other information in the process detail data record (i.e., process, capacity, and operating and legal status) became effective. (PermitStatusEffectiveDate)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."PERMIT_UNIT_CAP_QNTY" IS 'Permitted capacity of the unit (PermitUnitCapacityQuantity)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."CAP_TYPE_CODE" IS 'Code indicating the type of capacity. (CapacityTypeCode)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."COMMER_STAT_CODE" IS 'Code indicating that the facility, whether public or private, accepts hazardous waste for the process unit group from a third party. (CommercialStatusCode)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."LEGAL_OPER_STAT_DATA_OWNER_CDE" IS 'Indicates the agency that defines the legal/operating status code. (LegalOperatingStatusDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."LEGAL_OPER_STAT_CODE" IS 'Code used to indicate programmatic (operating and legal status) conditions that reflect RCRA program activity requirements of a unit. (LegalOperatingStatusCode)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."MEASUREMENT_UNIT_DATA_OWNR_CDE" IS 'Indicates the agency that defines the unit of measure. (MeasurementUnitDataOwnerCode)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."MEASUREMENT_UNIT_CODE" IS 'Indicates the unit of measure. (MeasurementUnitCode)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."NUM_OF_UNITS_COUNT" IS 'Total number of units of the same process grouped together to form a single process unit group. (NumberOfUnitsCount)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."STANDARD_PERMIT_IND" IS 'Indicates whether or not the permit is a standardized permit. (StandardPermitIndicator)';
   COMMENT ON COLUMN "RCRA_PRM_UNIT_DETAIL"."SUPP_INFO_TXT" IS 'Notes providing more information. (SupplementalInformationText)';
   COMMENT ON TABLE "RCRA_PRM_UNIT_DETAIL"  IS 'Schema element: PermitUnitDetailDataType';
--------------------------------------------------------
--  DDL for Table RCRA_PRM_WASTE_CODE
--------------------------------------------------------

  CREATE TABLE "RCRA_PRM_WASTE_CODE" 
   (	"PRM_WASTE_CODE_ID" VARCHAR2(40 BYTE), 
	"PRM_UNIT_DETAIL_ID" VARCHAR2(40 BYTE), 
	"TRANSACTION_CODE" CHAR(1 BYTE), 
	"WASTE_CODE_OWNER" CHAR(2 BYTE), 
	"WASTE_CODE_TYPE" VARCHAR2(6 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_PRM_WASTE_CODE"."PRM_WASTE_CODE_ID" IS 'Parent: Hazardous waste codes describing the handler''s hazardous waste streams. (_PK)';
   COMMENT ON COLUMN "RCRA_PRM_WASTE_CODE"."PRM_UNIT_DETAIL_ID" IS 'Parent: Hazardous waste codes describing the handler''s hazardous waste streams. (_FK)';
   COMMENT ON COLUMN "RCRA_PRM_WASTE_CODE"."TRANSACTION_CODE" IS 'Transaction code used to define the add, update, or delete. (TransactionCode)';
   COMMENT ON COLUMN "RCRA_PRM_WASTE_CODE"."WASTE_CODE_OWNER" IS 'Indicates the agency that owns the data record. (WasteCodeOwnerName)';
   COMMENT ON COLUMN "RCRA_PRM_WASTE_CODE"."WASTE_CODE_TYPE" IS 'Code used to describe hazardous waste. (WasteCode)';
   COMMENT ON TABLE "RCRA_PRM_WASTE_CODE"  IS 'Schema element: PermitHandlerWasteCodeDataType';
--------------------------------------------------------
--  DDL for Table RCRA_RU_REPORT_UNIV
--------------------------------------------------------

  CREATE TABLE "RCRA_RU_REPORT_UNIV" 
   (	"RU_REPORT_UNIV_ID" VARCHAR2(40 BYTE), 
	"RU_REPORT_UNIV_SUBM_ID" VARCHAR2(40 BYTE), 
	"HANDLER_ID" VARCHAR2(12 BYTE), 
	"ACTIVITY_LOCATION" CHAR(2 BYTE), 
	"SOURCE_TYPE" CHAR(1 BYTE), 
	"SEQ_NUMBER" NUMBER(10,0), 
	"RECEIVE_DATE" TIMESTAMP (6), 
	"HANDLER_NAME" VARCHAR2(80 BYTE), 
	"NON_NOTIFIER_IND" CHAR(1 BYTE), 
	"ACCESSIBILITY" CHAR(1 BYTE), 
	"REPORT_CYCLE" NUMBER(10,0), 
	"REGION" CHAR(2 BYTE), 
	"STATE" CHAR(2 BYTE), 
	"EXTRACT_FLAG" CHAR(1 BYTE), 
	"ACTIVE_SITE" VARCHAR2(5 BYTE), 
	"COUNTY_CODE" VARCHAR2(5 BYTE), 
	"COUNTY_NAME" VARCHAR2(80 BYTE), 
	"CONTACT_NAME" VARCHAR2(80 BYTE), 
	"CONTACT_PHONE" VARCHAR2(22 BYTE), 
	"CONTACT_FAX" VARCHAR2(15 BYTE), 
	"CONTACT_EMAIL" VARCHAR2(80 BYTE), 
	"CONTACT_TITLE" VARCHAR2(45 BYTE), 
	"OWNER_NAME" VARCHAR2(80 BYTE), 
	"OWNER_TYPE" CHAR(1 BYTE), 
	"OWNER_SEQ_NUM" NUMBER(10,0), 
	"OPER_NAME" VARCHAR2(80 BYTE), 
	"OPER_TYPE" CHAR(1 BYTE), 
	"OPER_SEQ_NUM" NUMBER(10,0), 
	"NAIC1_CODE" VARCHAR2(6 BYTE), 
	"NAIC2_CODE" VARCHAR2(6 BYTE), 
	"NAIC3_CODE" VARCHAR2(6 BYTE), 
	"NAIC4_CODE" VARCHAR2(6 BYTE), 
	"IN_HANDLER_UNIVERSE" CHAR(1 BYTE), 
	"IN_A_UNIVERSE" CHAR(1 BYTE), 
	"FED_WASTE_GENERATOR_OWNER" CHAR(2 BYTE), 
	"FED_WASTE_GENERATOR" CHAR(1 BYTE), 
	"STATE_WASTE_GENERATOR_OWNER" CHAR(2 BYTE), 
	"STATE_WASTE_GENERATOR" CHAR(1 BYTE), 
	"GEN_STATUS" VARCHAR2(3 BYTE), 
	"UNIV_WASTE" CHAR(1 BYTE), 
	"LAND_TYPE" CHAR(1 BYTE), 
	"STATE_DISTRICT_OWNER" CHAR(2 BYTE), 
	"STATE_DISTRICT" VARCHAR2(10 BYTE), 
	"SHORT_TERM_GEN_IND" CHAR(1 BYTE), 
	"IMPORTER_ACTIVITY" CHAR(1 BYTE), 
	"MIXED_WASTE_GENERATOR" CHAR(1 BYTE), 
	"TRANSPORTER_ACTIVITY" CHAR(1 BYTE), 
	"TRANSFER_FACILITY_IND" CHAR(1 BYTE), 
	"RECYCLER_ACTIVITY" CHAR(1 BYTE), 
	"ONSITE_BURNER_EXEMPTION" CHAR(1 BYTE), 
	"FURNACE_EXEMPTION" CHAR(1 BYTE), 
	"UNDERGROUND_INJECTION_ACTIVITY" CHAR(1 BYTE), 
	"UNIVERSAL_WASTE_DEST_FACILITY" CHAR(1 BYTE), 
	"OFFSITE_WASTE_RECEIPT" CHAR(1 BYTE), 
	"USED_OIL" VARCHAR2(7 BYTE), 
	"FEDERAL_UNIVERSAL_WASTE" CHAR(1 BYTE), 
	"AS_FEDERAL_REGULATED_TSDF" VARCHAR2(6 BYTE), 
	"AS_CONVERTED_TSDF" VARCHAR2(6 BYTE), 
	"AS_STATE_REGULATED_TSDF" VARCHAR2(9 BYTE), 
	"FEDERAL_IND" VARCHAR2(3 BYTE), 
	"HSM" CHAR(2 BYTE), 
	"SUBPART_K" VARCHAR2(4 BYTE), 
	"COMMERCIAL_TSD" CHAR(1 BYTE), 
	"TSD" VARCHAR2(5 BYTE), 
	"GPRA_PERMIT" CHAR(1 BYTE), 
	"GPRA_RENEWAL" CHAR(1 BYTE), 
	"PERMIT_RENEWAL_WRKLD" VARCHAR2(6 BYTE), 
	"PERM_WRKLD" VARCHAR2(6 BYTE), 
	"PERM_PROG" VARCHAR2(6 BYTE), 
	"PC_WRKLD" VARCHAR2(6 BYTE), 
	"CLOS_WRKLD" VARCHAR2(6 BYTE), 
	"GPRACA" CHAR(1 BYTE), 
	"CA_WRKLD" CHAR(1 BYTE), 
	"SUBJ_CA" CHAR(1 BYTE), 
	"SUBJ_CA_NON_TSD" CHAR(1 BYTE), 
	"SUBJ_CA_TSD_3004" CHAR(1 BYTE), 
	"SUBJ_CA_DISCRETION" CHAR(1 BYTE), 
	"NCAPS" CHAR(1 BYTE), 
	"EC_IND" CHAR(1 BYTE), 
	"IC_IND" CHAR(1 BYTE), 
	"CA_725_IND" CHAR(1 BYTE), 
	"CA_750_IND" CHAR(1 BYTE), 
	"OPERATING_TSDF" VARCHAR2(6 BYTE), 
	"FULL_ENFORCEMENT" VARCHAR2(6 BYTE), 
	"SNC" CHAR(1 BYTE), 
	"BOY_SNC" CHAR(1 BYTE), 
	"BOY_STATE_UNADDRESSED_SNC" CHAR(1 BYTE), 
	"STATE_UNADDRESSED" CHAR(1 BYTE), 
	"STATE_ADDRESSED" CHAR(1 BYTE), 
	"BOY_STATE_ADDRESSED" CHAR(1 BYTE), 
	"STATE_SNC_WITH_COMP_SCHED" CHAR(1 BYTE), 
	"BOY_STATE_SNC_WITH_COMP_SCHED" CHAR(1 BYTE), 
	"EPA_UNADDRESSED" CHAR(1 BYTE), 
	"BOY_EPA_UNADDRESSED" CHAR(1 BYTE), 
	"EPA_ADDRESSED" CHAR(1 BYTE), 
	"BOY_EPA_ADDRESSED" CHAR(1 BYTE), 
	"EPA_SNC_WITH_COMP_SCHED" CHAR(1 BYTE), 
	"BOY_EPA_SNC_WITH_COMP_SCHED" CHAR(1 BYTE), 
	"FA_REQUIRED" VARCHAR2(5 BYTE), 
	"HHANDLER_LAST_CHANGE_DATE" DATE,
	"PUBLIC_NOTES" VARCHAR2(4000 BYTE), 
	"NOTES" VARCHAR2(4000 BYTE), 
	"RECOGNIZED_TRADER_IMPORTER_IND" CHAR(1 BYTE), 
	"RECOGNIZED_TRADER_EXPORTER_IND" CHAR(1 BYTE), 
	"SLAB_IMPORTER_IND" CHAR(1 BYTE), 
	"SLAB_EXPORTER_IND" CHAR(1 BYTE), 
	"RECYCLER_NON_STORAGE_IND" CHAR(1 BYTE), 
	"MANIFEST_BROKER_IND" CHAR(1 BYTE), 
	"LOCATION_STREET_NUMBER" VARCHAR2(12 BYTE), 
	"LOCATION_STREET1" VARCHAR2(50 BYTE), 
	"LOCATION_STREET2" VARCHAR2(50 BYTE), 
	"LOCATION_CITY" VARCHAR2(25 BYTE), 
	"LOCATION_STATE" CHAR(2 BYTE), 
	"LOCATION_ZIP" VARCHAR2(14 BYTE), 
	"LOCATION_COUNTRY" CHAR(2 BYTE), 
	"MAIL_STREET_NUMBER" VARCHAR2(12 BYTE), 
	"MAIL_STREET1" VARCHAR2(50 BYTE), 
	"MAIL_STREET2" VARCHAR2(50 BYTE), 
	"MAIL_CITY" VARCHAR2(25 BYTE), 
	"MAIL_STATE" CHAR(2 BYTE), 
	"MAIL_COUNTRY" CHAR(2 BYTE), 
	"MAIL_ZIP" VARCHAR2(14 BYTE), 
	"CONTACT_STREET_NUMBER" VARCHAR2(12 BYTE), 
	"CONTACT_STREET1" VARCHAR2(50 BYTE), 
	"CONTACT_STREET2" VARCHAR2(50 BYTE), 
	"CONTACT_CITY" VARCHAR2(25 BYTE), 
	"CONTACT_STATE" CHAR(2 BYTE), 
	"CONTACT_COUNTRY" CHAR(2 BYTE), 
	"CONTACT_ZIP" VARCHAR2(14 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."RU_REPORT_UNIV_ID" IS 'Parent: All information about the ReportUniv. (_PK)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."RU_REPORT_UNIV_SUBM_ID" IS 'Parent: All information about the ReportUniv. (_FK)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."HANDLER_ID" IS 'Handler ID (HandlerIdCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."ACTIVITY_LOCATION" IS 'Indicates the location of the agency regulating the handler. (ActivityLocationCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."SOURCE_TYPE" IS 'Code indicating the source of information for the associated data (activity, wastes, etc.). (SourceTypeCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."SEQ_NUMBER" IS 'Sequence number for each source record about a handler. (SequenceNumber)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."RECEIVE_DATE" IS 'Date that the form (indicated by the associated Source) was received from the handler by the appropriate authority. (ReceiveDate)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."HANDLER_NAME" IS 'Name of the Handler (HandlerName)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."NON_NOTIFIER_IND" IS 'Flag indicating that the handler has been identified through a source other than Notification and is suspected of conducting RCRA-regulated activities without proper authority. (NonNotifierIndicator)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."ACCESSIBILITY" IS 'Reason why the handler is not accessible for normal processing (Bankrupt Indicator). (Accessibility)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."REPORT_CYCLE" IS 'Report cycle (ReportCycle)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."REGION" IS 'Region (Region)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."STATE" IS 'State (State)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."EXTRACT_FLAG" IS 'Extract flag (ExtractFlag)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."ACTIVE_SITE" IS 'Active site (ActiveSite)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."COUNTY_CODE" IS 'The Federal Information Processing Standard (FIPS) code for the county in which the facility is located (Ref: FIPS Publication, 6-3, "Counties and County Equivalents of the States of the United States"). (CountyCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."COUNTY_NAME" IS 'Descriptive text describing the County Name(Data publishing only). (CountyName)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CONTACT_NAME" IS 'Contact name (first + last) (ContactNameCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CONTACT_PHONE" IS 'Contact phone (ContactPhoneCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CONTACT_FAX" IS 'Contact fax (ContactFaxCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CONTACT_EMAIL" IS 'Contact email (ContactEmailCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CONTACT_TITLE" IS 'Contact title (ContactTitleCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."OWNER_NAME" IS 'Owner name (OwnerNameCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."OWNER_TYPE" IS 'Owner type (OwnerTypeCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."OWNER_SEQ_NUM" IS 'Owner seq (OwnerSeqCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."OPER_NAME" IS 'Operator name (OperatorNameCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."OPER_TYPE" IS 'Operator type (OperatorTypeCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."OPER_SEQ_NUM" IS 'Operator seq (OperatorSeqCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."NAIC1_CODE" IS 'NAIC 1 (NAIC1Code)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."NAIC2_CODE" IS 'NAIC 2 (NAIC2Code)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."NAIC3_CODE" IS 'NAIC 3 (NAIC3Code)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."NAIC4_CODE" IS 'NAIC 4 (NAIC4Code)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."IN_HANDLER_UNIVERSE" IS 'In handler universe (InHandlerUniverseCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."IN_A_UNIVERSE" IS 'In A universe (InAUniverseCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."FED_WASTE_GENERATOR_OWNER" IS 'Federal code indicating that the handler is engaged in the generation of hazardous waste. (FederalWasteGeneratorOwner)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."FED_WASTE_GENERATOR" IS 'Federal code indicating that the handler is engaged in the generation of hazardous waste. (FederalWasteGeneratorCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."STATE_WASTE_GENERATOR_OWNER" IS 'State code indicating that the handler is engaged in the generation of hazardous waste. (StateWasteGeneratorOwner)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."STATE_WASTE_GENERATOR" IS 'State code indicating that the handler is engaged in the generation of hazardous waste. (StateWasteGeneratorCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."GEN_STATUS" IS 'Gen status (GENSTATUS)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."UNIV_WASTE" IS 'Univ waste (UNIVWASTE)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."LAND_TYPE" IS 'Code indicating current ownership status of the land on which the facility is located. (LandTypeCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."STATE_DISTRICT_OWNER" IS 'Owner of the state district code. Usually 2-digit postal code (i.e. KS). (StateDistrictOwnerName)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."STATE_DISTRICT" IS 'Code indicating the state-designated legislative district(s) in which the site is located. (StateDistrictCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."SHORT_TERM_GEN_IND" IS 'Code indicating that the handler is engaged in short-term hazardous waste generation activities. (ShortTermGeneratorIndicator)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."IMPORTER_ACTIVITY" IS 'Code indicating that the handler is engaged in importing hazardous waste into the United States. (ImporterActivityCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."MIXED_WASTE_GENERATOR" IS 'Code indicating that the handler is engaged in generating mixed waste (waste that is both hazardous and radioactive). (MixedWasteGeneratorCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."TRANSPORTER_ACTIVITY" IS 'Code indicating that the handler is engaged in the transportation of hazardous waste. (TransporterActivityCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."TRANSFER_FACILITY_IND" IS 'Code indicating that the handler is a Hazardous Waste Transfer Facility (not to be confused with a used oil transfer facility). (TransferFacilityIndicator)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."RECYCLER_ACTIVITY" IS 'Code for recycling hazardous waste. (RecyclerActivityCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."ONSITE_BURNER_EXEMPTION" IS 'Code indicating that the handler qualifies for the Small Quantity Onsite Burner Exemption. (OnsiteBurnerExemptionCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."FURNACE_EXEMPTION" IS 'Code indicating that the handler qualifies for the Smelting, Melting, and Refining Furnace Exemption. (FurnaceExemptionCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."UNDERGROUND_INJECTION_ACTIVITY" IS 'Code indicating that the handler generates and or treats, stores, or disposes of hazardous waste and has an injection well located at the installation. (UndergroundInjectionActivityCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."UNIVERSAL_WASTE_DEST_FACILITY" IS 'Code indicating that the handler treats, disposes of, or recycles hazardous waste on site. (UniversalWasteDestinationFacilityIndicator)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."OFFSITE_WASTE_RECEIPT" IS 'Off site waste receipt (OffSiteWasteReceiptCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."USED_OIL" IS 'Used oil (UsedOilCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."FEDERAL_UNIVERSAL_WASTE" IS 'Federal universal waste (FederalUniversalWasteCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."AS_FEDERAL_REGULATED_TSDF" IS 'As federal regulated TSDF (AsFederalRegulatedTSDFCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."AS_CONVERTED_TSDF" IS 'As converter TSDF (AsConverterTSDFCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."AS_STATE_REGULATED_TSDF" IS 'As state regulated TSDF (AsStateRegulatedTSDFCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."FEDERAL_IND" IS 'Federal indicator (FederalIndicatorCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."HSM" IS 'HSM code (HSMCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."SUBPART_K" IS 'Subpart K code (SubpartKCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."COMMERCIAL_TSD" IS 'Commercial TSD code (CommercialTSDCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."TSD" IS 'TSD type (TSDTypeCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."GPRA_PERMIT" IS 'GPRA permit (GPRAPermitCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."GPRA_RENEWAL" IS 'GPRA renewal code (GPRARenewalCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."PERMIT_RENEWAL_WRKLD" IS 'Permit renewal WRKLD (PermitRenewalWRKLDCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."PERM_WRKLD" IS 'Perm WRKLD (PermWRKLDCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."PERM_PROG" IS 'Perm PROG (PermPROGCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."PC_WRKLD" IS 'PC WRKLD (PCWRKLDCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CLOS_WRKLD" IS 'Clos WRKLD (ClosWRKLDCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."GPRACA" IS 'GPRACA (GPRACACode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CA_WRKLD" IS 'CAWRKLD (CAWRKLDCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."SUBJ_CA" IS 'Subj CA (SubjCACode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."SUBJ_CA_NON_TSD" IS 'Subj CA non TSD (SubjCANonTSDCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."SUBJ_CA_TSD_3004" IS 'Subj CA TSD 3004 (SubjCATSD3004Code)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."SUBJ_CA_DISCRETION" IS 'Subj CA discretion (SubjCADiscretionCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."NCAPS" IS 'NCAPS (NCAPSCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."EC_IND" IS 'EC indicator (ECIndicatorCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."IC_IND" IS 'IC indicator (ICIndicatorCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CA_725_IND" IS 'CA 725 indicator (CA725IndicatorCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CA_750_IND" IS 'CA 750 indicator (CA750IndicatorCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."OPERATING_TSDF" IS 'Operating TSDF (OperatingTSDFCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."FULL_ENFORCEMENT" IS 'Full enforcement (FullEnforcementCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."SNC" IS 'SNC (SNCCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."BOY_SNC" IS 'BOY SNC (BOYSNCCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."BOY_STATE_UNADDRESSED_SNC" IS 'BOY state unaddressed SNC (BOYStateUnaddressedSNCCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."STATE_UNADDRESSED" IS 'State unaddressed (StateUnaddressedCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."STATE_ADDRESSED" IS 'State addressed (StateAddressedCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."BOY_STATE_ADDRESSED" IS 'BOY state addressed (BOYStateAddressedCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."STATE_SNC_WITH_COMP_SCHED" IS 'State SNC with comp sched (StateSNCWithCompSchedCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."BOY_STATE_SNC_WITH_COMP_SCHED" IS 'BOY state SNC with comp sched (BOYStateSNCWithCompSchedCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."EPA_UNADDRESSED" IS 'EPA unaddressed (EPAUnaddressedCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."BOY_EPA_UNADDRESSED" IS 'BOY EPA unaddressed (BOYEPAUnaddressedCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."EPA_ADDRESSED" IS 'EPA addressed (EPAAddressedCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."BOY_EPA_ADDRESSED" IS 'BOY EPA addressed (BOYEPAAddressedCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."EPA_SNC_WITH_COMP_SCHED" IS 'EPA SNC with comp sched (EPASNCWithcompSchedCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."BOY_EPA_SNC_WITH_COMP_SCHED" IS 'BOY EPA SNC with comp sched (BOYEPASNCWithcompSchedCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."FA_REQUIRED" IS 'FA required (FARequiredCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."HHANDLER_LAST_CHANGE_DATE" IS 'HHandler last change date (HHandlerLastChangeDate)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."PUBLIC_NOTES" IS 'Notes (PublicNotesCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."NOTES" IS 'Notes (NotesCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."RECOGNIZED_TRADER_IMPORTER_IND" IS 'Indicates that the Handler is participating in Import Trading activity. Possible values are: Y/N (RecognizedTraderImporterIndicator)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."RECOGNIZED_TRADER_EXPORTER_IND" IS 'Indicates that the Handler is participating in Export Trading activity. Possible values are: Y/N (RecognizedTraderExporterIndicator)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."SLAB_IMPORTER_IND" IS 'Indicates that the Handler is participating in Slab Import activity. Possible values are: Y/N (SlabImporterIndicator)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."SLAB_EXPORTER_IND" IS 'Indicates that the Handler is participating in Slab Export activity. Possible values are: Y/N (SlabExporterIndicator)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."RECYCLER_NON_STORAGE_IND" IS 'Recycle non storage (RecyclerNonStorageIndicator)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."MANIFEST_BROKER_IND" IS 'Manifest broker (ManifestBrokerIndicator)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."LOCATION_STREET_NUMBER" IS 'Parent: Location address information. (LocationAddressNumberText)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."LOCATION_STREET1" IS 'Parent: Location address information. (LocationAddressText)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."LOCATION_STREET2" IS 'Parent: Location address information. (SupplementalLocationText)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."LOCATION_CITY" IS 'Parent: Location address information. (LocalityName)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."LOCATION_STATE" IS 'Parent: Location address information. (StateUSPSCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."LOCATION_ZIP" IS 'Parent: Location address information. (LocationZIPCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."LOCATION_COUNTRY" IS 'Parent: Location address information. (CountryName)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."MAIL_STREET_NUMBER" IS 'Parent: Mailing address information. (MailingAddressNumberText)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."MAIL_STREET1" IS 'Parent: Mailing address information. (MailingAddressText)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."MAIL_STREET2" IS 'Parent: Mailing address information. (SupplementalAddressText)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."MAIL_CITY" IS 'Parent: Mailing address information. (MailingAddressCityName)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."MAIL_STATE" IS 'Parent: Mailing address information. (MailingAddressStateUSPSCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."MAIL_COUNTRY" IS 'Parent: Mailing address information. (MailingAddressCountryName)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."MAIL_ZIP" IS 'Parent: Mailing address information. (MailingAddressZIPCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CONTACT_STREET_NUMBER" IS 'Parent: RU contact address (MailingAddressNumberText)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CONTACT_STREET1" IS 'Parent: RU contact address (MailingAddressText)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CONTACT_STREET2" IS 'Parent: RU contact address (SupplementalAddressText)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CONTACT_CITY" IS 'Parent: RU contact address (MailingAddressCityName)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CONTACT_STATE" IS 'Parent: RU contact address (MailingAddressStateUSPSCode)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CONTACT_COUNTRY" IS 'Parent: RU contact address (MailingAddressCountryName)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV"."CONTACT_ZIP" IS 'Parent: RU contact address (MailingAddressZIPCode)';
   COMMENT ON TABLE "RCRA_RU_REPORT_UNIV"  IS 'Schema element: ReportUniv';
--------------------------------------------------------
--  DDL for Table RCRA_RU_REPORT_UNIV_SUBM
--------------------------------------------------------

  CREATE TABLE "RCRA_RU_REPORT_UNIV_SUBM" 
   (	"RU_REPORT_UNIV_SUBM_ID" VARCHAR2(40 BYTE), 
	"RU_SUBM_ID" VARCHAR2(40 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV_SUBM"."RU_REPORT_UNIV_SUBM_ID" IS 'Parent: This is the root element for this flow XML Schema. (_PK)';
   COMMENT ON COLUMN "RCRA_RU_REPORT_UNIV_SUBM"."RU_SUBM_ID" IS 'Parent: This is the root element for this flow XML Schema. (_FK)';
   COMMENT ON TABLE "RCRA_RU_REPORT_UNIV_SUBM"  IS 'Schema element: ReportUnivSubmission';
--------------------------------------------------------
--  DDL for Table RCRA_RU_SUBM
--------------------------------------------------------

  CREATE TABLE "RCRA_RU_SUBM" 
   (	"RU_SUBM_ID" VARCHAR2(40 BYTE), 
	"DATA_ACCESS" VARCHAR2(10 BYTE)
   ) ;

   COMMENT ON COLUMN "RCRA_RU_SUBM"."DATA_ACCESS" IS 'Descriptive text describing whether the data are public or private. (DataAccessText)';
   COMMENT ON TABLE "RCRA_RU_SUBM"  IS 'Schema element: HazardousWasteReportUnivDataType';
--------------------------------------------------------
--  DDL for Table RCRA_SUBMISSIONHISTORY
--------------------------------------------------------

  CREATE TABLE "RCRA_SUBMISSIONHISTORY" 
   (	"SUBMISSIONHISTORY_ID" VARCHAR2(40 BYTE), 
	"SUBMISSIONTYPE" VARCHAR2(50 BYTE), 
	"SCHEDULERUNDATE" DATE, 
	"TRANSACTIONID" VARCHAR2(50 BYTE), 
	"PROCESSINGSTATUS" VARCHAR2(50 BYTE)
   ) ;

   COMMENT ON TABLE "RCRA_SUBMISSIONHISTORY"  IS 'Schema element: SubmissionHistoryDataType';

--------------------------------------------------------
--  DDL for Index PK_CA_AREA
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CA_AREA" ON "RCRA_CA_AREA" ("CA_AREA_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CA_AREA_REL_EVENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CA_AREA_REL_EVENT" ON "RCRA_CA_AREA_REL_EVENT" ("CA_AREA_REL_EVENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CA_AUTHORITY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CA_AUTHORITY" ON "RCRA_CA_AUTHORITY" ("CA_AUTHORITY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CA_AUTH_REL_EVENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CA_AUTH_REL_EVENT" ON "RCRA_CA_AUTH_REL_EVENT" ("CA_AUTH_REL_EVENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CA_EVENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CA_EVENT" ON "RCRA_CA_EVENT" ("CA_EVENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CA_EVENT_COMMITMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CA_EVENT_COMMITMENT" ON "RCRA_CA_EVENT_COMMITMENT" ("CA_EVENT_COMMITMENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CA_FAC_SUBM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CA_FAC_SUBM" ON "RCRA_CA_FAC_SUBM" ("CA_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CA_REL_PERMIT_UNIT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CA_REL_PERMIT_UNIT" ON "RCRA_CA_REL_PERMIT_UNIT" ("CA_REL_PERMIT_UNIT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CA_STATUTORY_CITATION
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CA_STATUTORY_CITATION" ON "RCRA_CA_STATUTORY_CITATION" ("CA_STATUTORY_CITATION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CA_SUBM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CA_SUBM" ON "RCRA_CA_SUBM" ("CA_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_CITATION
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_CITATION" ON "RCRA_CME_CITATION" ("CME_CITATION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_CSNY_DATE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_CSNY_DATE" ON "RCRA_CME_CSNY_DATE" ("CME_CSNY_DATE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_ENFRC_ACT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_ENFRC_ACT" ON "RCRA_CME_ENFRC_ACT" ("CME_ENFRC_ACT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_EVAL
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_EVAL" ON "RCRA_CME_EVAL" ("CME_EVAL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_EVAL_COMMIT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_EVAL_COMMIT" ON "RCRA_CME_EVAL_COMMIT" ("CME_EVAL_COMMIT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_EVAL_VIOL
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_EVAL_VIOL" ON "RCRA_CME_EVAL_VIOL" ("CME_EVAL_VIOL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_FAC_SUBM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_FAC_SUBM" ON "RCRA_CME_FAC_SUBM" ("CME_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_MEDIA
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_MEDIA" ON "RCRA_CME_MEDIA" ("CME_MEDIA_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_MILESTONE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_MILESTONE" ON "RCRA_CME_MILESTONE" ("CME_MILESTONE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_PNLTY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_PNLTY" ON "RCRA_CME_PNLTY" ("CME_PNLTY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_PYMT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_PYMT" ON "RCRA_CME_PYMT" ("CME_PYMT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_RQST
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_RQST" ON "RCRA_CME_RQST" ("CME_RQST_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_SUBM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_SUBM" ON "RCRA_CME_SUBM" ("CME_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_SUPP_ENVR_PRJT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_SUPP_ENVR_PRJT" ON "RCRA_CME_SUPP_ENVR_PRJT" ("CME_SUPP_ENVR_PRJT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_VIOL
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_VIOL" ON "RCRA_CME_VIOL" ("CME_VIOL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CME_VIOL_ENFRC
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CME_VIOL_ENFRC" ON "RCRA_CME_VIOL_ENFRC" ("CME_VIOL_ENFRC_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EM_EMANIFEST
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EM_EMANIFEST" ON "RCRA_EM_EMANIFEST" ("EM_EMANIFEST_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EM_EMANIFEST_COMMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EM_EMANIFEST_COMMENT" ON "RCRA_EM_EMANIFEST_COMMENT" ("EM_EMANIFEST_COMMENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EM_HANDLER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EM_HANDLER" ON "RCRA_EM_HANDLER" ("EM_HANDLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EM_SUBM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EM_SUBM" ON "RCRA_EM_SUBM" ("EM_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EM_TR_NUM_ORIG
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EM_TR_NUM_ORIG" ON "RCRA_EM_TR_NUM_ORIG" ("EM_TR_NUM_ORIG_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EM_TR_NUM_REJ
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EM_TR_NUM_REJ" ON "RCRA_EM_TR_NUM_REJ" ("EM_TR_NUM_REJ_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EM_TR_NUM_RESIDUE_NEW
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EM_TR_NUM_RESIDUE_NEW" ON "RCRA_EM_TR_NUM_RESIDUE_NEW" ("EM_TR_NUM_RESIDUE_NEW_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EM_TR_NUM_WASTE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EM_TR_NUM_WASTE" ON "RCRA_EM_TR_NUM_WASTE" ("EM_TR_NUM_WASTE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EM_WASTE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EM_WASTE" ON "RCRA_EM_WASTE" ("EM_WASTE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EM_WASTE_CD_FED
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EM_WASTE_CD_FED" ON "RCRA_EM_WASTE_CD_FED" ("EM_WASTE_CD_FED_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EM_WASTE_CD_GEN
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EM_WASTE_CD_GEN" ON "RCRA_EM_WASTE_CD_GEN" ("EM_WASTE_CD_GEN_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EM_WASTE_CD_TRANS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EM_WASTE_CD_TRANS" ON "RCRA_EM_WASTE_CD_TRANS" ("EM_WASTE_CD_TRANS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EM_WASTE_CD_TSDF
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EM_WASTE_CD_TSDF" ON "RCRA_EM_WASTE_CD_TSDF" ("EM_WASTE_CD_TSDF_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EM_WASTE_COMMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EM_WASTE_COMMENT" ON "RCRA_EM_WASTE_COMMENT" ("EM_WASTE_COMMENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EM_WASTE_PCB
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EM_WASTE_PCB" ON "RCRA_EM_WASTE_PCB" ("EM_WASTE_PCB_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_FA_COST_EST
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_FA_COST_EST" ON "RCRA_FA_COST_EST" ("FA_COST_EST_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_FA_COST_EST_REL_MECHANISM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_FA_COST_EST_REL_MECHANISM" ON "RCRA_FA_COST_EST_REL_MECHANISM" ("FA_COST_EST_REL_MECHANISM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_FA_FAC_SUBM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_FA_FAC_SUBM" ON "RCRA_FA_FAC_SUBM" ("FA_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_FA_MECHANISM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_FA_MECHANISM" ON "RCRA_FA_MECHANISM" ("FA_MECHANISM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_FA_MECHANISM_DETAIL
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_FA_MECHANISM_DETAIL" ON "RCRA_FA_MECHANISM_DETAIL" ("FA_MECHANISM_DETAIL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_FA_SUBM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_FA_SUBM" ON "RCRA_FA_SUBM" ("FA_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_GIS_FAC_SUBM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_GIS_FAC_SUBM" ON "RCRA_GIS_FAC_SUBM" ("GIS_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_GIS_GEO_INFORMATION
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_GIS_GEO_INFORMATION" ON "RCRA_GIS_GEO_INFORMATION" ("GIS_GEO_INFORMATION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_GIS_SUBM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_GIS_SUBM" ON "RCRA_GIS_SUBM" ("GIS_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_CERTIFICATION
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_CERTIFICATION" ON "RCRA_HD_CERTIFICATION" ("HD_CERTIFICATION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_ENV_PERMIT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_ENV_PERMIT" ON "RCRA_HD_ENV_PERMIT" ("HD_ENV_PERMIT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_EPISODIC_EVENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_EPISODIC_EVENT" ON "RCRA_HD_EPISODIC_EVENT" ("HD_EPISODIC_EVENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_EPISODIC_WASTE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_EPISODIC_WASTE" ON "RCRA_HD_EPISODIC_WASTE" ("HD_EPISODIC_WASTE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_EPISODIC_WASTE_CODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_EPISODIC_WASTE_CODE" ON "RCRA_HD_EPISODIC_WASTE_CODE" ("HD_EPISODIC_WASTE_CODE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_HANDLER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_HANDLER" ON "RCRA_HD_HANDLER" ("HD_HANDLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_HBASIC
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_HBASIC" ON "RCRA_HD_HBASIC" ("HD_HBASIC_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_LQG_CLOSURE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_LQG_CLOSURE" ON "RCRA_HD_LQG_CLOSURE" ("HD_LQG_CLOSURE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_LQG_CONSOLIDATION
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_LQG_CONSOLIDATION" ON "RCRA_HD_LQG_CONSOLIDATION" ("HD_LQG_CONSOLIDATION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_NAICS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_NAICS" ON "RCRA_HD_NAICS" ("HD_NAICS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_OTHER_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_OTHER_ID" ON "RCRA_HD_OTHER_ID" ("HD_OTHER_ID_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_OWNEROP
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_OWNEROP" ON "RCRA_HD_OWNEROP" ("HD_OWNEROP_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_SEC_MATERIAL_ACTIVITY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_SEC_MATERIAL_ACTIVITY" ON "RCRA_HD_SEC_MATERIAL_ACTIVITY" ("HD_SEC_MATERIAL_ACTIVITY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_SEC_WASTE_CODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_SEC_WASTE_CODE" ON "RCRA_HD_SEC_WASTE_CODE" ("HD_SEC_WASTE_CODE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_STATE_ACTIVITY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_STATE_ACTIVITY" ON "RCRA_HD_STATE_ACTIVITY" ("HD_STATE_ACTIVITY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_SUBM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_SUBM" ON "RCRA_HD_SUBM" ("HD_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_UNIVERSAL_WASTE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_UNIVERSAL_WASTE" ON "RCRA_HD_UNIVERSAL_WASTE" ("HD_UNIVERSAL_WASTE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HD_WASTE_CODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HD_WASTE_CODE" ON "RCRA_HD_WASTE_CODE" ("HD_WASTE_CODE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PRM_EVENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PRM_EVENT" ON "RCRA_PRM_EVENT" ("PRM_EVENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PRM_EVENT_COMMITMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PRM_EVENT_COMMITMENT" ON "RCRA_PRM_EVENT_COMMITMENT" ("PRM_EVENT_COMMITMENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PRM_FAC_SUBM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PRM_FAC_SUBM" ON "RCRA_PRM_FAC_SUBM" ("PRM_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PRM_RELATED_EVENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PRM_RELATED_EVENT" ON "RCRA_PRM_RELATED_EVENT" ("PRM_RELATED_EVENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PRM_SERIES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PRM_SERIES" ON "RCRA_PRM_SERIES" ("PRM_SERIES_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PRM_SUBM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PRM_SUBM" ON "RCRA_PRM_SUBM" ("PRM_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PRM_UNIT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PRM_UNIT" ON "RCRA_PRM_UNIT" ("PRM_UNIT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PRM_UNIT_DETAIL
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PRM_UNIT_DETAIL" ON "RCRA_PRM_UNIT_DETAIL" ("PRM_UNIT_DETAIL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PRM_WASTE_CODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PRM_WASTE_CODE" ON "RCRA_PRM_WASTE_CODE" ("PRM_WASTE_CODE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_RU_REPORT_UNIV
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_RU_REPORT_UNIV" ON "RCRA_RU_REPORT_UNIV" ("RU_REPORT_UNIV_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_RU_REPORT_UNIV_SUBM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_RU_REPORT_UNIV_SUBM" ON "RCRA_RU_REPORT_UNIV_SUBM" ("RU_REPORT_UNIV_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_RU_SUBM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_RU_SUBM" ON "RCRA_RU_SUBM" ("RU_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SUBMISSIONHISTORY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_SUBMISSIONHISTORY" ON "RCRA_SUBMISSIONHISTORY" ("SUBMISSIONHISTORY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CME_PYMT_CME_PNLTY_ID
--------------------------------------------------------

  CREATE INDEX "IX_CME_PYMT_CME_PNLTY_ID" ON "RCRA_CME_PYMT" ("CME_PNLTY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_HANDLER_HD_HBASIC_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_HANDLER_HD_HBASIC_ID" ON "RCRA_HD_HANDLER" ("HD_HBASIC_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CME_ENFRC_ACT_CME_FC_SBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_CME_ENFRC_ACT_CME_FC_SBM_ID" ON "RCRA_CME_ENFRC_ACT" ("CME_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_EM_WASTE_PCB_EM_WASTE_ID
--------------------------------------------------------

  CREATE INDEX "IX_EM_WASTE_PCB_EM_WASTE_ID" ON "RCRA_EM_WASTE_PCB" ("EM_WASTE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_GS_GO_INFORMTN_GS_FC_SBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_GS_GO_INFORMTN_GS_FC_SBM_ID" ON "RCRA_GIS_GEO_INFORMATION" ("GIS_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CA_EVNT_COMMTMNT_CA_EVNT_ID
--------------------------------------------------------

  CREATE INDEX "IX_CA_EVNT_COMMTMNT_CA_EVNT_ID" ON "RCRA_CA_EVENT_COMMITMENT" ("CA_EVENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_PRM_FAC_SUBM_PRM_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_PRM_FAC_SUBM_PRM_SUBM_ID" ON "RCRA_PRM_FAC_SUBM" ("PRM_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_SEC_WA_CO_HD_SE_MA_AC_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_SEC_WA_CO_HD_SE_MA_AC_ID" ON "RCRA_HD_SEC_WASTE_CODE" ("HD_SEC_MATERIAL_ACTIVITY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_NAICS_HD_HANDLER_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_NAICS_HD_HANDLER_ID" ON "RCRA_HD_NAICS" ("HD_HANDLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CME_VIOL_CME_FAC_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_CME_VIOL_CME_FAC_SUBM_ID" ON "RCRA_CME_VIOL" ("CME_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CME_CSNY_DTE_CME_ENF_ACT_ID
--------------------------------------------------------

  CREATE INDEX "IX_CME_CSNY_DTE_CME_ENF_ACT_ID" ON "RCRA_CME_CSNY_DATE" ("CME_ENFRC_ACT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_OTHER_ID_HD_HBASIC_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_OTHER_ID_HD_HBASIC_ID" ON "RCRA_HD_OTHER_ID" ("HD_HBASIC_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CME_EVAL_VIOL_CME_EVAL_ID
--------------------------------------------------------

  CREATE INDEX "IX_CME_EVAL_VIOL_CME_EVAL_ID" ON "RCRA_CME_EVAL_VIOL" ("CME_EVAL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_EM_WASTE_CD_GEN_EM_WASTE_ID
--------------------------------------------------------

  CREATE INDEX "IX_EM_WASTE_CD_GEN_EM_WASTE_ID" ON "RCRA_EM_WASTE_CD_GEN" ("EM_WASTE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_SEC_MATE_ACTI_HD_HAND_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_SEC_MATE_ACTI_HD_HAND_ID" ON "RCRA_HD_SEC_MATERIAL_ACTIVITY" ("HD_HANDLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CA_REL_PERMIT_UNT_CA_ARA_ID
--------------------------------------------------------

  CREATE INDEX "IX_CA_REL_PERMIT_UNT_CA_ARA_ID" ON "RCRA_CA_REL_PERMIT_UNIT" ("CA_AREA_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_EM_WASTE_COMMENT_EM_WSTE_ID
--------------------------------------------------------

  CREATE INDEX "IX_EM_WASTE_COMMENT_EM_WSTE_ID" ON "RCRA_EM_WASTE_COMMENT" ("EM_WASTE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_ENV_PERMIT_HD_HANDLER_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_ENV_PERMIT_HD_HANDLER_ID" ON "RCRA_HD_ENV_PERMIT" ("HD_HANDLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_EM_TR_NM_ORG_EM_EMNIFEST_ID
--------------------------------------------------------

  CREATE INDEX "IX_EM_TR_NM_ORG_EM_EMNIFEST_ID" ON "RCRA_EM_TR_NUM_ORIG" ("EM_EMANIFEST_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_LQG_CLOSURE_HD_HANDLE_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_LQG_CLOSURE_HD_HANDLE_ID" ON "RCRA_HD_LQG_CLOSURE" ("HD_HANDLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CME_EVAL_CME_FAC_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_CME_EVAL_CME_FAC_SUBM_ID" ON "RCRA_CME_EVAL" ("CME_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_RU_RPR_UNV_RU_RPR_UNV_SB_ID
--------------------------------------------------------

  CREATE INDEX "IX_RU_RPR_UNV_RU_RPR_UNV_SB_ID" ON "RCRA_RU_REPORT_UNIV" ("RU_REPORT_UNIV_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CA_AREA_CA_FAC_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_CA_AREA_CA_FAC_SUBM_ID" ON "RCRA_CA_AREA" ("CA_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CME_MLSTNE_CME_ENFRC_ACT_ID
--------------------------------------------------------

  CREATE INDEX "IX_CME_MLSTNE_CME_ENFRC_ACT_ID" ON "RCRA_CME_MILESTONE" ("CME_ENFRC_ACT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_WASTE_CODE_HD_HANDLER_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_WASTE_CODE_HD_HANDLER_ID" ON "RCRA_HD_WASTE_CODE" ("HD_HANDLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_EM_TR_NM_RSDE_NW_EM_EMNF_ID
--------------------------------------------------------

  CREATE INDEX "IX_EM_TR_NM_RSDE_NW_EM_EMNF_ID" ON "RCRA_EM_TR_NUM_RESIDUE_NEW" ("EM_EMANIFEST_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_EPIS_WAST_HD_EPIS_EVE_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_EPIS_WAST_HD_EPIS_EVE_ID" ON "RCRA_HD_EPISODIC_WASTE" ("HD_EPISODIC_EVENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_EM_EMNFST_CMMNT_EM_EMNFS_ID
--------------------------------------------------------

  CREATE INDEX "IX_EM_EMNFST_CMMNT_EM_EMNFS_ID" ON "RCRA_EM_EMANIFEST_COMMENT" ("EM_EMANIFEST_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_PRM_EVENT_PRM_SERIES_ID
--------------------------------------------------------

  CREATE INDEX "IX_PRM_EVENT_PRM_SERIES_ID" ON "RCRA_PRM_EVENT" ("PRM_SERIES_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CME_CITATION_CME_VIOL_ID
--------------------------------------------------------

  CREATE INDEX "IX_CME_CITATION_CME_VIOL_ID" ON "RCRA_CME_CITATION" ("CME_VIOL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CME_VL_ENFR_CME_ENFR_ACT_ID
--------------------------------------------------------

  CREATE INDEX "IX_CME_VL_ENFR_CME_ENFR_ACT_ID" ON "RCRA_CME_VIOL_ENFRC" ("CME_ENFRC_ACT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CA_ATH_RL_EVNT_CA_ATHRTY_ID
--------------------------------------------------------

  CREATE INDEX "IX_CA_ATH_RL_EVNT_CA_ATHRTY_ID" ON "RCRA_CA_AUTH_REL_EVENT" ("CA_AUTHORITY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_HBASIC_HD_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_HBASIC_HD_SUBM_ID" ON "RCRA_HD_HBASIC" ("HD_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_EPI_WAS_COD_HD_EPI_WA_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_EPI_WAS_COD_HD_EPI_WA_ID" ON "RCRA_HD_EPISODIC_WASTE_CODE" ("HD_EPISODIC_WASTE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_RU_REPORT_UNV_SBM_RU_SBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_RU_REPORT_UNV_SBM_RU_SBM_ID" ON "RCRA_RU_REPORT_UNIV_SUBM" ("RU_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CME_EVAL_COMMIT_CME_EVAL_ID
--------------------------------------------------------

  CREATE INDEX "IX_CME_EVAL_COMMIT_CME_EVAL_ID" ON "RCRA_CME_EVAL_COMMIT" ("CME_EVAL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_PRM_UNIT_PRM_FAC_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_PRM_UNIT_PRM_FAC_SUBM_ID" ON "RCRA_PRM_UNIT" ("PRM_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_FA_MECHANISM_FA_FAC_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_FA_MECHANISM_FA_FAC_SUBM_ID" ON "RCRA_FA_MECHANISM" ("FA_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_EM_HANDLER_EM_EMANIFEST_ID
--------------------------------------------------------

  CREATE INDEX "IX_EM_HANDLER_EM_EMANIFEST_ID" ON "RCRA_EM_HANDLER" ("EM_EMANIFEST_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CME_PNLTY_CME_ENFRC_ACT_ID
--------------------------------------------------------

  CREATE INDEX "IX_CME_PNLTY_CME_ENFRC_ACT_ID" ON "RCRA_CME_PNLTY" ("CME_ENFRC_ACT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_PRM_RLTD_EVN_PRM_UNT_DTL_ID
--------------------------------------------------------

  CREATE INDEX "IX_PRM_RLTD_EVN_PRM_UNT_DTL_ID" ON "RCRA_PRM_RELATED_EVENT" ("PRM_UNIT_DETAIL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CA_STTTRY_CTTN_CA_ATHRTY_ID
--------------------------------------------------------

  CREATE INDEX "IX_CA_STTTRY_CTTN_CA_ATHRTY_ID" ON "RCRA_CA_STATUTORY_CITATION" ("CA_AUTHORITY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_LQG_CONSOLID_HD_HANDL_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_LQG_CONSOLID_HD_HANDL_ID" ON "RCRA_HD_LQG_CONSOLIDATION" ("HD_HANDLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_OWNEROP_HD_HANDLER_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_OWNEROP_HD_HANDLER_ID" ON "RCRA_HD_OWNEROP" ("HD_HANDLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_EM_EMANIFEST_EM_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_EM_EMANIFEST_EM_SUBM_ID" ON "RCRA_EM_EMANIFEST" ("EM_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_STATE_ACTIVI_HD_HANDL_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_STATE_ACTIVI_HD_HANDL_ID" ON "RCRA_HD_STATE_ACTIVITY" ("HD_HANDLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_PRM_UNIT_DETAIL_PRM_UNIT_ID
--------------------------------------------------------

  CREATE INDEX "IX_PRM_UNIT_DETAIL_PRM_UNIT_ID" ON "RCRA_PRM_UNIT_DETAIL" ("PRM_UNIT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_FA_CST_ES_RL_MC_FA_CS_ES_ID
--------------------------------------------------------

  CREATE INDEX "IX_FA_CST_ES_RL_MC_FA_CS_ES_ID" ON "RCRA_FA_COST_EST_REL_MECHANISM" ("FA_COST_EST_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_CERTIFICATIO_HD_HANDL_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_CERTIFICATIO_HD_HANDL_ID" ON "RCRA_HD_CERTIFICATION" ("HD_HANDLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CME_FAC_SUBM_CME_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_CME_FAC_SUBM_CME_SUBM_ID" ON "RCRA_CME_FAC_SUBM" ("CME_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_GIS_FAC_SUBM_GIS_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_GIS_FAC_SUBM_GIS_SUBM_ID" ON "RCRA_GIS_FAC_SUBM" ("GIS_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_EPISOD_EVENT_HD_HANDL_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_EPISOD_EVENT_HD_HANDL_ID" ON "RCRA_HD_EPISODIC_EVENT" ("HD_HANDLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CA_AUTHORITY_CA_FAC_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_CA_AUTHORITY_CA_FAC_SUBM_ID" ON "RCRA_CA_AUTHORITY" ("CA_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CME_SPP_ENV_PRJ_CM_EN_AC_ID
--------------------------------------------------------

  CREATE INDEX "IX_CME_SPP_ENV_PRJ_CM_EN_AC_ID" ON "RCRA_CME_SUPP_ENVR_PRJT" ("CME_ENFRC_ACT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_FA_COST_EST_FA_FAC_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_FA_COST_EST_FA_FAC_SUBM_ID" ON "RCRA_FA_COST_EST" ("FA_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CA_AREA_REL_EVENT_CA_ARA_ID
--------------------------------------------------------

  CREATE INDEX "IX_CA_AREA_REL_EVENT_CA_ARA_ID" ON "RCRA_CA_AREA_REL_EVENT" ("CA_AREA_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_EM_WASTE_CD_FED_EM_WASTE_ID
--------------------------------------------------------

  CREATE INDEX "IX_EM_WASTE_CD_FED_EM_WASTE_ID" ON "RCRA_EM_WASTE_CD_FED" ("EM_WASTE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_EM_TR_NUM_RJ_EM_EMNIFEST_ID
--------------------------------------------------------

  CREATE INDEX "IX_EM_TR_NUM_RJ_EM_EMNIFEST_ID" ON "RCRA_EM_TR_NUM_REJ" ("EM_EMANIFEST_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CA_EVENT_CA_FAC_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_CA_EVENT_CA_FAC_SUBM_ID" ON "RCRA_CA_EVENT" ("CA_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CME_MEDIA_CME_ENFRC_ACT_ID
--------------------------------------------------------

  CREATE INDEX "IX_CME_MEDIA_CME_ENFRC_ACT_ID" ON "RCRA_CME_MEDIA" ("CME_ENFRC_ACT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_EM_WASTE_CD_TSDF_EM_WSTE_ID
--------------------------------------------------------

  CREATE INDEX "IX_EM_WASTE_CD_TSDF_EM_WSTE_ID" ON "RCRA_EM_WASTE_CD_TSDF" ("EM_WASTE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_FA_MCHNISM_DTL_FA_MCHNSM_ID
--------------------------------------------------------

  CREATE INDEX "IX_FA_MCHNISM_DTL_FA_MCHNSM_ID" ON "RCRA_FA_MECHANISM_DETAIL" ("FA_MECHANISM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_PRM_EVNT_CMMTMN_PRM_EVNT_ID
--------------------------------------------------------

  CREATE INDEX "IX_PRM_EVNT_CMMTMN_PRM_EVNT_ID" ON "RCRA_PRM_EVENT_COMMITMENT" ("PRM_EVENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_EM_WASTE_EM_EMANIFEST_ID
--------------------------------------------------------

  CREATE INDEX "IX_EM_WASTE_EM_EMANIFEST_ID" ON "RCRA_EM_WASTE" ("EM_EMANIFEST_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_HD_UNIVER_WASTE_HD_HANDL_ID
--------------------------------------------------------

  CREATE INDEX "IX_HD_UNIVER_WASTE_HD_HANDL_ID" ON "RCRA_HD_UNIVERSAL_WASTE" ("HD_HANDLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_EM_WASTE_CD_TRNS_EM_WSTE_ID
--------------------------------------------------------

  CREATE INDEX "IX_EM_WASTE_CD_TRNS_EM_WSTE_ID" ON "RCRA_EM_WASTE_CD_TRANS" ("EM_WASTE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_FA_FAC_SUBM_FA_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_FA_FAC_SUBM_FA_SUBM_ID" ON "RCRA_FA_FAC_SUBM" ("FA_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_EM_TR_NUM_WASTE_EM_WASTE_ID
--------------------------------------------------------

  CREATE INDEX "IX_EM_TR_NUM_WASTE_EM_WASTE_ID" ON "RCRA_EM_TR_NUM_WASTE" ("EM_WASTE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CME_RQST_CME_EVAL_ID
--------------------------------------------------------

  CREATE INDEX "IX_CME_RQST_CME_EVAL_ID" ON "RCRA_CME_RQST" ("CME_EVAL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_PRM_WSTE_CDE_PRM_UNT_DTL_ID
--------------------------------------------------------

  CREATE INDEX "IX_PRM_WSTE_CDE_PRM_UNT_DTL_ID" ON "RCRA_PRM_WASTE_CODE" ("PRM_UNIT_DETAIL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_PRM_SERIES_PRM_FAC_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_PRM_SERIES_PRM_FAC_SUBM_ID" ON "RCRA_PRM_SERIES" ("PRM_FAC_SUBM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IX_CA_FAC_SUBM_CA_SUBM_ID
--------------------------------------------------------

  CREATE INDEX "IX_CA_FAC_SUBM_CA_SUBM_ID" ON "RCRA_CA_FAC_SUBM" ("CA_SUBM_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_SEC_WASTE_CODE
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_SEC_WASTE_CODE" MODIFY ("HD_SEC_WASTE_CODE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_SEC_WASTE_CODE" MODIFY ("HD_SEC_MATERIAL_ACTIVITY_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_SEC_WASTE_CODE" ADD CONSTRAINT "PK_HD_SEC_WASTE_CODE" PRIMARY KEY ("HD_SEC_WASTE_CODE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_STATE_ACTIVITY
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_STATE_ACTIVITY" MODIFY ("HD_STATE_ACTIVITY_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_STATE_ACTIVITY" MODIFY ("HD_HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_STATE_ACTIVITY" MODIFY ("STATE_ACTIVITY_OWNER" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_STATE_ACTIVITY" MODIFY ("STATE_ACTIVITY_TYPE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_STATE_ACTIVITY" ADD CONSTRAINT "PK_HD_STATE_ACTIVITY" PRIMARY KEY ("HD_STATE_ACTIVITY_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CME_EVAL_VIOL
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_EVAL_VIOL" MODIFY ("CME_EVAL_VIOL_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_EVAL_VIOL" MODIFY ("CME_EVAL_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_EVAL_VIOL" MODIFY ("VIOL_ACT_LOC" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_EVAL_VIOL" MODIFY ("VIOL_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_EVAL_VIOL" MODIFY ("AGN_WHICH_DTRM_VIOL" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_EVAL_VIOL" ADD CONSTRAINT "PK_CME_EVAL_VIOL" PRIMARY KEY ("CME_EVAL_VIOL_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_EM_TR_NUM_ORIG
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_TR_NUM_ORIG" MODIFY ("EM_TR_NUM_ORIG_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_TR_NUM_ORIG" MODIFY ("EM_EMANIFEST_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_TR_NUM_ORIG" MODIFY ("MANIFEST_TRACKING_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_TR_NUM_ORIG" ADD CONSTRAINT "PK_EM_TR_NUM_ORIG" PRIMARY KEY ("EM_TR_NUM_ORIG_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_EM_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_SUBM" ADD CONSTRAINT "PK_EM_SUBM" PRIMARY KEY ("EM_SUBM_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "RCRA_EM_SUBM" MODIFY ("EM_SUBM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RCRA_PRM_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_SUBM" MODIFY ("PRM_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_SUBM" ADD CONSTRAINT "PK_PRM_SUBM" PRIMARY KEY ("PRM_SUBM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CA_FAC_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_FAC_SUBM" ADD CONSTRAINT "PK_CA_FAC_SUBM" PRIMARY KEY ("CA_FAC_SUBM_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "RCRA_CA_FAC_SUBM" MODIFY ("CA_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_FAC_SUBM" MODIFY ("CA_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_FAC_SUBM" MODIFY ("HANDLER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RCRA_CME_RQST
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_RQST" MODIFY ("CME_RQST_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_RQST" MODIFY ("CME_EVAL_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_RQST" MODIFY ("RQST_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_RQST" ADD CONSTRAINT "PK_CME_RQST" PRIMARY KEY ("CME_RQST_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_GIS_GEO_INFORMATION
--------------------------------------------------------

  ALTER TABLE "RCRA_GIS_GEO_INFORMATION" MODIFY ("GIS_GEO_INFORMATION_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_GIS_GEO_INFORMATION" MODIFY ("GIS_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_GIS_GEO_INFORMATION" MODIFY ("GEO_INFO_OWNER" NOT NULL ENABLE);
  ALTER TABLE "RCRA_GIS_GEO_INFORMATION" MODIFY ("GEO_INFO_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_GIS_GEO_INFORMATION" MODIFY ("DATA_COLL_DATE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_GIS_GEO_INFORMATION" ADD CONSTRAINT "PK_GIS_GEO_INFORMATION" PRIMARY KEY ("GIS_GEO_INFORMATION_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_GIS_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_GIS_SUBM" MODIFY ("GIS_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_GIS_SUBM" ADD CONSTRAINT "PK_GIS_SUBM" PRIMARY KEY ("GIS_SUBM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CA_AREA_REL_EVENT
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_AREA_REL_EVENT" ADD CONSTRAINT "PK_CA_AREA_REL_EVENT" PRIMARY KEY ("CA_AREA_REL_EVENT_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "RCRA_CA_AREA_REL_EVENT" MODIFY ("CA_AREA_REL_EVENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AREA_REL_EVENT" MODIFY ("CA_AREA_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AREA_REL_EVENT" MODIFY ("ACT_LOC_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AREA_REL_EVENT" MODIFY ("CORCT_ACT_EVENT_DATA_OWNER_CDE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AREA_REL_EVENT" MODIFY ("CORCT_ACT_EVENT_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AREA_REL_EVENT" MODIFY ("EVENT_AGN_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AREA_REL_EVENT" MODIFY ("EVENT_SEQ_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RCRA_CA_AUTH_REL_EVENT
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_AUTH_REL_EVENT" ADD CONSTRAINT "PK_CA_AUTH_REL_EVENT" PRIMARY KEY ("CA_AUTH_REL_EVENT_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "RCRA_CA_AUTH_REL_EVENT" MODIFY ("CA_AUTH_REL_EVENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AUTH_REL_EVENT" MODIFY ("CA_AUTHORITY_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AUTH_REL_EVENT" MODIFY ("ACT_LOC_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AUTH_REL_EVENT" MODIFY ("CORCT_ACT_EVENT_DATA_OWNER_CDE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AUTH_REL_EVENT" MODIFY ("CORCT_ACT_EVENT_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AUTH_REL_EVENT" MODIFY ("EVENT_AGN_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AUTH_REL_EVENT" MODIFY ("EVENT_SEQ_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RCRA_FA_COST_EST
--------------------------------------------------------

  ALTER TABLE "RCRA_FA_COST_EST" MODIFY ("FA_COST_EST_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_COST_EST" MODIFY ("FA_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_COST_EST" MODIFY ("ACT_LOC_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_COST_EST" MODIFY ("COST_ESTIMATE_TYPE_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_COST_EST" MODIFY ("COST_ESTIMATE_AGN_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_COST_EST" MODIFY ("COST_ESTIMATE_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_COST_EST" ADD CONSTRAINT "PK_FA_COST_EST" PRIMARY KEY ("FA_COST_EST_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_GIS_FAC_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_GIS_FAC_SUBM" MODIFY ("GIS_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_GIS_FAC_SUBM" MODIFY ("GIS_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_GIS_FAC_SUBM" MODIFY ("HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_GIS_FAC_SUBM" ADD CONSTRAINT "PK_GIS_FAC_SUBM" PRIMARY KEY ("GIS_FAC_SUBM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_EPISODIC_WASTE_CODE
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_EPISODIC_WASTE_CODE" MODIFY ("HD_EPISODIC_WASTE_CODE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_EPISODIC_WASTE_CODE" MODIFY ("HD_EPISODIC_WASTE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_EPISODIC_WASTE_CODE" ADD CONSTRAINT "PK_HD_EPISODIC_WASTE_CODE" PRIMARY KEY ("HD_EPISODIC_WASTE_CODE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_PRM_SERIES
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_SERIES" MODIFY ("PRM_SERIES_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_SERIES" MODIFY ("PRM_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_SERIES" MODIFY ("PERMIT_SERIES_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_SERIES" ADD CONSTRAINT "PK_PRM_SERIES" PRIMARY KEY ("PRM_SERIES_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_SUBMISSIONHISTORY
--------------------------------------------------------

  ALTER TABLE "RCRA_SUBMISSIONHISTORY" MODIFY ("SUBMISSIONHISTORY_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_SUBMISSIONHISTORY" MODIFY ("SUBMISSIONTYPE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_SUBMISSIONHISTORY" MODIFY ("SCHEDULERUNDATE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_SUBMISSIONHISTORY" MODIFY ("TRANSACTIONID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_SUBMISSIONHISTORY" MODIFY ("PROCESSINGSTATUS" NOT NULL ENABLE);
  ALTER TABLE "RCRA_SUBMISSIONHISTORY" ADD CONSTRAINT "PK_SUBMISSIONHISTORY" PRIMARY KEY ("SUBMISSIONHISTORY_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_OWNEROP
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_OWNEROP" MODIFY ("HD_OWNEROP_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_OWNEROP" MODIFY ("HD_HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_OWNEROP" MODIFY ("OWNER_OP_SEQ" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_OWNEROP" ADD CONSTRAINT "PK_HD_OWNEROP" PRIMARY KEY ("HD_OWNEROP_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_FA_FAC_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_FA_FAC_SUBM" MODIFY ("FA_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_FAC_SUBM" MODIFY ("FA_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_FAC_SUBM" MODIFY ("HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_FAC_SUBM" ADD CONSTRAINT "PK_FA_FAC_SUBM" PRIMARY KEY ("FA_FAC_SUBM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_LQG_CONSOLIDATION
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_LQG_CONSOLIDATION" MODIFY ("HD_LQG_CONSOLIDATION_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_LQG_CONSOLIDATION" MODIFY ("HD_HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_LQG_CONSOLIDATION" MODIFY ("SEQ_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_LQG_CONSOLIDATION" ADD CONSTRAINT "PK_HD_LQG_CONSOLIDATION" PRIMARY KEY ("HD_LQG_CONSOLIDATION_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_EM_HANDLER
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_HANDLER" MODIFY ("EM_HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_HANDLER" MODIFY ("EM_EMANIFEST_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_HANDLER" MODIFY ("SITE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_HANDLER" MODIFY ("MANIFEST_NAME" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_HANDLER" MODIFY ("MANIFEST_HANDLER_TYPE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_HANDLER" ADD CONSTRAINT "PK_EM_HANDLER" PRIMARY KEY ("EM_HANDLER_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_UNIVERSAL_WASTE
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_UNIVERSAL_WASTE" MODIFY ("HD_UNIVERSAL_WASTE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_UNIVERSAL_WASTE" MODIFY ("HD_HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_UNIVERSAL_WASTE" ADD CONSTRAINT "PK_HD_UNIVERSAL_WASTE" PRIMARY KEY ("HD_UNIVERSAL_WASTE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CME_PYMT
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_PYMT" MODIFY ("CME_PYMT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_PYMT" MODIFY ("CME_PNLTY_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_PYMT" MODIFY ("PYMT_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_PYMT" ADD CONSTRAINT "PK_CME_PYMT" PRIMARY KEY ("CME_PYMT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_EM_WASTE
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_WASTE" ADD CONSTRAINT "PK_EM_WASTE" PRIMARY KEY ("EM_WASTE_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "RCRA_EM_WASTE" MODIFY ("EM_WASTE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE" MODIFY ("EM_EMANIFEST_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE" MODIFY ("DOT_HAZ_IND" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE" MODIFY ("PCB_IND" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE" MODIFY ("LINE_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RCRA_EM_WASTE_COMMENT
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_WASTE_COMMENT" ADD CONSTRAINT "PK_EM_WASTE_COMMENT" PRIMARY KEY ("EM_WASTE_COMMENT_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "RCRA_EM_WASTE_COMMENT" MODIFY ("EM_WASTE_COMMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE_COMMENT" MODIFY ("EM_WASTE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RCRA_FA_COST_EST_REL_MECHANISM
--------------------------------------------------------

  ALTER TABLE "RCRA_FA_COST_EST_REL_MECHANISM" MODIFY ("FA_COST_EST_REL_MECHANISM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_COST_EST_REL_MECHANISM" MODIFY ("FA_COST_EST_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_COST_EST_REL_MECHANISM" MODIFY ("ACT_LOC_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_COST_EST_REL_MECHANISM" MODIFY ("MECHANISM_AGN_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_COST_EST_REL_MECHANISM" MODIFY ("MECHANISM_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_COST_EST_REL_MECHANISM" MODIFY ("MECHANISM_DETAIL_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_COST_EST_REL_MECHANISM" ADD CONSTRAINT "PK_FA_COST_EST_REL_MECHANISM" PRIMARY KEY ("FA_COST_EST_REL_MECHANISM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CA_EVENT
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_EVENT" ADD CONSTRAINT "PK_CA_EVENT" PRIMARY KEY ("CA_EVENT_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "RCRA_CA_EVENT" MODIFY ("CA_EVENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_EVENT" MODIFY ("CA_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_EVENT" MODIFY ("ACT_LOC_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_EVENT" MODIFY ("CORCT_ACT_EVENT_DATA_OWNER_CDE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_EVENT" MODIFY ("CORCT_ACT_EVENT_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_EVENT" MODIFY ("EVENT_AGN_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_EVENT" MODIFY ("EVENT_SEQ_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RCRA_CME_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_SUBM" MODIFY ("CME_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_SUBM" ADD CONSTRAINT "PK_CME_SUBM" PRIMARY KEY ("CME_SUBM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_EM_TR_NUM_WASTE
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_TR_NUM_WASTE" MODIFY ("EM_WASTE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_TR_NUM_WASTE" MODIFY ("MANIFEST_TRACKING_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_TR_NUM_WASTE" ADD CONSTRAINT "PK_EM_TR_NUM_WASTE" PRIMARY KEY ("EM_TR_NUM_WASTE_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "RCRA_EM_TR_NUM_WASTE" MODIFY ("EM_TR_NUM_WASTE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RCRA_EM_WASTE_CD_TRANS
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_WASTE_CD_TRANS" MODIFY ("EM_WASTE_CD_TRANS_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE_CD_TRANS" MODIFY ("EM_WASTE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE_CD_TRANS" MODIFY ("WASTE_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE_CD_TRANS" ADD CONSTRAINT "PK_EM_WASTE_CD_TRANS" PRIMARY KEY ("EM_WASTE_CD_TRANS_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_LQG_CLOSURE
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_LQG_CLOSURE" MODIFY ("HD_LQG_CLOSURE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_LQG_CLOSURE" MODIFY ("HD_HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_LQG_CLOSURE" ADD CONSTRAINT "PK_HD_LQG_CLOSURE" PRIMARY KEY ("HD_LQG_CLOSURE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CME_CSNY_DATE
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_CSNY_DATE" MODIFY ("CME_CSNY_DATE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_CSNY_DATE" MODIFY ("CME_ENFRC_ACT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_CSNY_DATE" MODIFY ("SNY_DATE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_CSNY_DATE" ADD CONSTRAINT "PK_CME_CSNY_DATE" PRIMARY KEY ("CME_CSNY_DATE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_EM_TR_NUM_REJ
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_TR_NUM_REJ" MODIFY ("EM_TR_NUM_REJ_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_TR_NUM_REJ" MODIFY ("EM_EMANIFEST_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_TR_NUM_REJ" MODIFY ("MANIFEST_TRACKING_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_TR_NUM_REJ" ADD CONSTRAINT "PK_EM_TR_NUM_REJ" PRIMARY KEY ("EM_TR_NUM_REJ_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_PRM_RELATED_EVENT
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_RELATED_EVENT" MODIFY ("PRM_RELATED_EVENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_RELATED_EVENT" MODIFY ("PRM_UNIT_DETAIL_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_RELATED_EVENT" MODIFY ("ACT_LOC_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_RELATED_EVENT" MODIFY ("PERMIT_SERIES_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_RELATED_EVENT" MODIFY ("PERMIT_EVENT_DATA_OWNER_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_RELATED_EVENT" MODIFY ("PERMIT_EVENT_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_RELATED_EVENT" MODIFY ("EVENT_AGN_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_RELATED_EVENT" MODIFY ("EVENT_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_RELATED_EVENT" ADD CONSTRAINT "PK_PRM_RELATED_EVENT" PRIMARY KEY ("PRM_RELATED_EVENT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CA_AREA
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_AREA" ADD CONSTRAINT "PK_CA_AREA" PRIMARY KEY ("CA_AREA_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "RCRA_CA_AREA" MODIFY ("CA_AREA_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AREA" MODIFY ("CA_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AREA" MODIFY ("AREA_SEQ_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RCRA_EM_EMANIFEST_COMMENT
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_EMANIFEST_COMMENT" MODIFY ("EM_EMANIFEST_COMMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_EMANIFEST_COMMENT" MODIFY ("EM_EMANIFEST_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_EMANIFEST_COMMENT" ADD CONSTRAINT "PK_EM_EMANIFEST_COMMENT" PRIMARY KEY ("EM_EMANIFEST_COMMENT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_FA_MECHANISM
--------------------------------------------------------

  ALTER TABLE "RCRA_FA_MECHANISM" MODIFY ("FA_MECHANISM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_MECHANISM" MODIFY ("FA_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_MECHANISM" MODIFY ("ACT_LOC_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_MECHANISM" MODIFY ("MECHANISM_AGN_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_MECHANISM" MODIFY ("MECHANISM_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_MECHANISM" ADD CONSTRAINT "PK_FA_MECHANISM" PRIMARY KEY ("FA_MECHANISM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_FA_MECHANISM_DETAIL
--------------------------------------------------------

  ALTER TABLE "RCRA_FA_MECHANISM_DETAIL" MODIFY ("FA_MECHANISM_DETAIL_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_MECHANISM_DETAIL" MODIFY ("FA_MECHANISM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_MECHANISM_DETAIL" MODIFY ("MECHANISM_DETAIL_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_MECHANISM_DETAIL" ADD CONSTRAINT "PK_FA_MECHANISM_DETAIL" PRIMARY KEY ("FA_MECHANISM_DETAIL_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_EPISODIC_WASTE
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_EPISODIC_WASTE" MODIFY ("HD_EPISODIC_WASTE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_EPISODIC_WASTE" MODIFY ("HD_EPISODIC_EVENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_EPISODIC_WASTE" MODIFY ("SEQ_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_EPISODIC_WASTE" ADD CONSTRAINT "PK_HD_EPISODIC_WASTE" PRIMARY KEY ("HD_EPISODIC_WASTE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_WASTE_CODE
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_WASTE_CODE" MODIFY ("HD_WASTE_CODE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_WASTE_CODE" MODIFY ("HD_HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_WASTE_CODE" ADD CONSTRAINT "PK_HD_WASTE_CODE" PRIMARY KEY ("HD_WASTE_CODE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CA_STATUTORY_CITATION
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_STATUTORY_CITATION" ADD CONSTRAINT "PK_CA_STATUTORY_CITATION" PRIMARY KEY ("CA_STATUTORY_CITATION_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "RCRA_CA_STATUTORY_CITATION" MODIFY ("CA_STATUTORY_CITATION_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_STATUTORY_CITATION" MODIFY ("CA_AUTHORITY_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_STATUTORY_CITATION" MODIFY ("STATUTORY_CITTION_DTA_OWNR_CDE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_STATUTORY_CITATION" MODIFY ("STATUTORY_CITATION_IDEN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RCRA_CME_MEDIA
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_MEDIA" MODIFY ("CME_MEDIA_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_MEDIA" MODIFY ("CME_ENFRC_ACT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_MEDIA" MODIFY ("MULTIMEDIA_CODE_OWNER" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_MEDIA" MODIFY ("MULTIMEDIA_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_MEDIA" ADD CONSTRAINT "PK_CME_MEDIA" PRIMARY KEY ("CME_MEDIA_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_EM_WASTE_CD_TSDF
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_WASTE_CD_TSDF" MODIFY ("EM_WASTE_CD_TSDF_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE_CD_TSDF" MODIFY ("EM_WASTE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE_CD_TSDF" MODIFY ("WASTE_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE_CD_TSDF" ADD CONSTRAINT "PK_EM_WASTE_CD_TSDF" PRIMARY KEY ("EM_WASTE_CD_TSDF_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_PRM_FAC_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_FAC_SUBM" MODIFY ("PRM_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_FAC_SUBM" MODIFY ("PRM_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_FAC_SUBM" MODIFY ("HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_FAC_SUBM" ADD CONSTRAINT "PK_PRM_FAC_SUBM" PRIMARY KEY ("PRM_FAC_SUBM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CME_VIOL_ENFRC
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_VIOL_ENFRC" MODIFY ("CME_VIOL_ENFRC_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_VIOL_ENFRC" MODIFY ("CME_ENFRC_ACT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_VIOL_ENFRC" MODIFY ("VIOL_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_VIOL_ENFRC" MODIFY ("AGN_WHICH_DTRM_VIOL" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_VIOL_ENFRC" ADD CONSTRAINT "PK_CME_VIOL_ENFRC" PRIMARY KEY ("CME_VIOL_ENFRC_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_HANDLER
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_HANDLER" MODIFY ("HD_HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_HANDLER" MODIFY ("HD_HBASIC_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_HANDLER" MODIFY ("ACTIVITY_LOCATION" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_HANDLER" MODIFY ("SOURCE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_HANDLER" MODIFY ("SEQ_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_HANDLER" ADD CONSTRAINT "PK_HD_HANDLER" PRIMARY KEY ("HD_HANDLER_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_SUBM" MODIFY ("HD_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_SUBM" ADD CONSTRAINT "PK_HD_SUBM" PRIMARY KEY ("HD_SUBM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_PRM_EVENT_COMMITMENT
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_EVENT_COMMITMENT" MODIFY ("PRM_EVENT_COMMITMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_EVENT_COMMITMENT" MODIFY ("PRM_EVENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_EVENT_COMMITMENT" MODIFY ("COMMIT_LEAD" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_EVENT_COMMITMENT" MODIFY ("COMMIT_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_EVENT_COMMITMENT" ADD CONSTRAINT "PK_PRM_EVENT_COMMITMENT" PRIMARY KEY ("PRM_EVENT_COMMITMENT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CA_AUTHORITY
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_AUTHORITY" ADD CONSTRAINT "PK_CA_AUTHORITY" PRIMARY KEY ("CA_AUTHORITY_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "RCRA_CA_AUTHORITY" MODIFY ("CA_AUTHORITY_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AUTHORITY" MODIFY ("CA_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AUTHORITY" MODIFY ("ACT_LOC_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AUTHORITY" MODIFY ("AUTHORITY_DATA_OWNER_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AUTHORITY" MODIFY ("AUTHORITY_TYPE_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AUTHORITY" MODIFY ("AUTHORITY_AGN_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_AUTHORITY" MODIFY ("AUTHORITY_EFFC_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RCRA_EM_EMANIFEST
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_EMANIFEST" ADD CONSTRAINT "PK_EM_EMANIFEST" PRIMARY KEY ("EM_EMANIFEST_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "RCRA_EM_EMANIFEST" MODIFY ("EM_EMANIFEST_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_EMANIFEST" MODIFY ("EM_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_EMANIFEST" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_EMANIFEST" MODIFY ("MAN_TRACKING_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_EMANIFEST" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_EMANIFEST" MODIFY ("ORIGIN_TYPE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_EMANIFEST" MODIFY ("REJ_IND" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_EMANIFEST" MODIFY ("DISCREPANCY_IND" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_EMANIFEST" MODIFY ("RESIDUE_IND" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_EMANIFEST" MODIFY ("IMP_IND" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RCRA_CME_CITATION
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_CITATION" MODIFY ("CME_CITATION_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_CITATION" MODIFY ("CME_VIOL_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_CITATION" MODIFY ("CITATION_NAME_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_CITATION" ADD CONSTRAINT "PK_CME_CITATION" PRIMARY KEY ("CME_CITATION_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_FA_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_FA_SUBM" MODIFY ("FA_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_FA_SUBM" ADD CONSTRAINT "PK_FA_SUBM" PRIMARY KEY ("FA_SUBM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_HBASIC
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_HBASIC" MODIFY ("HD_HBASIC_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_HBASIC" MODIFY ("HD_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_HBASIC" ADD CONSTRAINT "PK_HD_HBASIC" PRIMARY KEY ("HD_HBASIC_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_PRM_WASTE_CODE
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_WASTE_CODE" MODIFY ("PRM_WASTE_CODE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_WASTE_CODE" MODIFY ("PRM_UNIT_DETAIL_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_WASTE_CODE" ADD CONSTRAINT "PK_PRM_WASTE_CODE" PRIMARY KEY ("PRM_WASTE_CODE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CA_EVENT_COMMITMENT
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_EVENT_COMMITMENT" MODIFY ("CA_EVENT_COMMITMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_EVENT_COMMITMENT" MODIFY ("CA_EVENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_EVENT_COMMITMENT" MODIFY ("COMMIT_LEAD" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_EVENT_COMMITMENT" MODIFY ("COMMIT_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_EVENT_COMMITMENT" ADD CONSTRAINT "PK_CA_EVENT_COMMITMENT" PRIMARY KEY ("CA_EVENT_COMMITMENT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CME_PNLTY
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_PNLTY" MODIFY ("CME_PNLTY_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_PNLTY" MODIFY ("CME_ENFRC_ACT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_PNLTY" MODIFY ("PNLTY_TYPE_OWNER" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_PNLTY" MODIFY ("PNLTY_TYPE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_PNLTY" ADD CONSTRAINT "PK_CME_PNLTY" PRIMARY KEY ("CME_PNLTY_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CME_SUPP_ENVR_PRJT
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_SUPP_ENVR_PRJT" MODIFY ("CME_SUPP_ENVR_PRJT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_SUPP_ENVR_PRJT" MODIFY ("CME_ENFRC_ACT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_SUPP_ENVR_PRJT" MODIFY ("SEP_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_SUPP_ENVR_PRJT" ADD CONSTRAINT "PK_CME_SUPP_ENVR_PRJT" PRIMARY KEY ("CME_SUPP_ENVR_PRJT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_EM_WASTE_CD_GEN
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_WASTE_CD_GEN" MODIFY ("EM_WASTE_CD_GEN_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE_CD_GEN" MODIFY ("EM_WASTE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE_CD_GEN" MODIFY ("WASTE_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE_CD_GEN" ADD CONSTRAINT "PK_EM_WASTE_CD_GEN" PRIMARY KEY ("EM_WASTE_CD_GEN_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_PRM_UNIT_DETAIL
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_UNIT_DETAIL" MODIFY ("PRM_UNIT_DETAIL_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_UNIT_DETAIL" MODIFY ("PRM_UNIT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_UNIT_DETAIL" MODIFY ("PERMIT_UNIT_DETAIL_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_UNIT_DETAIL" ADD CONSTRAINT "PK_PRM_UNIT_DETAIL" PRIMARY KEY ("PRM_UNIT_DETAIL_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_RU_REPORT_UNIV
--------------------------------------------------------

  ALTER TABLE "RCRA_RU_REPORT_UNIV" MODIFY ("RU_REPORT_UNIV_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_RU_REPORT_UNIV" MODIFY ("RU_REPORT_UNIV_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_RU_REPORT_UNIV" MODIFY ("HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_RU_REPORT_UNIV" MODIFY ("ACTIVITY_LOCATION" NOT NULL ENABLE);
  ALTER TABLE "RCRA_RU_REPORT_UNIV" ADD CONSTRAINT "PK_RU_REPORT_UNIV" PRIMARY KEY ("RU_REPORT_UNIV_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CA_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_SUBM" MODIFY ("CA_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_SUBM" ADD CONSTRAINT "PK_CA_SUBM" PRIMARY KEY ("CA_SUBM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CME_ENFRC_ACT
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_ENFRC_ACT" MODIFY ("CME_ENFRC_ACT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_ENFRC_ACT" MODIFY ("CME_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_ENFRC_ACT" MODIFY ("ENFRC_AGN_LOC_NAME" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_ENFRC_ACT" MODIFY ("ENFRC_ACT_IDEN" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_ENFRC_ACT" MODIFY ("ENFRC_ACT_DATE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_ENFRC_ACT" MODIFY ("ENFRC_AGN_NAME" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_ENFRC_ACT" ADD CONSTRAINT "PK_CME_ENFRC_ACT" PRIMARY KEY ("CME_ENFRC_ACT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CME_FAC_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_FAC_SUBM" MODIFY ("CME_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_FAC_SUBM" MODIFY ("CME_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_FAC_SUBM" MODIFY ("EPA_HDLR_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_FAC_SUBM" ADD CONSTRAINT "PK_CME_FAC_SUBM" PRIMARY KEY ("CME_FAC_SUBM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_RU_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_RU_SUBM" MODIFY ("RU_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_RU_SUBM" ADD CONSTRAINT "PK_RU_SUBM" PRIMARY KEY ("RU_SUBM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CME_VIOL
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_VIOL" MODIFY ("CME_VIOL_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_VIOL" MODIFY ("CME_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_VIOL" MODIFY ("VIOL_ACT_LOC" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_VIOL" MODIFY ("VIOL_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_VIOL" MODIFY ("AGN_WHICH_DTRM_VIOL" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_VIOL" ADD CONSTRAINT "PK_CME_VIOL" PRIMARY KEY ("CME_VIOL_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_EM_TR_NUM_RESIDUE_NEW
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_TR_NUM_RESIDUE_NEW" MODIFY ("EM_TR_NUM_RESIDUE_NEW_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_TR_NUM_RESIDUE_NEW" MODIFY ("EM_EMANIFEST_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_TR_NUM_RESIDUE_NEW" MODIFY ("MANIFEST_TRACKING_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_TR_NUM_RESIDUE_NEW" ADD CONSTRAINT "PK_EM_TR_NUM_RESIDUE_NEW" PRIMARY KEY ("EM_TR_NUM_RESIDUE_NEW_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_CERTIFICATION
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_CERTIFICATION" MODIFY ("HD_CERTIFICATION_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_CERTIFICATION" MODIFY ("HD_HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_CERTIFICATION" MODIFY ("CERT_SEQ" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_CERTIFICATION" ADD CONSTRAINT "PK_HD_CERTIFICATION" PRIMARY KEY ("HD_CERTIFICATION_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CA_REL_PERMIT_UNIT
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_REL_PERMIT_UNIT" ADD CONSTRAINT "PK_CA_REL_PERMIT_UNIT" PRIMARY KEY ("CA_REL_PERMIT_UNIT_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "RCRA_CA_REL_PERMIT_UNIT" MODIFY ("CA_REL_PERMIT_UNIT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_REL_PERMIT_UNIT" MODIFY ("CA_AREA_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CA_REL_PERMIT_UNIT" MODIFY ("PERMIT_UNIT_SEQ_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RCRA_CME_EVAL
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_EVAL" MODIFY ("CME_EVAL_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_EVAL" MODIFY ("CME_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_EVAL" MODIFY ("EVAL_ACT_LOC" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_EVAL" MODIFY ("EVAL_IDEN" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_EVAL" MODIFY ("EVAL_START_DATE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_EVAL" MODIFY ("EVAL_RESP_AGN" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_EVAL" ADD CONSTRAINT "PK_CME_EVAL" PRIMARY KEY ("CME_EVAL_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_CME_EVAL_COMMIT
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_EVAL_COMMIT" MODIFY ("CME_EVAL_COMMIT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_EVAL_COMMIT" MODIFY ("CME_EVAL_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_EVAL_COMMIT" MODIFY ("COMMIT_LEAD" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_EVAL_COMMIT" MODIFY ("COMMIT_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_EVAL_COMMIT" ADD CONSTRAINT "PK_CME_EVAL_COMMIT" PRIMARY KEY ("CME_EVAL_COMMIT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_NAICS
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_NAICS" MODIFY ("HD_NAICS_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_NAICS" MODIFY ("HD_HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_NAICS" MODIFY ("NAICS_SEQ" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_NAICS" ADD CONSTRAINT "PK_HD_NAICS" PRIMARY KEY ("HD_NAICS_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_ENV_PERMIT
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_ENV_PERMIT" MODIFY ("HD_ENV_PERMIT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_ENV_PERMIT" MODIFY ("HD_HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_ENV_PERMIT" MODIFY ("ENV_PERMIT_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_ENV_PERMIT" MODIFY ("ENV_PERMIT_DESC" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_ENV_PERMIT" ADD CONSTRAINT "PK_HD_ENV_PERMIT" PRIMARY KEY ("HD_ENV_PERMIT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_OTHER_ID
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_OTHER_ID" MODIFY ("HD_OTHER_ID_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_OTHER_ID" MODIFY ("HD_HBASIC_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_OTHER_ID" MODIFY ("OTHER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_OTHER_ID" ADD CONSTRAINT "PK_HD_OTHER_ID" PRIMARY KEY ("HD_OTHER_ID_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_RU_REPORT_UNIV_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_RU_REPORT_UNIV_SUBM" MODIFY ("RU_REPORT_UNIV_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_RU_REPORT_UNIV_SUBM" MODIFY ("RU_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_RU_REPORT_UNIV_SUBM" ADD CONSTRAINT "PK_RU_REPORT_UNIV_SUBM" PRIMARY KEY ("RU_REPORT_UNIV_SUBM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_PRM_UNIT
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_UNIT" MODIFY ("PRM_UNIT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_UNIT" MODIFY ("PRM_FAC_SUBM_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_UNIT" MODIFY ("PERMIT_UNIT_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_UNIT" ADD CONSTRAINT "PK_PRM_UNIT" PRIMARY KEY ("PRM_UNIT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_EM_WASTE_CD_FED
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_WASTE_CD_FED" MODIFY ("EM_WASTE_CD_FED_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE_CD_FED" MODIFY ("EM_WASTE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE_CD_FED" MODIFY ("WASTE_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE_CD_FED" ADD CONSTRAINT "PK_EM_WASTE_CD_FED" PRIMARY KEY ("EM_WASTE_CD_FED_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_EM_WASTE_PCB
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_WASTE_PCB" ADD CONSTRAINT "PK_EM_WASTE_PCB" PRIMARY KEY ("EM_WASTE_PCB_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "RCRA_EM_WASTE_PCB" MODIFY ("EM_WASTE_PCB_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_EM_WASTE_PCB" MODIFY ("EM_WASTE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RCRA_CME_MILESTONE
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_MILESTONE" MODIFY ("CME_MILESTONE_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_MILESTONE" MODIFY ("CME_ENFRC_ACT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_MILESTONE" MODIFY ("MILESTONE_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_CME_MILESTONE" ADD CONSTRAINT "PK_CME_MILESTONE" PRIMARY KEY ("CME_MILESTONE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_EPISODIC_EVENT
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_EPISODIC_EVENT" MODIFY ("HD_EPISODIC_EVENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_EPISODIC_EVENT" MODIFY ("HD_HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_EPISODIC_EVENT" ADD CONSTRAINT "PK_HD_EPISODIC_EVENT" PRIMARY KEY ("HD_EPISODIC_EVENT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_HD_SEC_MATERIAL_ACTIVITY
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_SEC_MATERIAL_ACTIVITY" MODIFY ("HD_SEC_MATERIAL_ACTIVITY_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_SEC_MATERIAL_ACTIVITY" MODIFY ("HD_HANDLER_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_SEC_MATERIAL_ACTIVITY" MODIFY ("HSM_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_HD_SEC_MATERIAL_ACTIVITY" ADD CONSTRAINT "PK_HD_SEC_MATERIAL_ACTIVITY" PRIMARY KEY ("HD_SEC_MATERIAL_ACTIVITY_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RCRA_PRM_EVENT
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_EVENT" MODIFY ("PRM_EVENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_EVENT" MODIFY ("PRM_SERIES_ID" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_EVENT" MODIFY ("ACT_LOC_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_EVENT" MODIFY ("PERMIT_EVENT_DATA_OWNER_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_EVENT" MODIFY ("PERMIT_EVENT_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_EVENT" MODIFY ("EVENT_AGN_CODE" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_EVENT" MODIFY ("EVENT_SEQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "RCRA_PRM_EVENT" ADD CONSTRAINT "PK_PRM_EVENT" PRIMARY KEY ("PRM_EVENT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CA_AREA
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_AREA" ADD CONSTRAINT "FK_CA_AREA_CA_FAC_SUBM" FOREIGN KEY ("CA_FAC_SUBM_ID")
	  REFERENCES "RCRA_CA_FAC_SUBM" ("CA_FAC_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CA_AREA_REL_EVENT
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_AREA_REL_EVENT" ADD CONSTRAINT "FK_CA_AREA_REL_EVENT_CA_AREA" FOREIGN KEY ("CA_AREA_ID")
	  REFERENCES "RCRA_CA_AREA" ("CA_AREA_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CA_AUTHORITY
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_AUTHORITY" ADD CONSTRAINT "FK_CA_AUTHORITY_CA_FAC_SUBM" FOREIGN KEY ("CA_FAC_SUBM_ID")
	  REFERENCES "RCRA_CA_FAC_SUBM" ("CA_FAC_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CA_AUTH_REL_EVENT
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_AUTH_REL_EVENT" ADD CONSTRAINT "FK_CA_AUTH_RL_EVNT_CA_AUTHORTY" FOREIGN KEY ("CA_AUTHORITY_ID")
	  REFERENCES "RCRA_CA_AUTHORITY" ("CA_AUTHORITY_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CA_EVENT
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_EVENT" ADD CONSTRAINT "FK_CA_EVENT_CA_FAC_SUBM" FOREIGN KEY ("CA_FAC_SUBM_ID")
	  REFERENCES "RCRA_CA_FAC_SUBM" ("CA_FAC_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CA_EVENT_COMMITMENT
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_EVENT_COMMITMENT" ADD CONSTRAINT "FK_CA_EVENT_COMMITMENT_CA_EVNT" FOREIGN KEY ("CA_EVENT_ID")
	  REFERENCES "RCRA_CA_EVENT" ("CA_EVENT_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CA_FAC_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_FAC_SUBM" ADD CONSTRAINT "FK_CA_FAC_SUBM_CA_SUBM" FOREIGN KEY ("CA_SUBM_ID")
	  REFERENCES "RCRA_CA_SUBM" ("CA_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CA_REL_PERMIT_UNIT
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_REL_PERMIT_UNIT" ADD CONSTRAINT "FK_CA_REL_PERMIT_UNIT_CA_AREA" FOREIGN KEY ("CA_AREA_ID")
	  REFERENCES "RCRA_CA_AREA" ("CA_AREA_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CA_STATUTORY_CITATION
--------------------------------------------------------

  ALTER TABLE "RCRA_CA_STATUTORY_CITATION" ADD CONSTRAINT "FK_CA_STTUTRY_CITTON_CA_ATHRTY" FOREIGN KEY ("CA_AUTHORITY_ID")
	  REFERENCES "RCRA_CA_AUTHORITY" ("CA_AUTHORITY_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CME_CITATION
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_CITATION" ADD CONSTRAINT "FK_CME_CITATION_CME_VIOL" FOREIGN KEY ("CME_VIOL_ID")
	  REFERENCES "RCRA_CME_VIOL" ("CME_VIOL_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CME_CSNY_DATE
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_CSNY_DATE" ADD CONSTRAINT "FK_CME_CSNY_DATE_CME_ENFRC_ACT" FOREIGN KEY ("CME_ENFRC_ACT_ID")
	  REFERENCES "RCRA_CME_ENFRC_ACT" ("CME_ENFRC_ACT_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CME_ENFRC_ACT
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_ENFRC_ACT" ADD CONSTRAINT "FK_CME_ENFRC_ACT_CME_FAC_SUBM" FOREIGN KEY ("CME_FAC_SUBM_ID")
	  REFERENCES "RCRA_CME_FAC_SUBM" ("CME_FAC_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CME_EVAL
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_EVAL" ADD CONSTRAINT "FK_CME_EVAL_CME_FAC_SUBM" FOREIGN KEY ("CME_FAC_SUBM_ID")
	  REFERENCES "RCRA_CME_FAC_SUBM" ("CME_FAC_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CME_EVAL_COMMIT
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_EVAL_COMMIT" ADD CONSTRAINT "FK_CME_EVAL_COMMIT_CME_EVAL" FOREIGN KEY ("CME_EVAL_ID")
	  REFERENCES "RCRA_CME_EVAL" ("CME_EVAL_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CME_EVAL_VIOL
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_EVAL_VIOL" ADD CONSTRAINT "FK_CME_EVAL_VIOL_CME_EVAL" FOREIGN KEY ("CME_EVAL_ID")
	  REFERENCES "RCRA_CME_EVAL" ("CME_EVAL_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CME_FAC_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_FAC_SUBM" ADD CONSTRAINT "FK_CME_FAC_SUBM_CME_SUBM" FOREIGN KEY ("CME_SUBM_ID")
	  REFERENCES "RCRA_CME_SUBM" ("CME_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CME_MEDIA
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_MEDIA" ADD CONSTRAINT "FK_CME_MEDIA_CME_ENFRC_ACT" FOREIGN KEY ("CME_ENFRC_ACT_ID")
	  REFERENCES "RCRA_CME_ENFRC_ACT" ("CME_ENFRC_ACT_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CME_MILESTONE
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_MILESTONE" ADD CONSTRAINT "FK_CME_MILESTONE_CME_ENFRC_ACT" FOREIGN KEY ("CME_ENFRC_ACT_ID")
	  REFERENCES "RCRA_CME_ENFRC_ACT" ("CME_ENFRC_ACT_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CME_PNLTY
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_PNLTY" ADD CONSTRAINT "FK_CME_PNLTY_CME_ENFRC_ACT" FOREIGN KEY ("CME_ENFRC_ACT_ID")
	  REFERENCES "RCRA_CME_ENFRC_ACT" ("CME_ENFRC_ACT_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CME_PYMT
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_PYMT" ADD CONSTRAINT "FK_CME_PYMT_CME_PNLTY" FOREIGN KEY ("CME_PNLTY_ID")
	  REFERENCES "RCRA_CME_PNLTY" ("CME_PNLTY_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CME_RQST
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_RQST" ADD CONSTRAINT "FK_CME_RQST_CME_EVAL" FOREIGN KEY ("CME_EVAL_ID")
	  REFERENCES "RCRA_CME_EVAL" ("CME_EVAL_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CME_SUPP_ENVR_PRJT
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_SUPP_ENVR_PRJT" ADD CONSTRAINT "FK_CME_SPP_ENV_PRJ_CME_ENF_ACT" FOREIGN KEY ("CME_ENFRC_ACT_ID")
	  REFERENCES "RCRA_CME_ENFRC_ACT" ("CME_ENFRC_ACT_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CME_VIOL
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_VIOL" ADD CONSTRAINT "FK_CME_VIOL_CME_FAC_SUBM" FOREIGN KEY ("CME_FAC_SUBM_ID")
	  REFERENCES "RCRA_CME_FAC_SUBM" ("CME_FAC_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_CME_VIOL_ENFRC
--------------------------------------------------------

  ALTER TABLE "RCRA_CME_VIOL_ENFRC" ADD CONSTRAINT "FK_CME_VL_ENFRC_CME_ENFRC_ACT" FOREIGN KEY ("CME_ENFRC_ACT_ID")
	  REFERENCES "RCRA_CME_ENFRC_ACT" ("CME_ENFRC_ACT_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_EM_EMANIFEST
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_EMANIFEST" ADD CONSTRAINT "FK_EM_EMANIFEST_EM_SUBM" FOREIGN KEY ("EM_SUBM_ID")
	  REFERENCES "RCRA_EM_SUBM" ("EM_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_EM_EMANIFEST_COMMENT
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_EMANIFEST_COMMENT" ADD CONSTRAINT "FK_EM_EMNIFST_CMMNT_EM_EMNIFST" FOREIGN KEY ("EM_EMANIFEST_ID")
	  REFERENCES "RCRA_EM_EMANIFEST" ("EM_EMANIFEST_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_EM_HANDLER
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_HANDLER" ADD CONSTRAINT "FK_EM_HANDLER_EM_EMANIFEST" FOREIGN KEY ("EM_EMANIFEST_ID")
	  REFERENCES "RCRA_EM_EMANIFEST" ("EM_EMANIFEST_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_EM_TR_NUM_ORIG
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_TR_NUM_ORIG" ADD CONSTRAINT "FK_EM_TR_NUM_ORIG_EM_EMANIFEST" FOREIGN KEY ("EM_EMANIFEST_ID")
	  REFERENCES "RCRA_EM_EMANIFEST" ("EM_EMANIFEST_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_EM_TR_NUM_REJ
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_TR_NUM_REJ" ADD CONSTRAINT "FK_EM_TR_NUM_REJ_EM_EMANIFEST" FOREIGN KEY ("EM_EMANIFEST_ID")
	  REFERENCES "RCRA_EM_EMANIFEST" ("EM_EMANIFEST_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_EM_TR_NUM_RESIDUE_NEW
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_TR_NUM_RESIDUE_NEW" ADD CONSTRAINT "FK_EM_TR_NM_RSDUE_NW_EM_EMNFST" FOREIGN KEY ("EM_EMANIFEST_ID")
	  REFERENCES "RCRA_EM_EMANIFEST" ("EM_EMANIFEST_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_EM_TR_NUM_WASTE
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_TR_NUM_WASTE" ADD CONSTRAINT "FK_EM_TR_NUM_WASTE_EM_WASTE" FOREIGN KEY ("EM_WASTE_ID")
	  REFERENCES "RCRA_EM_WASTE" ("EM_WASTE_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_EM_WASTE
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_WASTE" ADD CONSTRAINT "FK_EM_WASTE_EM_EMANIFEST" FOREIGN KEY ("EM_EMANIFEST_ID")
	  REFERENCES "RCRA_EM_EMANIFEST" ("EM_EMANIFEST_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_EM_WASTE_CD_FED
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_WASTE_CD_FED" ADD CONSTRAINT "FK_EM_WASTE_CD_FED_EM_WASTE" FOREIGN KEY ("EM_WASTE_ID")
	  REFERENCES "RCRA_EM_WASTE" ("EM_WASTE_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_EM_WASTE_CD_GEN
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_WASTE_CD_GEN" ADD CONSTRAINT "FK_EM_WASTE_CD_GEN_EM_WASTE" FOREIGN KEY ("EM_WASTE_ID")
	  REFERENCES "RCRA_EM_WASTE" ("EM_WASTE_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_EM_WASTE_CD_TRANS
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_WASTE_CD_TRANS" ADD CONSTRAINT "FK_EM_WASTE_CD_TRANS_EM_WASTE" FOREIGN KEY ("EM_WASTE_ID")
	  REFERENCES "RCRA_EM_WASTE" ("EM_WASTE_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_EM_WASTE_CD_TSDF
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_WASTE_CD_TSDF" ADD CONSTRAINT "FK_EM_WASTE_CD_TSDF_EM_WASTE" FOREIGN KEY ("EM_WASTE_ID")
	  REFERENCES "RCRA_EM_WASTE" ("EM_WASTE_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_EM_WASTE_COMMENT
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_WASTE_COMMENT" ADD CONSTRAINT "FK_EM_WASTE_COMMENT_EM_WASTE" FOREIGN KEY ("EM_WASTE_ID")
	  REFERENCES "RCRA_EM_WASTE" ("EM_WASTE_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_EM_WASTE_PCB
--------------------------------------------------------

  ALTER TABLE "RCRA_EM_WASTE_PCB" ADD CONSTRAINT "FK_EM_WASTE_PCB_EM_WASTE" FOREIGN KEY ("EM_WASTE_ID")
	  REFERENCES "RCRA_EM_WASTE" ("EM_WASTE_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_FA_COST_EST
--------------------------------------------------------

  ALTER TABLE "RCRA_FA_COST_EST" ADD CONSTRAINT "FK_FA_COST_EST_FA_FAC_SUBM" FOREIGN KEY ("FA_FAC_SUBM_ID")
	  REFERENCES "RCRA_FA_FAC_SUBM" ("FA_FAC_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_FA_COST_EST_REL_MECHANISM
--------------------------------------------------------

  ALTER TABLE "RCRA_FA_COST_EST_REL_MECHANISM" ADD CONSTRAINT "FK_FA_CST_EST_RL_MCH_FA_CST_ES" FOREIGN KEY ("FA_COST_EST_ID")
	  REFERENCES "RCRA_FA_COST_EST" ("FA_COST_EST_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_FA_FAC_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_FA_FAC_SUBM" ADD CONSTRAINT "FK_FA_FAC_SUBM_FA_SUBM" FOREIGN KEY ("FA_SUBM_ID")
	  REFERENCES "RCRA_FA_SUBM" ("FA_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_FA_MECHANISM
--------------------------------------------------------

  ALTER TABLE "RCRA_FA_MECHANISM" ADD CONSTRAINT "FK_FA_MECHANISM_FA_FAC_SUBM" FOREIGN KEY ("FA_FAC_SUBM_ID")
	  REFERENCES "RCRA_FA_FAC_SUBM" ("FA_FAC_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_FA_MECHANISM_DETAIL
--------------------------------------------------------

  ALTER TABLE "RCRA_FA_MECHANISM_DETAIL" ADD CONSTRAINT "FK_FA_MECHNISM_DTIL_FA_MCHNISM" FOREIGN KEY ("FA_MECHANISM_ID")
	  REFERENCES "RCRA_FA_MECHANISM" ("FA_MECHANISM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_GIS_FAC_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_GIS_FAC_SUBM" ADD CONSTRAINT "FK_GIS_FAC_SUBM_GIS_SUBM" FOREIGN KEY ("GIS_SUBM_ID")
	  REFERENCES "RCRA_GIS_SUBM" ("GIS_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_GIS_GEO_INFORMATION
--------------------------------------------------------

  ALTER TABLE "RCRA_GIS_GEO_INFORMATION" ADD CONSTRAINT "FK_GIS_GO_INFORMTION_GS_FC_SBM" FOREIGN KEY ("GIS_FAC_SUBM_ID")
	  REFERENCES "RCRA_GIS_FAC_SUBM" ("GIS_FAC_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_CERTIFICATION
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_CERTIFICATION" ADD CONSTRAINT "FK_HD_CERTIFICATION_HD_HANDLER" FOREIGN KEY ("HD_HANDLER_ID")
	  REFERENCES "RCRA_HD_HANDLER" ("HD_HANDLER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_ENV_PERMIT
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_ENV_PERMIT" ADD CONSTRAINT "FK_HD_ENV_PERMIT_HD_HANDLER" FOREIGN KEY ("HD_HANDLER_ID")
	  REFERENCES "RCRA_HD_HANDLER" ("HD_HANDLER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_EPISODIC_EVENT
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_EPISODIC_EVENT" ADD CONSTRAINT "FK_HD_EPISODIC_EVENT_HD_HANDLE" FOREIGN KEY ("HD_HANDLER_ID")
	  REFERENCES "RCRA_HD_HANDLER" ("HD_HANDLER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_EPISODIC_WASTE
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_EPISODIC_WASTE" ADD CONSTRAINT "FK_HD_EPISO_WASTE_HD_EPIS_EVEN" FOREIGN KEY ("HD_EPISODIC_EVENT_ID")
	  REFERENCES "RCRA_HD_EPISODIC_EVENT" ("HD_EPISODIC_EVENT_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_EPISODIC_WASTE_CODE
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_EPISODIC_WASTE_CODE" ADD CONSTRAINT "FK_HD_EPIS_WAST_COD_HD_EPI_WAS" FOREIGN KEY ("HD_EPISODIC_WASTE_ID")
	  REFERENCES "RCRA_HD_EPISODIC_WASTE" ("HD_EPISODIC_WASTE_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_HANDLER
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_HANDLER" ADD CONSTRAINT "FK_HD_HANDLER_HD_HBASIC" FOREIGN KEY ("HD_HBASIC_ID")
	  REFERENCES "RCRA_HD_HBASIC" ("HD_HBASIC_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_HBASIC
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_HBASIC" ADD CONSTRAINT "FK_HD_HBASIC_HD_SUBM" FOREIGN KEY ("HD_SUBM_ID")
	  REFERENCES "RCRA_HD_SUBM" ("HD_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_LQG_CLOSURE
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_LQG_CLOSURE" ADD CONSTRAINT "FK_HD_LQG_CLOSURE_HD_HANDLER" FOREIGN KEY ("HD_HANDLER_ID")
	  REFERENCES "RCRA_HD_HANDLER" ("HD_HANDLER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_LQG_CONSOLIDATION
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_LQG_CONSOLIDATION" ADD CONSTRAINT "FK_HD_LQG_CONSOLIDATI_HD_HANDL" FOREIGN KEY ("HD_HANDLER_ID")
	  REFERENCES "RCRA_HD_HANDLER" ("HD_HANDLER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_NAICS
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_NAICS" ADD CONSTRAINT "FK_HD_NAICS_HD_HANDLER" FOREIGN KEY ("HD_HANDLER_ID")
	  REFERENCES "RCRA_HD_HANDLER" ("HD_HANDLER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_OTHER_ID
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_OTHER_ID" ADD CONSTRAINT "FK_HD_OTHER_ID_HD_HBASIC" FOREIGN KEY ("HD_HBASIC_ID")
	  REFERENCES "RCRA_HD_HBASIC" ("HD_HBASIC_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_OWNEROP
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_OWNEROP" ADD CONSTRAINT "FK_HD_OWNEROP_HD_HANDLER" FOREIGN KEY ("HD_HANDLER_ID")
	  REFERENCES "RCRA_HD_HANDLER" ("HD_HANDLER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_SEC_MATERIAL_ACTIVITY
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_SEC_MATERIAL_ACTIVITY" ADD CONSTRAINT "FK_HD_SEC_MATER_ACTIV_HD_HANDL" FOREIGN KEY ("HD_HANDLER_ID")
	  REFERENCES "RCRA_HD_HANDLER" ("HD_HANDLER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_SEC_WASTE_CODE
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_SEC_WASTE_CODE" ADD CONSTRAINT "FK_HD_SEC_WAS_COD_HD_SEC_MA_AC" FOREIGN KEY ("HD_SEC_MATERIAL_ACTIVITY_ID")
	  REFERENCES "RCRA_HD_SEC_MATERIAL_ACTIVITY" ("HD_SEC_MATERIAL_ACTIVITY_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_STATE_ACTIVITY
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_STATE_ACTIVITY" ADD CONSTRAINT "FK_HD_STATE_ACTIVITY_HD_HANDLE" FOREIGN KEY ("HD_HANDLER_ID")
	  REFERENCES "RCRA_HD_HANDLER" ("HD_HANDLER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_UNIVERSAL_WASTE
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_UNIVERSAL_WASTE" ADD CONSTRAINT "FK_HD_UNIVERSA_WASTE_HD_HANDLE" FOREIGN KEY ("HD_HANDLER_ID")
	  REFERENCES "RCRA_HD_HANDLER" ("HD_HANDLER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_HD_WASTE_CODE
--------------------------------------------------------

  ALTER TABLE "RCRA_HD_WASTE_CODE" ADD CONSTRAINT "FK_HD_WASTE_CODE_HD_HANDLER" FOREIGN KEY ("HD_HANDLER_ID")
	  REFERENCES "RCRA_HD_HANDLER" ("HD_HANDLER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_PRM_EVENT
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_EVENT" ADD CONSTRAINT "FK_PRM_EVENT_PRM_SERIES" FOREIGN KEY ("PRM_SERIES_ID")
	  REFERENCES "RCRA_PRM_SERIES" ("PRM_SERIES_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_PRM_EVENT_COMMITMENT
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_EVENT_COMMITMENT" ADD CONSTRAINT "FK_PRM_EVNT_COMMITMNT_PRM_EVNT" FOREIGN KEY ("PRM_EVENT_ID")
	  REFERENCES "RCRA_PRM_EVENT" ("PRM_EVENT_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_PRM_FAC_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_FAC_SUBM" ADD CONSTRAINT "FK_PRM_FAC_SUBM_PRM_SUBM" FOREIGN KEY ("PRM_SUBM_ID")
	  REFERENCES "RCRA_PRM_SUBM" ("PRM_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_PRM_RELATED_EVENT
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_RELATED_EVENT" ADD CONSTRAINT "FK_PRM_RELTD_EVNT_PRM_UNT_DTIL" FOREIGN KEY ("PRM_UNIT_DETAIL_ID")
	  REFERENCES "RCRA_PRM_UNIT_DETAIL" ("PRM_UNIT_DETAIL_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_PRM_SERIES
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_SERIES" ADD CONSTRAINT "FK_PRM_SERIES_PRM_FAC_SUBM" FOREIGN KEY ("PRM_FAC_SUBM_ID")
	  REFERENCES "RCRA_PRM_FAC_SUBM" ("PRM_FAC_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_PRM_UNIT
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_UNIT" ADD CONSTRAINT "FK_PRM_UNIT_PRM_FAC_SUBM" FOREIGN KEY ("PRM_FAC_SUBM_ID")
	  REFERENCES "RCRA_PRM_FAC_SUBM" ("PRM_FAC_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_PRM_UNIT_DETAIL
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_UNIT_DETAIL" ADD CONSTRAINT "FK_PRM_UNIT_DETAIL_PRM_UNIT" FOREIGN KEY ("PRM_UNIT_ID")
	  REFERENCES "RCRA_PRM_UNIT" ("PRM_UNIT_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_PRM_WASTE_CODE
--------------------------------------------------------

  ALTER TABLE "RCRA_PRM_WASTE_CODE" ADD CONSTRAINT "FK_PRM_WASTE_CDE_PRM_UNT_DETIL" FOREIGN KEY ("PRM_UNIT_DETAIL_ID")
	  REFERENCES "RCRA_PRM_UNIT_DETAIL" ("PRM_UNIT_DETAIL_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_RU_REPORT_UNIV
--------------------------------------------------------

  ALTER TABLE "RCRA_RU_REPORT_UNIV" ADD CONSTRAINT "FK_RU_RPRT_UNV_RU_RPRT_UNV_SBM" FOREIGN KEY ("RU_REPORT_UNIV_SUBM_ID")
	  REFERENCES "RCRA_RU_REPORT_UNIV_SUBM" ("RU_REPORT_UNIV_SUBM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RCRA_RU_REPORT_UNIV_SUBM
--------------------------------------------------------

  ALTER TABLE "RCRA_RU_REPORT_UNIV_SUBM" ADD CONSTRAINT "FK_RU_REPORT_UNIV_SUBM_RU_SUBM" FOREIGN KEY ("RU_SUBM_ID")
	  REFERENCES "RCRA_RU_SUBM" ("RU_SUBM_ID") ON DELETE CASCADE ENABLE;

  ALTER TABLE "RCRA_EM_TR_NUM_WASTE" MODIFY EM_TR_NUM_WASTE_ID DEFAULT sys_guid();

  ALTER TABLE "RCRA_EM_TR_NUM_RESIDUE_NEW" MODIFY EM_TR_NUM_RESIDUE_NEW_ID DEFAULT sys_guid();

  ALTER TABLE "RCRA_EM_TR_NUM_REJ" MODIFY EM_TR_NUM_REJ_ID DEFAULT sys_guid();

  ALTER TABLE "RCRA_EM_TR_NUM_ORIG" MODIFY EM_TR_NUM_ORIG_ID DEFAULT sys_guid();

  ALTER TABLE "RCRA_EM_WASTE_CD_TRANS" MODIFY EM_WASTE_CD_TRANS_ID DEFAULT sys_guid();
