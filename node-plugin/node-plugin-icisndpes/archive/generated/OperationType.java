//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.12.07 at 11:39:25 AM EST 
//


package com.windsor.node.plugin.icisnpdes.generated;

import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for OperationType.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="OperationType">
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string">
 *     &lt;enumeration value="AirComplianceMonitoringStrategySubmission"/>
 *     &lt;enumeration value="AirDACaseFileSubmission"/>
 *     &lt;enumeration value="AirDAComplianceMonitoringSubmission"/>
 *     &lt;enumeration value="AirDAEnforcementActionLinkageSubmission"/>
 *     &lt;enumeration value="AirDAEnforcementActionMilestoneSubmission"/>
 *     &lt;enumeration value="AirDAFormalEnforcementActionSubmission"/>
 *     &lt;enumeration value="AirDAInformalEnforcementActionSubmission"/>
 *     &lt;enumeration value="AirFacilitySubmission"/>
 *     &lt;enumeration value="AirPollutantsSubmission"/>
 *     &lt;enumeration value="AirProgramsSubmission"/>
 *     &lt;enumeration value="AirTVACCSubmission"/>
 *     &lt;enumeration value="BasicPermitSubmission"/>
 *     &lt;enumeration value="BiosolidsPermitSubmission"/>
 *     &lt;enumeration value="BiosolidsProgramReportSubmission"/>
 *     &lt;enumeration value="CaseFileLinkageSubmission"/>
 *     &lt;enumeration value="CAFOAnnualReportSubmission"/>
 *     &lt;enumeration value="CAFOPermitSubmission"/>
 *     &lt;enumeration value="ComplianceMonitoringLinkageSubmission"/>
 *     &lt;enumeration value="ComplianceMonitoringSubmission"/>
 *     &lt;enumeration value="ComplianceScheduleSubmission"/>
 *     &lt;enumeration value="CopyMGPLimitSetSubmission"/>
 *     &lt;enumeration value="CSOEventReportSubmission"/>
 *     &lt;enumeration value="CSOPermitSubmission"/>
 *     &lt;enumeration value="DischargeMonitoringReportSubmission"/>
 *     &lt;enumeration value="DMRProgramReportLinkageSubmission"/>
 *     &lt;enumeration value="DMRViolationSubmission"/>
 *     &lt;enumeration value="EffluentTradePartnerSubmission"/>
 *     &lt;enumeration value="EnforcementActionMilestoneSubmission"/>
 *     &lt;enumeration value="EnforcementActionViolationLinkageSubmission"/>
 *     &lt;enumeration value="FederalComplianceMonitoringSubmission"/>
 *     &lt;enumeration value="FinalOrderViolationLinkageSubmission"/>
 *     &lt;enumeration value="FormalEnforcementActionSubmission"/>
 *     &lt;enumeration value="GeneralPermitSubmission"/>
 *     &lt;enumeration value="HistoricalPermitScheduleEventsSubmission"/>
 *     &lt;enumeration value="InformalEnforcementActionSubmission"/>
 *     &lt;enumeration value="LimitSetSubmission"/>
 *     &lt;enumeration value="LimitsSubmission"/>
 *     &lt;enumeration value="LocalLimitsProgramReportSubmission"/>
 *     &lt;enumeration value="MasterGeneralPermitSubmission"/>
 *     &lt;enumeration value="NarrativeConditionScheduleSubmission"/>
 *     &lt;enumeration value="ParameterLimitsSubmission"/>
 *     &lt;enumeration value="PermitReissuanceSubmission"/>
 *     &lt;enumeration value="PermittedFeatureSubmission"/>
 *     &lt;enumeration value="PermitTerminationSubmission"/>
 *     &lt;enumeration value="PermitTrackingEventSubmission"/>
 *     &lt;enumeration value="POTWPermitSubmission"/>
 *     &lt;enumeration value="PretreatmentPerformanceSummarySubmission"/>
 *     &lt;enumeration value="PretreatmentPermitSubmission"/>
 *     &lt;enumeration value="ScheduleEventViolationSubmission"/>
 *     &lt;enumeration value="SingleEventViolationSubmission"/>
 *     &lt;enumeration value="SSOAnnualReportSubmission"/>
 *     &lt;enumeration value="SSOEventReportSubmission"/>
 *     &lt;enumeration value="SSOMonthlyEventReportSubmission"/>
 *     &lt;enumeration value="SWConstructionPermitSubmission"/>
 *     &lt;enumeration value="SWEventReportSubmission"/>
 *     &lt;enumeration value="SWIndustrialAnnualReportSubmission"/>
 *     &lt;enumeration value="SWIndustrialPermitSubmission"/>
 *     &lt;enumeration value="SWMS4LargePermitSubmission"/>
 *     &lt;enumeration value="SWMS4ProgramReportSubmission"/>
 *     &lt;enumeration value="SWMS4SmallPermitSubmission"/>
 *     &lt;enumeration value="UnpermittedFacilitySubmission"/>
 *   &lt;/restriction>
 * &lt;/simpleType>
 * </pre>
 * 
 */
@XmlType(name = "OperationType")
@XmlEnum
public enum OperationType {

    @XmlEnumValue("AirComplianceMonitoringStrategySubmission")
    AIR_COMPLIANCE_MONITORING_STRATEGY_SUBMISSION("AirComplianceMonitoringStrategySubmission"),
    @XmlEnumValue("AirDACaseFileSubmission")
    AIR_DA_CASE_FILE_SUBMISSION("AirDACaseFileSubmission"),
    @XmlEnumValue("AirDAComplianceMonitoringSubmission")
    AIR_DA_COMPLIANCE_MONITORING_SUBMISSION("AirDAComplianceMonitoringSubmission"),
    @XmlEnumValue("AirDAEnforcementActionLinkageSubmission")
    AIR_DA_ENFORCEMENT_ACTION_LINKAGE_SUBMISSION("AirDAEnforcementActionLinkageSubmission"),
    @XmlEnumValue("AirDAEnforcementActionMilestoneSubmission")
    AIR_DA_ENFORCEMENT_ACTION_MILESTONE_SUBMISSION("AirDAEnforcementActionMilestoneSubmission"),
    @XmlEnumValue("AirDAFormalEnforcementActionSubmission")
    AIR_DA_FORMAL_ENFORCEMENT_ACTION_SUBMISSION("AirDAFormalEnforcementActionSubmission"),
    @XmlEnumValue("AirDAInformalEnforcementActionSubmission")
    AIR_DA_INFORMAL_ENFORCEMENT_ACTION_SUBMISSION("AirDAInformalEnforcementActionSubmission"),
    @XmlEnumValue("AirFacilitySubmission")
    AIR_FACILITY_SUBMISSION("AirFacilitySubmission"),
    @XmlEnumValue("AirPollutantsSubmission")
    AIR_POLLUTANTS_SUBMISSION("AirPollutantsSubmission"),
    @XmlEnumValue("AirProgramsSubmission")
    AIR_PROGRAMS_SUBMISSION("AirProgramsSubmission"),
    @XmlEnumValue("AirTVACCSubmission")
    AIR_TVACC_SUBMISSION("AirTVACCSubmission"),
    @XmlEnumValue("BasicPermitSubmission")
    BASIC_PERMIT_SUBMISSION("BasicPermitSubmission"),
    @XmlEnumValue("BiosolidsPermitSubmission")
    BIOSOLIDS_PERMIT_SUBMISSION("BiosolidsPermitSubmission"),
    @XmlEnumValue("BiosolidsProgramReportSubmission")
    BIOSOLIDS_PROGRAM_REPORT_SUBMISSION("BiosolidsProgramReportSubmission"),
    @XmlEnumValue("CaseFileLinkageSubmission")
    CASE_FILE_LINKAGE_SUBMISSION("CaseFileLinkageSubmission"),
    @XmlEnumValue("CAFOAnnualReportSubmission")
    CAFO_ANNUAL_REPORT_SUBMISSION("CAFOAnnualReportSubmission"),
    @XmlEnumValue("CAFOPermitSubmission")
    CAFO_PERMIT_SUBMISSION("CAFOPermitSubmission"),
    @XmlEnumValue("ComplianceMonitoringLinkageSubmission")
    COMPLIANCE_MONITORING_LINKAGE_SUBMISSION("ComplianceMonitoringLinkageSubmission"),
    @XmlEnumValue("ComplianceMonitoringSubmission")
    COMPLIANCE_MONITORING_SUBMISSION("ComplianceMonitoringSubmission"),
    @XmlEnumValue("ComplianceScheduleSubmission")
    COMPLIANCE_SCHEDULE_SUBMISSION("ComplianceScheduleSubmission"),
    @XmlEnumValue("CopyMGPLimitSetSubmission")
    COPY_MGP_LIMIT_SET_SUBMISSION("CopyMGPLimitSetSubmission"),
    @XmlEnumValue("CSOEventReportSubmission")
    CSO_EVENT_REPORT_SUBMISSION("CSOEventReportSubmission"),
    @XmlEnumValue("CSOPermitSubmission")
    CSO_PERMIT_SUBMISSION("CSOPermitSubmission"),
    @XmlEnumValue("DischargeMonitoringReportSubmission")
    DISCHARGE_MONITORING_REPORT_SUBMISSION("DischargeMonitoringReportSubmission"),
    @XmlEnumValue("DMRProgramReportLinkageSubmission")
    DMR_PROGRAM_REPORT_LINKAGE_SUBMISSION("DMRProgramReportLinkageSubmission"),
    @XmlEnumValue("DMRViolationSubmission")
    DMR_VIOLATION_SUBMISSION("DMRViolationSubmission"),
    @XmlEnumValue("EffluentTradePartnerSubmission")
    EFFLUENT_TRADE_PARTNER_SUBMISSION("EffluentTradePartnerSubmission"),
    @XmlEnumValue("EnforcementActionMilestoneSubmission")
    ENFORCEMENT_ACTION_MILESTONE_SUBMISSION("EnforcementActionMilestoneSubmission"),
    @XmlEnumValue("EnforcementActionViolationLinkageSubmission")
    ENFORCEMENT_ACTION_VIOLATION_LINKAGE_SUBMISSION("EnforcementActionViolationLinkageSubmission"),
    @XmlEnumValue("FederalComplianceMonitoringSubmission")
    FEDERAL_COMPLIANCE_MONITORING_SUBMISSION("FederalComplianceMonitoringSubmission"),
    @XmlEnumValue("FinalOrderViolationLinkageSubmission")
    FINAL_ORDER_VIOLATION_LINKAGE_SUBMISSION("FinalOrderViolationLinkageSubmission"),
    @XmlEnumValue("FormalEnforcementActionSubmission")
    FORMAL_ENFORCEMENT_ACTION_SUBMISSION("FormalEnforcementActionSubmission"),
    @XmlEnumValue("GeneralPermitSubmission")
    GENERAL_PERMIT_SUBMISSION("GeneralPermitSubmission"),
    @XmlEnumValue("HistoricalPermitScheduleEventsSubmission")
    HISTORICAL_PERMIT_SCHEDULE_EVENTS_SUBMISSION("HistoricalPermitScheduleEventsSubmission"),
    @XmlEnumValue("InformalEnforcementActionSubmission")
    INFORMAL_ENFORCEMENT_ACTION_SUBMISSION("InformalEnforcementActionSubmission"),
    @XmlEnumValue("LimitSetSubmission")
    LIMIT_SET_SUBMISSION("LimitSetSubmission"),
    @XmlEnumValue("LimitsSubmission")
    LIMITS_SUBMISSION("LimitsSubmission"),
    @XmlEnumValue("LocalLimitsProgramReportSubmission")
    LOCAL_LIMITS_PROGRAM_REPORT_SUBMISSION("LocalLimitsProgramReportSubmission"),
    @XmlEnumValue("MasterGeneralPermitSubmission")
    MASTER_GENERAL_PERMIT_SUBMISSION("MasterGeneralPermitSubmission"),
    @XmlEnumValue("NarrativeConditionScheduleSubmission")
    NARRATIVE_CONDITION_SCHEDULE_SUBMISSION("NarrativeConditionScheduleSubmission"),
    @XmlEnumValue("ParameterLimitsSubmission")
    PARAMETER_LIMITS_SUBMISSION("ParameterLimitsSubmission"),
    @XmlEnumValue("PermitReissuanceSubmission")
    PERMIT_REISSUANCE_SUBMISSION("PermitReissuanceSubmission"),
    @XmlEnumValue("PermittedFeatureSubmission")
    PERMITTED_FEATURE_SUBMISSION("PermittedFeatureSubmission"),
    @XmlEnumValue("PermitTerminationSubmission")
    PERMIT_TERMINATION_SUBMISSION("PermitTerminationSubmission"),
    @XmlEnumValue("PermitTrackingEventSubmission")
    PERMIT_TRACKING_EVENT_SUBMISSION("PermitTrackingEventSubmission"),
    @XmlEnumValue("POTWPermitSubmission")
    POTW_PERMIT_SUBMISSION("POTWPermitSubmission"),
    @XmlEnumValue("PretreatmentPerformanceSummarySubmission")
    PRETREATMENT_PERFORMANCE_SUMMARY_SUBMISSION("PretreatmentPerformanceSummarySubmission"),
    @XmlEnumValue("PretreatmentPermitSubmission")
    PRETREATMENT_PERMIT_SUBMISSION("PretreatmentPermitSubmission"),
    @XmlEnumValue("ScheduleEventViolationSubmission")
    SCHEDULE_EVENT_VIOLATION_SUBMISSION("ScheduleEventViolationSubmission"),
    @XmlEnumValue("SingleEventViolationSubmission")
    SINGLE_EVENT_VIOLATION_SUBMISSION("SingleEventViolationSubmission"),
    @XmlEnumValue("SSOAnnualReportSubmission")
    SSO_ANNUAL_REPORT_SUBMISSION("SSOAnnualReportSubmission"),
    @XmlEnumValue("SSOEventReportSubmission")
    SSO_EVENT_REPORT_SUBMISSION("SSOEventReportSubmission"),
    @XmlEnumValue("SSOMonthlyEventReportSubmission")
    SSO_MONTHLY_EVENT_REPORT_SUBMISSION("SSOMonthlyEventReportSubmission"),
    @XmlEnumValue("SWConstructionPermitSubmission")
    SW_CONSTRUCTION_PERMIT_SUBMISSION("SWConstructionPermitSubmission"),
    @XmlEnumValue("SWEventReportSubmission")
    SW_EVENT_REPORT_SUBMISSION("SWEventReportSubmission"),
    @XmlEnumValue("SWIndustrialAnnualReportSubmission")
    SW_INDUSTRIAL_ANNUAL_REPORT_SUBMISSION("SWIndustrialAnnualReportSubmission"),
    @XmlEnumValue("SWIndustrialPermitSubmission")
    SW_INDUSTRIAL_PERMIT_SUBMISSION("SWIndustrialPermitSubmission"),
    @XmlEnumValue("SWMS4LargePermitSubmission")
    SWMS_4_LARGE_PERMIT_SUBMISSION("SWMS4LargePermitSubmission"),
    @XmlEnumValue("SWMS4ProgramReportSubmission")
    SWMS_4_PROGRAM_REPORT_SUBMISSION("SWMS4ProgramReportSubmission"),
    @XmlEnumValue("SWMS4SmallPermitSubmission")
    SWMS_4_SMALL_PERMIT_SUBMISSION("SWMS4SmallPermitSubmission"),
    @XmlEnumValue("UnpermittedFacilitySubmission")
    UNPERMITTED_FACILITY_SUBMISSION("UnpermittedFacilitySubmission");
    private final String value;

    OperationType(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static OperationType fromValue(String v) {
        for (OperationType c: OperationType.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }

}
