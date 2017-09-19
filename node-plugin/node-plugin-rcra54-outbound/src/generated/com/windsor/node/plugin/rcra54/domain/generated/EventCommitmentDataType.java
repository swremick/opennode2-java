//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.06.15 at 06:46:14 PM EDT 
//


package com.windsor.node.plugin.rcra54.domain.generated;

import java.math.BigInteger;
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
 * <p>Java class for EventCommitmentDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="EventCommitmentDataType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}TransactionCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}CommitmentLead"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}CommitmentSequenceNumber"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "EventCommitmentDataType", propOrder = {
    "transactionCode",
    "commitmentLead",
    "commitmentSequenceNumber"
})
@Entity(name = "EventCommitmentDataType")
@Table(name = "RCRA_EVENTCOMMIT")
@Inheritance(strategy = InheritanceType.JOINED)
public class EventCommitmentDataType
    implements Equals, HashCode
{

    @XmlElement(name = "TransactionCode")
    protected String transactionCode;
    @XmlElement(name = "CommitmentLead", required = true)
    protected String commitmentLead;
    @XmlElement(name = "CommitmentSequenceNumber", required = true)
    protected BigInteger commitmentSequenceNumber;
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
     * Gets the value of the commitmentLead property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "COMMITLEAD", length = 2)
    public String getCommitmentLead() {
        return commitmentLead;
    }

    /**
     * Sets the value of the commitmentLead property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCommitmentLead(String value) {
        this.commitmentLead = value;
    }

    /**
     * Gets the value of the commitmentSequenceNumber property.
     * 
     * @return
     *     possible object is
     *     {@link BigInteger }
     *     
     */
    @Basic
    @Column(name = "COMMITSEQNUMBER", precision = 6, scale = 0)
    public BigInteger getCommitmentSequenceNumber() {
        return commitmentSequenceNumber;
    }

    /**
     * Sets the value of the commitmentSequenceNumber property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigInteger }
     *     
     */
    public void setCommitmentSequenceNumber(BigInteger value) {
        this.commitmentSequenceNumber = value;
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
        if (!(object instanceof EventCommitmentDataType)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final EventCommitmentDataType that = ((EventCommitmentDataType) object);
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
            String lhsCommitmentLead;
            lhsCommitmentLead = this.getCommitmentLead();
            String rhsCommitmentLead;
            rhsCommitmentLead = that.getCommitmentLead();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "commitmentLead", lhsCommitmentLead), LocatorUtils.property(thatLocator, "commitmentLead", rhsCommitmentLead), lhsCommitmentLead, rhsCommitmentLead)) {
                return false;
            }
        }
        {
            BigInteger lhsCommitmentSequenceNumber;
            lhsCommitmentSequenceNumber = this.getCommitmentSequenceNumber();
            BigInteger rhsCommitmentSequenceNumber;
            rhsCommitmentSequenceNumber = that.getCommitmentSequenceNumber();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "commitmentSequenceNumber", lhsCommitmentSequenceNumber), LocatorUtils.property(thatLocator, "commitmentSequenceNumber", rhsCommitmentSequenceNumber), lhsCommitmentSequenceNumber, rhsCommitmentSequenceNumber)) {
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
            String theCommitmentLead;
            theCommitmentLead = this.getCommitmentLead();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "commitmentLead", theCommitmentLead), currentHashCode, theCommitmentLead);
        }
        {
            BigInteger theCommitmentSequenceNumber;
            theCommitmentSequenceNumber = this.getCommitmentSequenceNumber();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "commitmentSequenceNumber", theCommitmentSequenceNumber), currentHashCode, theCommitmentSequenceNumber);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
