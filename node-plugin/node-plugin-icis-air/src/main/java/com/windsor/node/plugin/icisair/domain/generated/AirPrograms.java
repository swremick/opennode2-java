//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2014.09.02 at 11:05:46 AM PDT 
//


package com.windsor.node.plugin.icisair.domain.generated;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Embedded;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
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
 * <p>Java class for AirPrograms complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="AirPrograms">
 *   &lt;complexContent>
 *     &lt;extension base="{http://www.exchangenetwork.net/schema/icis/5}AirProgramsKeyElements">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}OtherProgramDescriptionText" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}AirProgramOperatingStatusData" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}AirProgramSubpartData" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/extension>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "AirPrograms", propOrder = {
    "otherProgramDescriptionText",
    "airProgramOperatingStatusData",
    "airProgramSubpartData"
})
@Embeddable
public class AirPrograms
    extends AirProgramsKeyElements
    implements Serializable, Equals, HashCode
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "OtherProgramDescriptionText")
    protected String otherProgramDescriptionText;
    @XmlElement(name = "AirProgramOperatingStatusData")
    protected AirProgramOperatingStatusData airProgramOperatingStatusData;
    @XmlElement(name = "AirProgramSubpartData")
    protected List<AirProgramSubpartData> airProgramSubpartData;

    /**
     * Gets the value of the otherProgramDescriptionText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "OTHR_PROG_DESC_TXT", length = 100)
    public String getOtherProgramDescriptionText() {
        return otherProgramDescriptionText;
    }

    /**
     * Sets the value of the otherProgramDescriptionText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setOtherProgramDescriptionText(String value) {
        this.otherProgramDescriptionText = value;
    }

    @Transient
    public boolean isSetOtherProgramDescriptionText() {
        return (this.otherProgramDescriptionText!= null);
    }

    /**
     * Gets the value of the airProgramOperatingStatusData property.
     * 
     * @return
     *     possible object is
     *     {@link AirProgramOperatingStatusData }
     *     
     */
    @Embedded
    public AirProgramOperatingStatusData getAirProgramOperatingStatusData() {
        return airProgramOperatingStatusData;
    }

    /**
     * Sets the value of the airProgramOperatingStatusData property.
     * 
     * @param value
     *     allowed object is
     *     {@link AirProgramOperatingStatusData }
     *     
     */
    public void setAirProgramOperatingStatusData(AirProgramOperatingStatusData value) {
        this.airProgramOperatingStatusData = value;
    }

    @Transient
    public boolean isSetAirProgramOperatingStatusData() {
        return (this.airProgramOperatingStatusData!= null);
    }

    /**
     * Gets the value of the airProgramSubpartData property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the airProgramSubpartData property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getAirProgramSubpartData().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link AirProgramSubpartData }
     * 
     * 
     */
    @OneToMany(targetEntity = AirProgramSubpartData.class, cascade = {
        CascadeType.ALL
    })
    @JoinColumn(name = "ICA_PROGS_ID")
    public List<AirProgramSubpartData> getAirProgramSubpartData() {
        if (airProgramSubpartData == null) {
            airProgramSubpartData = new ArrayList<AirProgramSubpartData>();
        }
        return this.airProgramSubpartData;
    }

    /**
     * 
     * 
     */
    public void setAirProgramSubpartData(List<AirProgramSubpartData> airProgramSubpartData) {
        this.airProgramSubpartData = airProgramSubpartData;
    }

    @Transient
    public boolean isSetAirProgramSubpartData() {
        return ((this.airProgramSubpartData!= null)&&(!this.airProgramSubpartData.isEmpty()));
    }

    public void unsetAirProgramSubpartData() {
        this.airProgramSubpartData = null;
    }

    public boolean equals(ObjectLocator thisLocator, ObjectLocator thatLocator, Object object, EqualsStrategy strategy) {
        if (!(object instanceof AirPrograms)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        if (!super.equals(thisLocator, thatLocator, object, strategy)) {
            return false;
        }
        final AirPrograms that = ((AirPrograms) object);
        {
            String lhsOtherProgramDescriptionText;
            lhsOtherProgramDescriptionText = this.getOtherProgramDescriptionText();
            String rhsOtherProgramDescriptionText;
            rhsOtherProgramDescriptionText = that.getOtherProgramDescriptionText();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "otherProgramDescriptionText", lhsOtherProgramDescriptionText), LocatorUtils.property(thatLocator, "otherProgramDescriptionText", rhsOtherProgramDescriptionText), lhsOtherProgramDescriptionText, rhsOtherProgramDescriptionText)) {
                return false;
            }
        }
        {
            AirProgramOperatingStatusData lhsAirProgramOperatingStatusData;
            lhsAirProgramOperatingStatusData = this.getAirProgramOperatingStatusData();
            AirProgramOperatingStatusData rhsAirProgramOperatingStatusData;
            rhsAirProgramOperatingStatusData = that.getAirProgramOperatingStatusData();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "airProgramOperatingStatusData", lhsAirProgramOperatingStatusData), LocatorUtils.property(thatLocator, "airProgramOperatingStatusData", rhsAirProgramOperatingStatusData), lhsAirProgramOperatingStatusData, rhsAirProgramOperatingStatusData)) {
                return false;
            }
        }
        {
            List<AirProgramSubpartData> lhsAirProgramSubpartData;
            lhsAirProgramSubpartData = (this.isSetAirProgramSubpartData()?this.getAirProgramSubpartData():null);
            List<AirProgramSubpartData> rhsAirProgramSubpartData;
            rhsAirProgramSubpartData = (that.isSetAirProgramSubpartData()?that.getAirProgramSubpartData():null);
            if (!strategy.equals(LocatorUtils.property(thisLocator, "airProgramSubpartData", lhsAirProgramSubpartData), LocatorUtils.property(thatLocator, "airProgramSubpartData", rhsAirProgramSubpartData), lhsAirProgramSubpartData, rhsAirProgramSubpartData)) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object object) {
        final EqualsStrategy strategy = JAXBEqualsStrategy.INSTANCE;
        return equals(null, null, object, strategy);
    }

    public int hashCode(ObjectLocator locator, HashCodeStrategy strategy) {
        int currentHashCode = super.hashCode(locator, strategy);
        {
            String theOtherProgramDescriptionText;
            theOtherProgramDescriptionText = this.getOtherProgramDescriptionText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "otherProgramDescriptionText", theOtherProgramDescriptionText), currentHashCode, theOtherProgramDescriptionText);
        }
        {
            AirProgramOperatingStatusData theAirProgramOperatingStatusData;
            theAirProgramOperatingStatusData = this.getAirProgramOperatingStatusData();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "airProgramOperatingStatusData", theAirProgramOperatingStatusData), currentHashCode, theAirProgramOperatingStatusData);
        }
        {
            List<AirProgramSubpartData> theAirProgramSubpartData;
            theAirProgramSubpartData = (this.isSetAirProgramSubpartData()?this.getAirProgramSubpartData():null);
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "airProgramSubpartData", theAirProgramSubpartData), currentHashCode, theAirProgramSubpartData);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
