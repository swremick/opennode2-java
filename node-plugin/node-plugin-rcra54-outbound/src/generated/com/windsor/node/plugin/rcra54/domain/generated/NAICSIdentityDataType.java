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
 * NAICS Codes reported for the handler.
 * 
 * <p>Java class for NAICSIdentityDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="NAICSIdentityDataType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}TransactionCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}NAICSSequenceNumber"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}NAICSOwnerCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}NAICSCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}NAICSText" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "NAICSIdentityDataType", propOrder = {
    "transactionCode",
    "naicsSequenceNumber",
    "naicsOwnerCode",
    "naicsCode",
    "naicsText"
})
@Entity(name = "NAICSIdentityDataType")
@Table(name = "RCRA_NAICS")
@Inheritance(strategy = InheritanceType.JOINED)
public class NAICSIdentityDataType
    implements Equals, HashCode
{

    @XmlElement(name = "TransactionCode")
    protected String transactionCode;
    @XmlElement(name = "NAICSSequenceNumber", required = true)
    protected String naicsSequenceNumber;
    @XmlElement(name = "NAICSOwnerCode")
    protected String naicsOwnerCode;
    @XmlElement(name = "NAICSCode")
    protected String naicsCode;
    @XmlElement(name = "NAICSText")
    protected String naicsText;
    @XmlAttribute(name = "Id")
    protected Long id;

    /**
     * Gets the value of the transactionCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "TRANSACTIONCODE", length = 1)
    public String getTransactionCode() {
        return transactionCode;
    }

    /**
     * Sets the value of the transactionCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTransactionCode(String value) {
        this.transactionCode = value;
    }

    /**
     * Gets the value of the naicsSequenceNumber property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "NAICSSEQNUMBER", length = 4)
    public String getNAICSSequenceNumber() {
        return naicsSequenceNumber;
    }

    /**
     * Sets the value of the naicsSequenceNumber property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNAICSSequenceNumber(String value) {
        this.naicsSequenceNumber = value;
    }

    /**
     * Gets the value of the naicsOwnerCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "NAICSOWNRCODE", length = 2)
    public String getNAICSOwnerCode() {
        return naicsOwnerCode;
    }

    /**
     * Sets the value of the naicsOwnerCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNAICSOwnerCode(String value) {
        this.naicsOwnerCode = value;
    }

    /**
     * Gets the value of the naicsCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "NAICSCODE", length = 6)
    public String getNAICSCode() {
        return naicsCode;
    }

    /**
     * Sets the value of the naicsCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNAICSCode(String value) {
        this.naicsCode = value;
    }

    /**
     * Gets the value of the naicsText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "NAICSTXT", length = 255)
    public String getNAICSText() {
        return naicsText;
    }

    /**
     * Sets the value of the naicsText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNAICSText(String value) {
        this.naicsText = value;
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

    public boolean equals(ObjectLocator thisLocator, ObjectLocator thatLocator, Object object, EqualsStrategy strategy) {
        if (!(object instanceof NAICSIdentityDataType)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final NAICSIdentityDataType that = ((NAICSIdentityDataType) object);
        {
            String lhsTransactionCode;
            lhsTransactionCode = this.getTransactionCode();
            String rhsTransactionCode;
            rhsTransactionCode = that.getTransactionCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "transactionCode", lhsTransactionCode), LocatorUtils.property(thatLocator, "transactionCode", rhsTransactionCode), lhsTransactionCode, rhsTransactionCode)) {
                return false;
            }
        }
        {
            String lhsNAICSSequenceNumber;
            lhsNAICSSequenceNumber = this.getNAICSSequenceNumber();
            String rhsNAICSSequenceNumber;
            rhsNAICSSequenceNumber = that.getNAICSSequenceNumber();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "naicsSequenceNumber", lhsNAICSSequenceNumber), LocatorUtils.property(thatLocator, "naicsSequenceNumber", rhsNAICSSequenceNumber), lhsNAICSSequenceNumber, rhsNAICSSequenceNumber)) {
                return false;
            }
        }
        {
            String lhsNAICSOwnerCode;
            lhsNAICSOwnerCode = this.getNAICSOwnerCode();
            String rhsNAICSOwnerCode;
            rhsNAICSOwnerCode = that.getNAICSOwnerCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "naicsOwnerCode", lhsNAICSOwnerCode), LocatorUtils.property(thatLocator, "naicsOwnerCode", rhsNAICSOwnerCode), lhsNAICSOwnerCode, rhsNAICSOwnerCode)) {
                return false;
            }
        }
        {
            String lhsNAICSCode;
            lhsNAICSCode = this.getNAICSCode();
            String rhsNAICSCode;
            rhsNAICSCode = that.getNAICSCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "naicsCode", lhsNAICSCode), LocatorUtils.property(thatLocator, "naicsCode", rhsNAICSCode), lhsNAICSCode, rhsNAICSCode)) {
                return false;
            }
        }
        {
            String lhsNAICSText;
            lhsNAICSText = this.getNAICSText();
            String rhsNAICSText;
            rhsNAICSText = that.getNAICSText();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "naicsText", lhsNAICSText), LocatorUtils.property(thatLocator, "naicsText", rhsNAICSText), lhsNAICSText, rhsNAICSText)) {
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
            String theTransactionCode;
            theTransactionCode = this.getTransactionCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "transactionCode", theTransactionCode), currentHashCode, theTransactionCode);
        }
        {
            String theNAICSSequenceNumber;
            theNAICSSequenceNumber = this.getNAICSSequenceNumber();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "naicsSequenceNumber", theNAICSSequenceNumber), currentHashCode, theNAICSSequenceNumber);
        }
        {
            String theNAICSOwnerCode;
            theNAICSOwnerCode = this.getNAICSOwnerCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "naicsOwnerCode", theNAICSOwnerCode), currentHashCode, theNAICSOwnerCode);
        }
        {
            String theNAICSCode;
            theNAICSCode = this.getNAICSCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "naicsCode", theNAICSCode), currentHashCode, theNAICSCode);
        }
        {
            String theNAICSText;
            theNAICSText = this.getNAICSText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "naicsText", theNAICSText), currentHashCode, theNAICSText);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
