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
 * <p>Java class for LocationAddressDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="LocationAddressDataType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/facilityid/3}LocationAddressText" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/facilityid/3}SupplementalLocationText" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/facilityid/3}LocalityName" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/facilityid/3}StateIdentity" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/facilityid/3}AddressPostalCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/facilityid/3}CountryIdentity" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/facilityid/3}CountyIdentity" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/facilityid/3}TribalLandName" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/facilityid/3}TribalLandIndicator" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/facilityid/3}LocationDescriptionText" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "LocationAddressDataType", propOrder = {
    "locationAddressText",
    "supplementalLocationText",
    "localityName",
    "stateIdentity",
    "addressPostalCode",
    "countryIdentity",
    "countyIdentity",
    "tribalLandName",
    "tribalLandIndicator",
    "locationDescriptionText"
})
public class LocationAddressDataType {

    @XmlElement(name = "LocationAddressText")
    protected String locationAddressText;
    @XmlElement(name = "SupplementalLocationText")
    protected String supplementalLocationText;
    @XmlElement(name = "LocalityName")
    protected String localityName;
    @XmlElement(name = "StateIdentity")
    protected StateIdentityDataType stateIdentity;
    @XmlElement(name = "AddressPostalCode")
    protected AddressPostalCodeDataType addressPostalCode;
    @XmlElement(name = "CountryIdentity")
    protected CountryIdentityDataType countryIdentity;
    @XmlElement(name = "CountyIdentity")
    protected CountyIdentityDataType countyIdentity;
    @XmlElement(name = "TribalLandName")
    protected String tribalLandName;
    @XmlElement(name = "TribalLandIndicator")
    protected String tribalLandIndicator;
    @XmlElement(name = "LocationDescriptionText")
    protected String locationDescriptionText;

    /**
     * Gets the value of the locationAddressText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getLocationAddressText() {
        return locationAddressText;
    }

    /**
     * Sets the value of the locationAddressText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLocationAddressText(String value) {
        this.locationAddressText = value;
    }

    /**
     * Gets the value of the supplementalLocationText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSupplementalLocationText() {
        return supplementalLocationText;
    }

    /**
     * Sets the value of the supplementalLocationText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSupplementalLocationText(String value) {
        this.supplementalLocationText = value;
    }

    /**
     * Gets the value of the localityName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getLocalityName() {
        return localityName;
    }

    /**
     * Sets the value of the localityName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLocalityName(String value) {
        this.localityName = value;
    }

    /**
     * Gets the value of the stateIdentity property.
     * 
     * @return
     *     possible object is
     *     {@link StateIdentityDataType }
     *     
     */
    public StateIdentityDataType getStateIdentity() {
        return stateIdentity;
    }

    /**
     * Sets the value of the stateIdentity property.
     * 
     * @param value
     *     allowed object is
     *     {@link StateIdentityDataType }
     *     
     */
    public void setStateIdentity(StateIdentityDataType value) {
        this.stateIdentity = value;
    }

    /**
     * Gets the value of the addressPostalCode property.
     * 
     * @return
     *     possible object is
     *     {@link AddressPostalCodeDataType }
     *     
     */
    public AddressPostalCodeDataType getAddressPostalCode() {
        return addressPostalCode;
    }

    /**
     * Sets the value of the addressPostalCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link AddressPostalCodeDataType }
     *     
     */
    public void setAddressPostalCode(AddressPostalCodeDataType value) {
        this.addressPostalCode = value;
    }

    /**
     * Gets the value of the countryIdentity property.
     * 
     * @return
     *     possible object is
     *     {@link CountryIdentityDataType }
     *     
     */
    public CountryIdentityDataType getCountryIdentity() {
        return countryIdentity;
    }

    /**
     * Sets the value of the countryIdentity property.
     * 
     * @param value
     *     allowed object is
     *     {@link CountryIdentityDataType }
     *     
     */
    public void setCountryIdentity(CountryIdentityDataType value) {
        this.countryIdentity = value;
    }

    /**
     * Gets the value of the countyIdentity property.
     * 
     * @return
     *     possible object is
     *     {@link CountyIdentityDataType }
     *     
     */
    public CountyIdentityDataType getCountyIdentity() {
        return countyIdentity;
    }

    /**
     * Sets the value of the countyIdentity property.
     * 
     * @param value
     *     allowed object is
     *     {@link CountyIdentityDataType }
     *     
     */
    public void setCountyIdentity(CountyIdentityDataType value) {
        this.countyIdentity = value;
    }

    /**
     * Gets the value of the tribalLandName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTribalLandName() {
        return tribalLandName;
    }

    /**
     * Sets the value of the tribalLandName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTribalLandName(String value) {
        this.tribalLandName = value;
    }

    /**
     * Gets the value of the tribalLandIndicator property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTribalLandIndicator() {
        return tribalLandIndicator;
    }

    /**
     * Sets the value of the tribalLandIndicator property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTribalLandIndicator(String value) {
        this.tribalLandIndicator = value;
    }

    /**
     * Gets the value of the locationDescriptionText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getLocationDescriptionText() {
        return locationDescriptionText;
    }

    /**
     * Sets the value of the locationDescriptionText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLocationDescriptionText(String value) {
        this.locationDescriptionText = value;
    }

}
