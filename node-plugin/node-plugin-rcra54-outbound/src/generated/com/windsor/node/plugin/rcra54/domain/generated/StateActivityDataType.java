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
 * State waste activity of the handler.
 * 
 * <p>Java class for StateActivityDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="StateActivityDataType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}TransactionCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}StateActivityOwnerName"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}StateActivityTypeCode"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}StateActivityTypeText" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "StateActivityDataType", propOrder = {
    "transactionCode",
    "stateActivityOwnerName",
    "stateActivityTypeCode",
    "stateActivityTypeText"
})
@Entity(name = "StateActivityDataType")
@Table(name = "RCRA_STATEACT")
@Inheritance(strategy = InheritanceType.JOINED)
public class StateActivityDataType
    implements Equals, HashCode
{

    @XmlElement(name = "TransactionCode")
    protected String transactionCode;
    @XmlElement(name = "StateActivityOwnerName", required = true)
    protected String stateActivityOwnerName;
    @XmlElement(name = "StateActivityTypeCode", required = true)
    protected String stateActivityTypeCode;
    @XmlElement(name = "StateActivityTypeText")
    protected String stateActivityTypeText;
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
     * Gets the value of the stateActivityOwnerName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "STATEACTOWNRNAME", length = 2)
    public String getStateActivityOwnerName() {
        return stateActivityOwnerName;
    }

    /**
     * Sets the value of the stateActivityOwnerName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setStateActivityOwnerName(String value) {
        this.stateActivityOwnerName = value;
    }

    /**
     * Gets the value of the stateActivityTypeCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "STATEACTTYPECODE", length = 5)
    public String getStateActivityTypeCode() {
        return stateActivityTypeCode;
    }

    /**
     * Sets the value of the stateActivityTypeCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setStateActivityTypeCode(String value) {
        this.stateActivityTypeCode = value;
    }

    /**
     * Gets the value of the stateActivityTypeText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "STATEACTTYPETXT", length = 255)
    public String getStateActivityTypeText() {
        return stateActivityTypeText;
    }

    /**
     * Sets the value of the stateActivityTypeText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setStateActivityTypeText(String value) {
        this.stateActivityTypeText = value;
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
        if (!(object instanceof StateActivityDataType)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final StateActivityDataType that = ((StateActivityDataType) object);
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
            String lhsStateActivityOwnerName;
            lhsStateActivityOwnerName = this.getStateActivityOwnerName();
            String rhsStateActivityOwnerName;
            rhsStateActivityOwnerName = that.getStateActivityOwnerName();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "stateActivityOwnerName", lhsStateActivityOwnerName), LocatorUtils.property(thatLocator, "stateActivityOwnerName", rhsStateActivityOwnerName), lhsStateActivityOwnerName, rhsStateActivityOwnerName)) {
                return false;
            }
        }
        {
            String lhsStateActivityTypeCode;
            lhsStateActivityTypeCode = this.getStateActivityTypeCode();
            String rhsStateActivityTypeCode;
            rhsStateActivityTypeCode = that.getStateActivityTypeCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "stateActivityTypeCode", lhsStateActivityTypeCode), LocatorUtils.property(thatLocator, "stateActivityTypeCode", rhsStateActivityTypeCode), lhsStateActivityTypeCode, rhsStateActivityTypeCode)) {
                return false;
            }
        }
        {
            String lhsStateActivityTypeText;
            lhsStateActivityTypeText = this.getStateActivityTypeText();
            String rhsStateActivityTypeText;
            rhsStateActivityTypeText = that.getStateActivityTypeText();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "stateActivityTypeText", lhsStateActivityTypeText), LocatorUtils.property(thatLocator, "stateActivityTypeText", rhsStateActivityTypeText), lhsStateActivityTypeText, rhsStateActivityTypeText)) {
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
            String theStateActivityOwnerName;
            theStateActivityOwnerName = this.getStateActivityOwnerName();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "stateActivityOwnerName", theStateActivityOwnerName), currentHashCode, theStateActivityOwnerName);
        }
        {
            String theStateActivityTypeCode;
            theStateActivityTypeCode = this.getStateActivityTypeCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "stateActivityTypeCode", theStateActivityTypeCode), currentHashCode, theStateActivityTypeCode);
        }
        {
            String theStateActivityTypeText;
            theStateActivityTypeText = this.getStateActivityTypeText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "stateActivityTypeText", theStateActivityTypeText), currentHashCode, theStateActivityTypeText);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
