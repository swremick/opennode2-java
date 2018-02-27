//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2018.02.26 at 10:48:23 AM EST 
//


package com.windsor.node.plugin.rcra56.domain.generated;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
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
 * <p>Java class for PenaltyDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="PenaltyDataType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}TransactionCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}PenaltyTypeOwner"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}PenaltyType"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}PenaltyTypeText" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}CashCivilPenaltySoughtAmount" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}Notes" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}Payment" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "PenaltyDataType", namespace = "http://www.exchangenetwork.net/schema/RCRA/5", propOrder = {
    "transactionCode",
    "penaltyTypeOwner",
    "penaltyType",
    "penaltyTypeText",
    "cashCivilPenaltySoughtAmount",
    "notes",
    "payment"
})
@Entity(name = "PenaltyDataType")
@Table(name = "RCRA_PENALTY")
@Inheritance(strategy = InheritanceType.JOINED)
public class PenaltyDataType
    implements Serializable, Equals, HashCode
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "TransactionCode", namespace = "http://www.exchangenetwork.net/schema/RCRA/5")
    protected String transactionCode;
    @XmlElement(name = "PenaltyTypeOwner", namespace = "http://www.exchangenetwork.net/schema/RCRA/5", required = true)
    protected String penaltyTypeOwner;
    @XmlElement(name = "PenaltyType", namespace = "http://www.exchangenetwork.net/schema/RCRA/5", required = true)
    protected String penaltyType;
    @XmlElement(name = "PenaltyTypeText", namespace = "http://www.exchangenetwork.net/schema/RCRA/5")
    protected String penaltyTypeText;
    @XmlElement(name = "CashCivilPenaltySoughtAmount", namespace = "http://www.exchangenetwork.net/schema/RCRA/5")
    protected BigDecimal cashCivilPenaltySoughtAmount;
    @XmlElement(name = "Notes", namespace = "http://www.exchangenetwork.net/schema/RCRA/5")
    protected String notes;
    @XmlElement(name = "Payment", namespace = "http://www.exchangenetwork.net/schema/RCRA/5")
    protected List<PaymentDataType> payment;
    @XmlTransient
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

    @Transient
    public boolean isSetTransactionCode() {
        return (this.transactionCode!= null);
    }

    /**
     * Gets the value of the penaltyTypeOwner property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "PENALTYTYPEOWNR", length = 2)
    public String getPenaltyTypeOwner() {
        return penaltyTypeOwner;
    }

    /**
     * Sets the value of the penaltyTypeOwner property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPenaltyTypeOwner(String value) {
        this.penaltyTypeOwner = value;
    }

    @Transient
    public boolean isSetPenaltyTypeOwner() {
        return (this.penaltyTypeOwner!= null);
    }

    /**
     * Gets the value of the penaltyType property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "PENALTYTYPE", length = 3)
    public String getPenaltyType() {
        return penaltyType;
    }

    /**
     * Sets the value of the penaltyType property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPenaltyType(String value) {
        this.penaltyType = value;
    }

    @Transient
    public boolean isSetPenaltyType() {
        return (this.penaltyType!= null);
    }

    /**
     * Gets the value of the penaltyTypeText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "PENALTYTYPETXT", length = 4000)
    public String getPenaltyTypeText() {
        return penaltyTypeText;
    }

    /**
     * Sets the value of the penaltyTypeText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPenaltyTypeText(String value) {
        this.penaltyTypeText = value;
    }

    @Transient
    public boolean isSetPenaltyTypeText() {
        return (this.penaltyTypeText!= null);
    }

    /**
     * Gets the value of the cashCivilPenaltySoughtAmount property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    @Basic
    @Column(name = "CASHCIVILPENALTYSOUGHTAMT", precision = 13, scale = 2)
    public BigDecimal getCashCivilPenaltySoughtAmount() {
        return cashCivilPenaltySoughtAmount;
    }

    /**
     * Sets the value of the cashCivilPenaltySoughtAmount property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setCashCivilPenaltySoughtAmount(BigDecimal value) {
        this.cashCivilPenaltySoughtAmount = value;
    }

    @Transient
    public boolean isSetCashCivilPenaltySoughtAmount() {
        return (this.cashCivilPenaltySoughtAmount!= null);
    }

    /**
     * Gets the value of the notes property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "NOTES", length = 4000)
    public String getNotes() {
        return notes;
    }

    /**
     * Sets the value of the notes property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNotes(String value) {
        this.notes = value;
    }

    @Transient
    public boolean isSetNotes() {
        return (this.notes!= null);
    }

    /**
     * Gets the value of the payment property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the payment property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getPayment().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link PaymentDataType }
     * 
     * 
     */
    @OneToMany(targetEntity = PaymentDataType.class, cascade = {
        CascadeType.ALL
    })
    @JoinColumn(name = "PENALTYID")
    public List<PaymentDataType> getPayment() {
        if (payment == null) {
            payment = new ArrayList<PaymentDataType>();
        }
        return this.payment;
    }

    /**
     * 
     * 
     */
    public void setPayment(List<PaymentDataType> payment) {
        this.payment = payment;
    }

    @Transient
    public boolean isSetPayment() {
        return ((this.payment!= null)&&(!this.payment.isEmpty()));
    }

    public void unsetPayment() {
        this.payment = null;
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
        if (!(object instanceof PenaltyDataType)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final PenaltyDataType that = ((PenaltyDataType) object);
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
            String lhsPenaltyTypeOwner;
            lhsPenaltyTypeOwner = this.getPenaltyTypeOwner();
            String rhsPenaltyTypeOwner;
            rhsPenaltyTypeOwner = that.getPenaltyTypeOwner();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "penaltyTypeOwner", lhsPenaltyTypeOwner), LocatorUtils.property(thatLocator, "penaltyTypeOwner", rhsPenaltyTypeOwner), lhsPenaltyTypeOwner, rhsPenaltyTypeOwner)) {
                return false;
            }
        }
        {
            String lhsPenaltyType;
            lhsPenaltyType = this.getPenaltyType();
            String rhsPenaltyType;
            rhsPenaltyType = that.getPenaltyType();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "penaltyType", lhsPenaltyType), LocatorUtils.property(thatLocator, "penaltyType", rhsPenaltyType), lhsPenaltyType, rhsPenaltyType)) {
                return false;
            }
        }
        {
            String lhsPenaltyTypeText;
            lhsPenaltyTypeText = this.getPenaltyTypeText();
            String rhsPenaltyTypeText;
            rhsPenaltyTypeText = that.getPenaltyTypeText();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "penaltyTypeText", lhsPenaltyTypeText), LocatorUtils.property(thatLocator, "penaltyTypeText", rhsPenaltyTypeText), lhsPenaltyTypeText, rhsPenaltyTypeText)) {
                return false;
            }
        }
        {
            BigDecimal lhsCashCivilPenaltySoughtAmount;
            lhsCashCivilPenaltySoughtAmount = this.getCashCivilPenaltySoughtAmount();
            BigDecimal rhsCashCivilPenaltySoughtAmount;
            rhsCashCivilPenaltySoughtAmount = that.getCashCivilPenaltySoughtAmount();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "cashCivilPenaltySoughtAmount", lhsCashCivilPenaltySoughtAmount), LocatorUtils.property(thatLocator, "cashCivilPenaltySoughtAmount", rhsCashCivilPenaltySoughtAmount), lhsCashCivilPenaltySoughtAmount, rhsCashCivilPenaltySoughtAmount)) {
                return false;
            }
        }
        {
            String lhsNotes;
            lhsNotes = this.getNotes();
            String rhsNotes;
            rhsNotes = that.getNotes();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "notes", lhsNotes), LocatorUtils.property(thatLocator, "notes", rhsNotes), lhsNotes, rhsNotes)) {
                return false;
            }
        }
        {
            List<PaymentDataType> lhsPayment;
            lhsPayment = (this.isSetPayment()?this.getPayment():null);
            List<PaymentDataType> rhsPayment;
            rhsPayment = (that.isSetPayment()?that.getPayment():null);
            if (!strategy.equals(LocatorUtils.property(thisLocator, "payment", lhsPayment), LocatorUtils.property(thatLocator, "payment", rhsPayment), lhsPayment, rhsPayment)) {
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
            String thePenaltyTypeOwner;
            thePenaltyTypeOwner = this.getPenaltyTypeOwner();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "penaltyTypeOwner", thePenaltyTypeOwner), currentHashCode, thePenaltyTypeOwner);
        }
        {
            String thePenaltyType;
            thePenaltyType = this.getPenaltyType();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "penaltyType", thePenaltyType), currentHashCode, thePenaltyType);
        }
        {
            String thePenaltyTypeText;
            thePenaltyTypeText = this.getPenaltyTypeText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "penaltyTypeText", thePenaltyTypeText), currentHashCode, thePenaltyTypeText);
        }
        {
            BigDecimal theCashCivilPenaltySoughtAmount;
            theCashCivilPenaltySoughtAmount = this.getCashCivilPenaltySoughtAmount();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "cashCivilPenaltySoughtAmount", theCashCivilPenaltySoughtAmount), currentHashCode, theCashCivilPenaltySoughtAmount);
        }
        {
            String theNotes;
            theNotes = this.getNotes();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "notes", theNotes), currentHashCode, theNotes);
        }
        {
            List<PaymentDataType> thePayment;
            thePayment = (this.isSetPayment()?this.getPayment():null);
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "payment", thePayment), currentHashCode, thePayment);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
