//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2012.01.24 at 11:33:47 AM PST 
//


package com.windsor.node.plugin.facid3.domain;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for FacilityNAICSDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="FacilityNAICSDataType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/facilityid/3}FacilityNAICSCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/facilityid/3}FacilityNAICSPrimaryIndicator" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "FacilityNAICSDataType", propOrder = {
    "facilityNAICSCode",
    "facilityNAICSPrimaryIndicator"
})
public class FacilityNAICSDataType {

    @XmlElement(name = "FacilityNAICSCode")
    protected String facilityNAICSCode;
    @XmlElement(name = "FacilityNAICSPrimaryIndicator")
    protected FacilityNAICSPrimaryIndicatorDataType facilityNAICSPrimaryIndicator;

    /**
     * Gets the value of the facilityNAICSCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getFacilityNAICSCode() {
        return facilityNAICSCode;
    }

    /**
     * Sets the value of the facilityNAICSCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFacilityNAICSCode(String value) {
        this.facilityNAICSCode = value;
    }

    /**
     * Gets the value of the facilityNAICSPrimaryIndicator property.
     * 
     * @return
     *     possible object is
     *     {@link FacilityNAICSPrimaryIndicatorDataType }
     *     
     */
    public FacilityNAICSPrimaryIndicatorDataType getFacilityNAICSPrimaryIndicator() {
        return facilityNAICSPrimaryIndicator;
    }

    /**
     * Sets the value of the facilityNAICSPrimaryIndicator property.
     * 
     * @param value
     *     allowed object is
     *     {@link FacilityNAICSPrimaryIndicatorDataType }
     *     
     */
    public void setFacilityNAICSPrimaryIndicator(FacilityNAICSPrimaryIndicatorDataType value) {
        this.facilityNAICSPrimaryIndicator = value;
    }

}
