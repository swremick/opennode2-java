//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.12.07 at 11:39:25 AM EST 
//


package com.windsor.node.plugin.icisnpdes.generated;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSeeAlso;
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
 * <p>Java class for EnforcementActionMilestoneKeyElements complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="EnforcementActionMilestoneKeyElements">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;group ref="{http://www.exchangenetwork.net/schema/icis/5}EnforcementActionMilestoneKeyElementsGroup"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "EnforcementActionMilestoneKeyElements", propOrder = {
    "enforcementActionIdentifier",
    "milestoneTypeCode"
})
@XmlSeeAlso({
    Milestone.class
})
@MappedSuperclass
public class EnforcementActionMilestoneKeyElements
    implements Serializable, Equals, HashCode
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "EnforcementActionIdentifier", required = true)
    protected String enforcementActionIdentifier;
    @XmlElement(name = "MilestoneTypeCode", required = true)
    protected String milestoneTypeCode;

    /**
     * Gets the value of the enforcementActionIdentifier property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "ENFRC_ACTN_IDENT", length = 20)
    public String getEnforcementActionIdentifier() {
        return enforcementActionIdentifier;
    }

    /**
     * Sets the value of the enforcementActionIdentifier property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setEnforcementActionIdentifier(String value) {
        this.enforcementActionIdentifier = value;
    }

    @Transient
    public boolean isSetEnforcementActionIdentifier() {
        return (this.enforcementActionIdentifier!= null);
    }

    /**
     * Gets the value of the milestoneTypeCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "MILESTONE_TYPE_CODE", length = 5)
    public String getMilestoneTypeCode() {
        return milestoneTypeCode;
    }

    /**
     * Sets the value of the milestoneTypeCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMilestoneTypeCode(String value) {
        this.milestoneTypeCode = value;
    }

    @Transient
    public boolean isSetMilestoneTypeCode() {
        return (this.milestoneTypeCode!= null);
    }

    public boolean equals(ObjectLocator thisLocator, ObjectLocator thatLocator, Object object, EqualsStrategy strategy) {
        if (!(object instanceof EnforcementActionMilestoneKeyElements)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final EnforcementActionMilestoneKeyElements that = ((EnforcementActionMilestoneKeyElements) object);
        {
            String lhsEnforcementActionIdentifier;
            lhsEnforcementActionIdentifier = this.getEnforcementActionIdentifier();
            String rhsEnforcementActionIdentifier;
            rhsEnforcementActionIdentifier = that.getEnforcementActionIdentifier();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "enforcementActionIdentifier", lhsEnforcementActionIdentifier), LocatorUtils.property(thatLocator, "enforcementActionIdentifier", rhsEnforcementActionIdentifier), lhsEnforcementActionIdentifier, rhsEnforcementActionIdentifier)) {
                return false;
            }
        }
        {
            String lhsMilestoneTypeCode;
            lhsMilestoneTypeCode = this.getMilestoneTypeCode();
            String rhsMilestoneTypeCode;
            rhsMilestoneTypeCode = that.getMilestoneTypeCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "milestoneTypeCode", lhsMilestoneTypeCode), LocatorUtils.property(thatLocator, "milestoneTypeCode", rhsMilestoneTypeCode), lhsMilestoneTypeCode, rhsMilestoneTypeCode)) {
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
            String theEnforcementActionIdentifier;
            theEnforcementActionIdentifier = this.getEnforcementActionIdentifier();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "enforcementActionIdentifier", theEnforcementActionIdentifier), currentHashCode, theEnforcementActionIdentifier);
        }
        {
            String theMilestoneTypeCode;
            theMilestoneTypeCode = this.getMilestoneTypeCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "milestoneTypeCode", theMilestoneTypeCode), currentHashCode, theMilestoneTypeCode);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
