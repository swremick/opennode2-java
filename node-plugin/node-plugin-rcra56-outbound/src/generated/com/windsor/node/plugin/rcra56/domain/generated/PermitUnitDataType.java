//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2018.02.26 at 10:48:23 AM EST 
//


package com.windsor.node.plugin.rcra56.domain.generated;

import java.io.Serializable;
import java.math.BigInteger;
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
 * Characteristics of process unit group.
 * 
 * <p>Java class for PermitUnitDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="PermitUnitDataType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}TransactionCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}PermitUnitSequenceNumber"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}PermitUnitName" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}SupplementalInformationText" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}PermitUnitDetail" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "PermitUnitDataType", namespace = "http://www.exchangenetwork.net/schema/RCRA/5", propOrder = {
    "transactionCode",
    "permitUnitSequenceNumber",
    "permitUnitName",
    "supplementalInformationText",
    "permitUnitDetail"
})
@Entity(name = "PermitUnitDataType")
@Table(name = "RCRA_PERMITUNIT")
@Inheritance(strategy = InheritanceType.JOINED)
public class PermitUnitDataType
    implements Serializable, Equals, HashCode
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "TransactionCode", namespace = "http://www.exchangenetwork.net/schema/RCRA/5")
    protected String transactionCode;
    @XmlElement(name = "PermitUnitSequenceNumber", namespace = "http://www.exchangenetwork.net/schema/RCRA/5", required = true)
    protected BigInteger permitUnitSequenceNumber;
    @XmlElement(name = "PermitUnitName", namespace = "http://www.exchangenetwork.net/schema/RCRA/5")
    protected String permitUnitName;
    @XmlElement(name = "SupplementalInformationText", namespace = "http://www.exchangenetwork.net/schema/RCRA/5")
    protected String supplementalInformationText;
    @XmlElement(name = "PermitUnitDetail", namespace = "http://www.exchangenetwork.net/schema/RCRA/5")
    protected List<PermitUnitDetailDataType> permitUnitDetail;
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
     * Gets the value of the permitUnitSequenceNumber property.
     * 
     * @return
     *     possible object is
     *     {@link BigInteger }
     *     
     */
    @Basic
    @Column(name = "PERMITUNITSEQNUMBER", precision = 4, scale = 0)
    public BigInteger getPermitUnitSequenceNumber() {
        return permitUnitSequenceNumber;
    }

    /**
     * Sets the value of the permitUnitSequenceNumber property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigInteger }
     *     
     */
    public void setPermitUnitSequenceNumber(BigInteger value) {
        this.permitUnitSequenceNumber = value;
    }

    @Transient
    public boolean isSetPermitUnitSequenceNumber() {
        return (this.permitUnitSequenceNumber!= null);
    }

    /**
     * Gets the value of the permitUnitName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "PERMITUNITNAME", length = 40)
    public String getPermitUnitName() {
        return permitUnitName;
    }

    /**
     * Sets the value of the permitUnitName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPermitUnitName(String value) {
        this.permitUnitName = value;
    }

    @Transient
    public boolean isSetPermitUnitName() {
        return (this.permitUnitName!= null);
    }

    /**
     * Gets the value of the supplementalInformationText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "SUPPINFTXT", length = 2000)
    public String getSupplementalInformationText() {
        return supplementalInformationText;
    }

    /**
     * Sets the value of the supplementalInformationText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSupplementalInformationText(String value) {
        this.supplementalInformationText = value;
    }

    @Transient
    public boolean isSetSupplementalInformationText() {
        return (this.supplementalInformationText!= null);
    }

    /**
     * Gets the value of the permitUnitDetail property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the permitUnitDetail property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getPermitUnitDetail().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link PermitUnitDetailDataType }
     * 
     * 
     */
    @OneToMany(targetEntity = PermitUnitDetailDataType.class, cascade = {
        CascadeType.ALL
    })
    @JoinColumn(name = "PERMITUNITID")
    public List<PermitUnitDetailDataType> getPermitUnitDetail() {
        if (permitUnitDetail == null) {
            permitUnitDetail = new ArrayList<PermitUnitDetailDataType>();
        }
        return this.permitUnitDetail;
    }

    /**
     * 
     * 
     */
    public void setPermitUnitDetail(List<PermitUnitDetailDataType> permitUnitDetail) {
        this.permitUnitDetail = permitUnitDetail;
    }

    @Transient
    public boolean isSetPermitUnitDetail() {
        return ((this.permitUnitDetail!= null)&&(!this.permitUnitDetail.isEmpty()));
    }

    public void unsetPermitUnitDetail() {
        this.permitUnitDetail = null;
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
        if (!(object instanceof PermitUnitDataType)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final PermitUnitDataType that = ((PermitUnitDataType) object);
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
            BigInteger lhsPermitUnitSequenceNumber;
            lhsPermitUnitSequenceNumber = this.getPermitUnitSequenceNumber();
            BigInteger rhsPermitUnitSequenceNumber;
            rhsPermitUnitSequenceNumber = that.getPermitUnitSequenceNumber();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "permitUnitSequenceNumber", lhsPermitUnitSequenceNumber), LocatorUtils.property(thatLocator, "permitUnitSequenceNumber", rhsPermitUnitSequenceNumber), lhsPermitUnitSequenceNumber, rhsPermitUnitSequenceNumber)) {
                return false;
            }
        }
        {
            String lhsPermitUnitName;
            lhsPermitUnitName = this.getPermitUnitName();
            String rhsPermitUnitName;
            rhsPermitUnitName = that.getPermitUnitName();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "permitUnitName", lhsPermitUnitName), LocatorUtils.property(thatLocator, "permitUnitName", rhsPermitUnitName), lhsPermitUnitName, rhsPermitUnitName)) {
                return false;
            }
        }
        {
            String lhsSupplementalInformationText;
            lhsSupplementalInformationText = this.getSupplementalInformationText();
            String rhsSupplementalInformationText;
            rhsSupplementalInformationText = that.getSupplementalInformationText();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "supplementalInformationText", lhsSupplementalInformationText), LocatorUtils.property(thatLocator, "supplementalInformationText", rhsSupplementalInformationText), lhsSupplementalInformationText, rhsSupplementalInformationText)) {
                return false;
            }
        }
        {
            List<PermitUnitDetailDataType> lhsPermitUnitDetail;
            lhsPermitUnitDetail = (this.isSetPermitUnitDetail()?this.getPermitUnitDetail():null);
            List<PermitUnitDetailDataType> rhsPermitUnitDetail;
            rhsPermitUnitDetail = (that.isSetPermitUnitDetail()?that.getPermitUnitDetail():null);
            if (!strategy.equals(LocatorUtils.property(thisLocator, "permitUnitDetail", lhsPermitUnitDetail), LocatorUtils.property(thatLocator, "permitUnitDetail", rhsPermitUnitDetail), lhsPermitUnitDetail, rhsPermitUnitDetail)) {
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
            BigInteger thePermitUnitSequenceNumber;
            thePermitUnitSequenceNumber = this.getPermitUnitSequenceNumber();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "permitUnitSequenceNumber", thePermitUnitSequenceNumber), currentHashCode, thePermitUnitSequenceNumber);
        }
        {
            String thePermitUnitName;
            thePermitUnitName = this.getPermitUnitName();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "permitUnitName", thePermitUnitName), currentHashCode, thePermitUnitName);
        }
        {
            String theSupplementalInformationText;
            theSupplementalInformationText = this.getSupplementalInformationText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "supplementalInformationText", theSupplementalInformationText), currentHashCode, theSupplementalInformationText);
        }
        {
            List<PermitUnitDetailDataType> thePermitUnitDetail;
            thePermitUnitDetail = (this.isSetPermitUnitDetail()?this.getPermitUnitDetail():null);
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "permitUnitDetail", thePermitUnitDetail), currentHashCode, thePermitUnitDetail);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
