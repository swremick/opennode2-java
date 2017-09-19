//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.12.07 at 11:39:25 AM EST 
//


package com.windsor.node.plugin.icisnpdes.generated;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import com.windsor.node.plugin.common.xml.bind.annotation.adapters.DateNoTimeZoneAdapter;
import org.jvnet.jaxb2_commons.lang.Equals;
import org.jvnet.jaxb2_commons.lang.EqualsStrategy;
import org.jvnet.jaxb2_commons.lang.HashCode;
import org.jvnet.jaxb2_commons.lang.HashCodeStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBEqualsStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBHashCodeStrategy;
import org.jvnet.jaxb2_commons.locator.ObjectLocator;
import org.jvnet.jaxb2_commons.locator.util.LocatorUtils;


/**
 * <p>Java class for PermitTrackingEventKeyElements complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="PermitTrackingEventKeyElements">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;group ref="{http://www.exchangenetwork.net/schema/icis/5}PermitTrackingEventKeyElementsGroup"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "PermitTrackingEventKeyElements", propOrder = {
    "permitIdentifier",
    "permitTrackingEventCode",
    "permitTrackingEventDate"
})
@XmlSeeAlso({
    PermitTrackingEvent.class
})
@MappedSuperclass
public class PermitTrackingEventKeyElements
    implements Serializable, Equals, HashCode
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "PermitIdentifier", required = true)
    protected String permitIdentifier;
    @XmlElement(name = "PermitTrackingEventCode", required = true)
    protected String permitTrackingEventCode;
    @XmlElement(name = "PermitTrackingEventDate", required = true, type = String.class)
    @XmlJavaTypeAdapter(DateNoTimeZoneAdapter.class)
    @XmlSchemaType(name = "date")
    protected Date permitTrackingEventDate;

    /**
     * Gets the value of the permitIdentifier property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "PRMT_IDENT", columnDefinition = "char(9)", length = 9)
    public String getPermitIdentifier() {
        return permitIdentifier;
    }

    /**
     * Sets the value of the permitIdentifier property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPermitIdentifier(String value) {
        this.permitIdentifier = value;
    }

    @Transient
    public boolean isSetPermitIdentifier() {
        return (this.permitIdentifier!= null);
    }

    /**
     * Gets the value of the permitTrackingEventCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "PRMT_TRACK_EVT_CODE", length = 3)
    public String getPermitTrackingEventCode() {
        return permitTrackingEventCode;
    }

    /**
     * Sets the value of the permitTrackingEventCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPermitTrackingEventCode(String value) {
        this.permitTrackingEventCode = value;
    }

    @Transient
    public boolean isSetPermitTrackingEventCode() {
        return (this.permitTrackingEventCode!= null);
    }

    /**
     * Gets the value of the permitTrackingEventDate property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "PRMT_TRACK_EVT_DATE")
    @Temporal(TemporalType.DATE)
    public Date getPermitTrackingEventDate() {
        return permitTrackingEventDate;
    }

    /**
     * Sets the value of the permitTrackingEventDate property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPermitTrackingEventDate(Date value) {
        this.permitTrackingEventDate = value;
    }

    @Transient
    public boolean isSetPermitTrackingEventDate() {
        return (this.permitTrackingEventDate!= null);
    }

    public boolean equals(ObjectLocator thisLocator, ObjectLocator thatLocator, Object object, EqualsStrategy strategy) {
        if (!(object instanceof PermitTrackingEventKeyElements)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final PermitTrackingEventKeyElements that = ((PermitTrackingEventKeyElements) object);
        {
            String lhsPermitIdentifier;
            lhsPermitIdentifier = this.getPermitIdentifier();
            String rhsPermitIdentifier;
            rhsPermitIdentifier = that.getPermitIdentifier();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "permitIdentifier", lhsPermitIdentifier), LocatorUtils.property(thatLocator, "permitIdentifier", rhsPermitIdentifier), lhsPermitIdentifier, rhsPermitIdentifier)) {
                return false;
            }
        }
        {
            String lhsPermitTrackingEventCode;
            lhsPermitTrackingEventCode = this.getPermitTrackingEventCode();
            String rhsPermitTrackingEventCode;
            rhsPermitTrackingEventCode = that.getPermitTrackingEventCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "permitTrackingEventCode", lhsPermitTrackingEventCode), LocatorUtils.property(thatLocator, "permitTrackingEventCode", rhsPermitTrackingEventCode), lhsPermitTrackingEventCode, rhsPermitTrackingEventCode)) {
                return false;
            }
        }
        {
            Date lhsPermitTrackingEventDate;
            lhsPermitTrackingEventDate = this.getPermitTrackingEventDate();
            Date rhsPermitTrackingEventDate;
            rhsPermitTrackingEventDate = that.getPermitTrackingEventDate();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "permitTrackingEventDate", lhsPermitTrackingEventDate), LocatorUtils.property(thatLocator, "permitTrackingEventDate", rhsPermitTrackingEventDate), lhsPermitTrackingEventDate, rhsPermitTrackingEventDate)) {
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
        int currentHashCode = 1;
        {
            String thePermitIdentifier;
            thePermitIdentifier = this.getPermitIdentifier();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "permitIdentifier", thePermitIdentifier), currentHashCode, thePermitIdentifier);
        }
        {
            String thePermitTrackingEventCode;
            thePermitTrackingEventCode = this.getPermitTrackingEventCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "permitTrackingEventCode", thePermitTrackingEventCode), currentHashCode, thePermitTrackingEventCode);
        }
        {
            Date thePermitTrackingEventDate;
            thePermitTrackingEventDate = this.getPermitTrackingEventDate();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "permitTrackingEventDate", thePermitTrackingEventDate), currentHashCode, thePermitTrackingEventDate);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
