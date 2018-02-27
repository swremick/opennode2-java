//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2018.02.26 at 10:48:23 AM EST 
//


package com.windsor.node.plugin.rcra56.domain.generated;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlTransient;
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
 * Types of Laboratory Waste that the Handler has opted to manage under SubPart K.
 * 
 * <p>Java class for LaboratoryHazardousWasteDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="LaboratoryHazardousWasteDataType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}CollegeIndicator"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}HospitalIndicator"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}NonProfitIndicator"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}WithdrawalIndicator"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "LaboratoryHazardousWasteDataType", namespace = "http://www.exchangenetwork.net/schema/RCRA/5", propOrder = {
    "collegeIndicator",
    "hospitalIndicator",
    "nonProfitIndicator",
    "withdrawalIndicator"
})
@Entity(name = "LaboratoryHazardousWasteDataType")
@Table(name = "RCRA_LABHZRDWASTE")
@Inheritance(strategy = InheritanceType.JOINED)
public class LaboratoryHazardousWasteDataType
    implements Serializable, Equals, HashCode
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "CollegeIndicator", namespace = "http://www.exchangenetwork.net/schema/RCRA/5", required = true)
    protected String collegeIndicator;
    @XmlElement(name = "HospitalIndicator", namespace = "http://www.exchangenetwork.net/schema/RCRA/5", required = true)
    protected String hospitalIndicator;
    @XmlElement(name = "NonProfitIndicator", namespace = "http://www.exchangenetwork.net/schema/RCRA/5", required = true)
    protected String nonProfitIndicator;
    @XmlElement(name = "WithdrawalIndicator", namespace = "http://www.exchangenetwork.net/schema/RCRA/5", required = true)
    protected String withdrawalIndicator;
    @XmlTransient
    protected Long id;

    /**
     * Gets the value of the collegeIndicator property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "COLLEGEIND", length = 1)
    public String getCollegeIndicator() {
        return collegeIndicator;
    }

    /**
     * Sets the value of the collegeIndicator property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCollegeIndicator(String value) {
        this.collegeIndicator = value;
    }

    @Transient
    public boolean isSetCollegeIndicator() {
        return (this.collegeIndicator!= null);
    }

    /**
     * Gets the value of the hospitalIndicator property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "HOSPITALIND", length = 1)
    public String getHospitalIndicator() {
        return hospitalIndicator;
    }

    /**
     * Sets the value of the hospitalIndicator property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setHospitalIndicator(String value) {
        this.hospitalIndicator = value;
    }

    @Transient
    public boolean isSetHospitalIndicator() {
        return (this.hospitalIndicator!= null);
    }

    /**
     * Gets the value of the nonProfitIndicator property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "NONPROFITIND", length = 1)
    public String getNonProfitIndicator() {
        return nonProfitIndicator;
    }

    /**
     * Sets the value of the nonProfitIndicator property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNonProfitIndicator(String value) {
        this.nonProfitIndicator = value;
    }

    @Transient
    public boolean isSetNonProfitIndicator() {
        return (this.nonProfitIndicator!= null);
    }

    /**
     * Gets the value of the withdrawalIndicator property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "WITHDRAWALIND", length = 1)
    public String getWithdrawalIndicator() {
        return withdrawalIndicator;
    }

    /**
     * Sets the value of the withdrawalIndicator property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWithdrawalIndicator(String value) {
        this.withdrawalIndicator = value;
    }

    @Transient
    public boolean isSetWithdrawalIndicator() {
        return (this.withdrawalIndicator!= null);
    }

    /**
     * 
     * 
     * @return
     *     possible object is
     *     {@link Long }
     *     
     */
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getID() {
        return id;
    }

    /**
     * 
     * 
     * @param value
     *     allowed object is
     *     {@link Long }
     *     
     */
    public void setID(Long value) {
        this.id = value;
    }

    public boolean equals(ObjectLocator thisLocator, ObjectLocator thatLocator, Object object, EqualsStrategy strategy) {
        if (!(object instanceof LaboratoryHazardousWasteDataType)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final LaboratoryHazardousWasteDataType that = ((LaboratoryHazardousWasteDataType) object);
        {
            String lhsCollegeIndicator;
            lhsCollegeIndicator = this.getCollegeIndicator();
            String rhsCollegeIndicator;
            rhsCollegeIndicator = that.getCollegeIndicator();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "collegeIndicator", lhsCollegeIndicator), LocatorUtils.property(thatLocator, "collegeIndicator", rhsCollegeIndicator), lhsCollegeIndicator, rhsCollegeIndicator)) {
                return false;
            }
        }
        {
            String lhsHospitalIndicator;
            lhsHospitalIndicator = this.getHospitalIndicator();
            String rhsHospitalIndicator;
            rhsHospitalIndicator = that.getHospitalIndicator();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "hospitalIndicator", lhsHospitalIndicator), LocatorUtils.property(thatLocator, "hospitalIndicator", rhsHospitalIndicator), lhsHospitalIndicator, rhsHospitalIndicator)) {
                return false;
            }
        }
        {
            String lhsNonProfitIndicator;
            lhsNonProfitIndicator = this.getNonProfitIndicator();
            String rhsNonProfitIndicator;
            rhsNonProfitIndicator = that.getNonProfitIndicator();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "nonProfitIndicator", lhsNonProfitIndicator), LocatorUtils.property(thatLocator, "nonProfitIndicator", rhsNonProfitIndicator), lhsNonProfitIndicator, rhsNonProfitIndicator)) {
                return false;
            }
        }
        {
            String lhsWithdrawalIndicator;
            lhsWithdrawalIndicator = this.getWithdrawalIndicator();
            String rhsWithdrawalIndicator;
            rhsWithdrawalIndicator = that.getWithdrawalIndicator();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "withdrawalIndicator", lhsWithdrawalIndicator), LocatorUtils.property(thatLocator, "withdrawalIndicator", rhsWithdrawalIndicator), lhsWithdrawalIndicator, rhsWithdrawalIndicator)) {
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
            String theCollegeIndicator;
            theCollegeIndicator = this.getCollegeIndicator();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "collegeIndicator", theCollegeIndicator), currentHashCode, theCollegeIndicator);
        }
        {
            String theHospitalIndicator;
            theHospitalIndicator = this.getHospitalIndicator();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "hospitalIndicator", theHospitalIndicator), currentHashCode, theHospitalIndicator);
        }
        {
            String theNonProfitIndicator;
            theNonProfitIndicator = this.getNonProfitIndicator();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "nonProfitIndicator", theNonProfitIndicator), currentHashCode, theNonProfitIndicator);
        }
        {
            String theWithdrawalIndicator;
            theWithdrawalIndicator = this.getWithdrawalIndicator();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "withdrawalIndicator", theWithdrawalIndicator), currentHashCode, theWithdrawalIndicator);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
