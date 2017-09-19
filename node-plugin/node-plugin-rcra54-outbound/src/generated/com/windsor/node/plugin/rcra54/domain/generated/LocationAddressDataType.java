//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.06.15 at 06:46:14 PM EDT 
//


package com.windsor.node.plugin.rcra54.domain.generated;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;

import org.jvnet.jaxb2_commons.lang.Equals;
import org.jvnet.jaxb2_commons.lang.EqualsStrategy;
import org.jvnet.jaxb2_commons.lang.HashCode;
import org.jvnet.jaxb2_commons.lang.HashCodeStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBEqualsStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBHashCodeStrategy;
import org.jvnet.jaxb2_commons.locator.ObjectLocator;
import org.jvnet.jaxb2_commons.locator.util.LocatorUtils;


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
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}LocationAddressNumberText" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}LocationAddressText"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}SupplementalLocationText" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}LocalityName"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}StateUSPSCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}CountryName" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}LocationZIPCode"/>
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
    "locationAddressNumberText",
    "locationAddressText",
    "supplementalLocationText",
    "localityName",
    "stateUSPSCode",
    "countryName",
    "locationZIPCode"
})
@Entity(name = "LocationAddressDataType")
@Table(name = "RCRA_LOCADDRESS")
@Inheritance(strategy = InheritanceType.JOINED)
public class LocationAddressDataType
    implements Equals, HashCode
{

    @XmlElement(name = "LocationAddressNumberText")
    protected String locationAddressNumberText;
    @XmlElement(name = "LocationAddressText", required = true)
    protected String locationAddressText;
    @XmlElement(name = "SupplementalLocationText")
    protected String supplementalLocationText;
    @XmlElement(name = "LocalityName", required = true)
    protected String localityName;
    @XmlElement(name = "StateUSPSCode")
    protected String stateUSPSCode;
    @XmlElement(name = "CountryName")
    protected String countryName;
    @XmlElement(name = "LocationZIPCode", required = true)
    protected String locationZIPCode;
    @XmlAttribute(name = "Id")
    protected Long id;

    /**
     * Gets the value of the locationAddressNumberText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "LOCADDRESS", length = 12)
    public String getLocationAddressNumberText() {
        return locationAddressNumberText;
    }

    /**
     * Sets the value of the locationAddressNumberText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLocationAddressNumberText(String value) {
        this.locationAddressNumberText = value;
    }

    /**
     * Gets the value of the locationAddressText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "LOCADDRESSTXT", length = 50)
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
    @Basic
    @Column(name = "SUPPLOCTXT", length = 50)
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
    @Basic
    @Column(name = "LOCALITYNAME", length = 25)
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
     * Gets the value of the stateUSPSCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "STATEUSPSCODE", length = 2)
    public String getStateUSPSCode() {
        return stateUSPSCode;
    }

    /**
     * Sets the value of the stateUSPSCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setStateUSPSCode(String value) {
        this.stateUSPSCode = value;
    }

    /**
     * Gets the value of the countryName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "COUNTRYNAME", length = 2)
    public String getCountryName() {
        return countryName;
    }

    /**
     * Sets the value of the countryName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCountryName(String value) {
        this.countryName = value;
    }

    /**
     * Gets the value of the locationZIPCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "LOCZIPCODE", length = 14)
    public String getLocationZIPCode() {
        return locationZIPCode;
    }

    /**
     * Sets the value of the locationZIPCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLocationZIPCode(String value) {
        this.locationZIPCode = value;
    }

    /**
     * Gets the value of the id property.
     * 
     * @return
     *     possible object is
     *     {@link Long }
     *     
     */
    @Id
    @Column(name = "ID")
    @GeneratedValue(generator = "ColSequence", strategy = GenerationType.AUTO)
    @SequenceGenerator(name = "ColSequence", sequenceName = "COLUMN_ID_SEQUENCE", allocationSize = 1)
    public Long getId() {
        return id;
    }

    /**
     * Sets the value of the id property.
     * 
     * @param value
     *     allowed object is
     *     {@link Long }
     *     
     */
    public void setId(Long value) {
        this.id = value;
    }

    @Override
	public boolean equals(ObjectLocator thisLocator, ObjectLocator thatLocator, Object object, EqualsStrategy strategy) {
        if (!(object instanceof LocationAddressDataType)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final LocationAddressDataType that = ((LocationAddressDataType) object);
        {
            String lhsLocationAddressNumberText;
            lhsLocationAddressNumberText = this.getLocationAddressNumberText();
            String rhsLocationAddressNumberText;
            rhsLocationAddressNumberText = that.getLocationAddressNumberText();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "locationAddressNumberText", lhsLocationAddressNumberText), LocatorUtils.property(thatLocator, "locationAddressNumberText", rhsLocationAddressNumberText), lhsLocationAddressNumberText, rhsLocationAddressNumberText)) {
                return false;
            }
        }
        {
            String lhsLocationAddressText;
            lhsLocationAddressText = this.getLocationAddressText();
            String rhsLocationAddressText;
            rhsLocationAddressText = that.getLocationAddressText();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "locationAddressText", lhsLocationAddressText), LocatorUtils.property(thatLocator, "locationAddressText", rhsLocationAddressText), lhsLocationAddressText, rhsLocationAddressText)) {
                return false;
            }
        }
        {
            String lhsSupplementalLocationText;
            lhsSupplementalLocationText = this.getSupplementalLocationText();
            String rhsSupplementalLocationText;
            rhsSupplementalLocationText = that.getSupplementalLocationText();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "supplementalLocationText", lhsSupplementalLocationText), LocatorUtils.property(thatLocator, "supplementalLocationText", rhsSupplementalLocationText), lhsSupplementalLocationText, rhsSupplementalLocationText)) {
                return false;
            }
        }
        {
            String lhsLocalityName;
            lhsLocalityName = this.getLocalityName();
            String rhsLocalityName;
            rhsLocalityName = that.getLocalityName();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "localityName", lhsLocalityName), LocatorUtils.property(thatLocator, "localityName", rhsLocalityName), lhsLocalityName, rhsLocalityName)) {
                return false;
            }
        }
        {
            String lhsStateUSPSCode;
            lhsStateUSPSCode = this.getStateUSPSCode();
            String rhsStateUSPSCode;
            rhsStateUSPSCode = that.getStateUSPSCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "stateUSPSCode", lhsStateUSPSCode), LocatorUtils.property(thatLocator, "stateUSPSCode", rhsStateUSPSCode), lhsStateUSPSCode, rhsStateUSPSCode)) {
                return false;
            }
        }
        {
            String lhsCountryName;
            lhsCountryName = this.getCountryName();
            String rhsCountryName;
            rhsCountryName = that.getCountryName();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "countryName", lhsCountryName), LocatorUtils.property(thatLocator, "countryName", rhsCountryName), lhsCountryName, rhsCountryName)) {
                return false;
            }
        }
        {
            String lhsLocationZIPCode;
            lhsLocationZIPCode = this.getLocationZIPCode();
            String rhsLocationZIPCode;
            rhsLocationZIPCode = that.getLocationZIPCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "locationZIPCode", lhsLocationZIPCode), LocatorUtils.property(thatLocator, "locationZIPCode", rhsLocationZIPCode), lhsLocationZIPCode, rhsLocationZIPCode)) {
                return false;
            }
        }
        return true;
    }

    @Override
	public boolean equals(Object object) {
        final EqualsStrategy strategy = JAXBEqualsStrategy.INSTANCE;
        return equals(null, null, object, strategy);
    }

    @Override
	public int hashCode(ObjectLocator locator, HashCodeStrategy strategy) {
        int currentHashCode = 1;
        {
            String theLocationAddressNumberText;
            theLocationAddressNumberText = this.getLocationAddressNumberText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "locationAddressNumberText", theLocationAddressNumberText), currentHashCode, theLocationAddressNumberText);
        }
        {
            String theLocationAddressText;
            theLocationAddressText = this.getLocationAddressText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "locationAddressText", theLocationAddressText), currentHashCode, theLocationAddressText);
        }
        {
            String theSupplementalLocationText;
            theSupplementalLocationText = this.getSupplementalLocationText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "supplementalLocationText", theSupplementalLocationText), currentHashCode, theSupplementalLocationText);
        }
        {
            String theLocalityName;
            theLocalityName = this.getLocalityName();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "localityName", theLocalityName), currentHashCode, theLocalityName);
        }
        {
            String theStateUSPSCode;
            theStateUSPSCode = this.getStateUSPSCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "stateUSPSCode", theStateUSPSCode), currentHashCode, theStateUSPSCode);
        }
        {
            String theCountryName;
            theCountryName = this.getCountryName();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "countryName", theCountryName), currentHashCode, theCountryName);
        }
        {
            String theLocationZIPCode;
            theLocationZIPCode = this.getLocationZIPCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "locationZIPCode", theLocationZIPCode), currentHashCode, theLocationZIPCode);
        }
        return currentHashCode;
    }

    @Override
	public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
