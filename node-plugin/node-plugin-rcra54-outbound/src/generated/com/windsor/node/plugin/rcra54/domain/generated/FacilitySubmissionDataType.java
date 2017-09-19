//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.06.15 at 06:46:14 PM EDT 
//


package com.windsor.node.plugin.rcra54.domain.generated;

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
 * <p>Java class for FacilitySubmissionDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="FacilitySubmissionDataType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}TransactionCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}HandlerID"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}PublicUseExtractIndicator" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}FacilityRegistryID" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}DataAccessText" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}Handler" maxOccurs="unbounded"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}OtherID" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "FacilitySubmissionDataType", propOrder = {
    "transactionCode",
    "handlerID",
    "publicUseExtractIndicator",
    "facilityRegistryID",
    "dataAccessText",
    "handler",
    "otherID"
})
@Entity(name = "FacilitySubmissionDataType")
@Table(name = "RCRA_FACSUB")
@Inheritance(strategy = InheritanceType.JOINED)
public class FacilitySubmissionDataType
    implements Equals, HashCode
{

    @XmlElement(name = "TransactionCode")
    protected String transactionCode;
    @XmlElement(name = "HandlerID", required = true)
    protected String handlerID;
    @XmlElement(name = "PublicUseExtractIndicator")
    protected String publicUseExtractIndicator;
    @XmlElement(name = "FacilityRegistryID")
    protected String facilityRegistryID;
    @XmlElement(name = "DataAccessText")
    protected String dataAccessText;
    @XmlElement(name = "Handler", required = true)
    protected List<HandlerDataType> handler;
    @XmlElement(name = "OtherID")
    protected List<OtherIDDataType> otherID;
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
     * Gets the value of the handlerID property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "HANDLERID", length = 12)
    public String getHandlerID() {
        return handlerID;
    }

    /**
     * Sets the value of the handlerID property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setHandlerID(String value) {
        this.handlerID = value;
    }

    /**
     * Gets the value of the publicUseExtractIndicator property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "PUBUSEEXTRACTIND", length = 1)
    public String getPublicUseExtractIndicator() {
        return publicUseExtractIndicator;
    }

    /**
     * Sets the value of the publicUseExtractIndicator property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPublicUseExtractIndicator(String value) {
        this.publicUseExtractIndicator = value;
    }

    /**
     * Gets the value of the facilityRegistryID property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "FACREGISTRYID", length = 12)
    public String getFacilityRegistryID() {
        return facilityRegistryID;
    }

    /**
     * Sets the value of the facilityRegistryID property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFacilityRegistryID(String value) {
        this.facilityRegistryID = value;
    }

    /**
     * Gets the value of the dataAccessText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "DATACCESSTXT", length = 255)
    public String getDataAccessText() {
        return dataAccessText;
    }

    /**
     * Sets the value of the dataAccessText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDataAccessText(String value) {
        this.dataAccessText = value;
    }

    /**
     * Gets the value of the handler property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the handler property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getHandler().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link HandlerDataType }
     * 
     * 
     */
    @OneToMany(targetEntity = HandlerDataType.class, cascade = {
        CascadeType.ALL
    })
    @JoinColumn(name = "FACSUBID")
    public List<HandlerDataType> getHandler() {
        if (handler == null) {
            handler = new ArrayList<HandlerDataType>();
        }
        return this.handler;
    }

    /**
     * 
     * 
     */
    public void setHandler(List<HandlerDataType> handler) {
        this.handler = handler;
    }

    /**
     * Gets the value of the otherID property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the otherID property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getOtherID().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link OtherIDDataType }
     * 
     * 
     */
    @OneToMany(targetEntity = OtherIDDataType.class, cascade = {
        CascadeType.ALL
    })
    @JoinColumn(name = "FACSUBID")
    public List<OtherIDDataType> getOtherID() {
        if (otherID == null) {
            otherID = new ArrayList<OtherIDDataType>();
        }
        return this.otherID;
    }

    /**
     * 
     * 
     */
    public void setOtherID(List<OtherIDDataType> otherID) {
        this.otherID = otherID;
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
        if (!(object instanceof FacilitySubmissionDataType)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final FacilitySubmissionDataType that = ((FacilitySubmissionDataType) object);
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
            String lhsHandlerID;
            lhsHandlerID = this.getHandlerID();
            String rhsHandlerID;
            rhsHandlerID = that.getHandlerID();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "handlerID", lhsHandlerID), LocatorUtils.property(thatLocator, "handlerID", rhsHandlerID), lhsHandlerID, rhsHandlerID)) {
                return false;
            }
        }
        {
            String lhsPublicUseExtractIndicator;
            lhsPublicUseExtractIndicator = this.getPublicUseExtractIndicator();
            String rhsPublicUseExtractIndicator;
            rhsPublicUseExtractIndicator = that.getPublicUseExtractIndicator();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "publicUseExtractIndicator", lhsPublicUseExtractIndicator), LocatorUtils.property(thatLocator, "publicUseExtractIndicator", rhsPublicUseExtractIndicator), lhsPublicUseExtractIndicator, rhsPublicUseExtractIndicator)) {
                return false;
            }
        }
        {
            String lhsFacilityRegistryID;
            lhsFacilityRegistryID = this.getFacilityRegistryID();
            String rhsFacilityRegistryID;
            rhsFacilityRegistryID = that.getFacilityRegistryID();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "facilityRegistryID", lhsFacilityRegistryID), LocatorUtils.property(thatLocator, "facilityRegistryID", rhsFacilityRegistryID), lhsFacilityRegistryID, rhsFacilityRegistryID)) {
                return false;
            }
        }
        {
            String lhsDataAccessText;
            lhsDataAccessText = this.getDataAccessText();
            String rhsDataAccessText;
            rhsDataAccessText = that.getDataAccessText();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "dataAccessText", lhsDataAccessText), LocatorUtils.property(thatLocator, "dataAccessText", rhsDataAccessText), lhsDataAccessText, rhsDataAccessText)) {
                return false;
            }
        }
        {
            List<HandlerDataType> lhsHandler;
            lhsHandler = (((this.handler!= null)&&(!this.handler.isEmpty()))?this.getHandler():null);
            List<HandlerDataType> rhsHandler;
            rhsHandler = (((that.handler!= null)&&(!that.handler.isEmpty()))?that.getHandler():null);
            if (!strategy.equals(LocatorUtils.property(thisLocator, "handler", lhsHandler), LocatorUtils.property(thatLocator, "handler", rhsHandler), lhsHandler, rhsHandler)) {
                return false;
            }
        }
        {
            List<OtherIDDataType> lhsOtherID;
            lhsOtherID = (((this.otherID!= null)&&(!this.otherID.isEmpty()))?this.getOtherID():null);
            List<OtherIDDataType> rhsOtherID;
            rhsOtherID = (((that.otherID!= null)&&(!that.otherID.isEmpty()))?that.getOtherID():null);
            if (!strategy.equals(LocatorUtils.property(thisLocator, "otherID", lhsOtherID), LocatorUtils.property(thatLocator, "otherID", rhsOtherID), lhsOtherID, rhsOtherID)) {
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
            String theHandlerID;
            theHandlerID = this.getHandlerID();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "handlerID", theHandlerID), currentHashCode, theHandlerID);
        }
        {
            String thePublicUseExtractIndicator;
            thePublicUseExtractIndicator = this.getPublicUseExtractIndicator();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "publicUseExtractIndicator", thePublicUseExtractIndicator), currentHashCode, thePublicUseExtractIndicator);
        }
        {
            String theFacilityRegistryID;
            theFacilityRegistryID = this.getFacilityRegistryID();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "facilityRegistryID", theFacilityRegistryID), currentHashCode, theFacilityRegistryID);
        }
        {
            String theDataAccessText;
            theDataAccessText = this.getDataAccessText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "dataAccessText", theDataAccessText), currentHashCode, theDataAccessText);
        }
        {
            List<HandlerDataType> theHandler;
            theHandler = (((this.handler!= null)&&(!this.handler.isEmpty()))?this.getHandler():null);
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "handler", theHandler), currentHashCode, theHandler);
        }
        {
            List<OtherIDDataType> theOtherID;
            theOtherID = (((this.otherID!= null)&&(!this.otherID.isEmpty()))?this.getOtherID():null);
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "otherID", theOtherID), currentHashCode, theOtherID);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
