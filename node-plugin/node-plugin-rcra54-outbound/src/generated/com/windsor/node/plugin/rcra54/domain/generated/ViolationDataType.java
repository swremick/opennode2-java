//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.06.15 at 06:46:14 PM EDT 
//


package com.windsor.node.plugin.rcra54.domain.generated;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;
import org.jvnet.hyperjaxb3.xml.bind.annotation.adapters.XMLGregorianCalendarAsDate;
import org.jvnet.hyperjaxb3.xml.bind.annotation.adapters.XmlAdapterUtils;
import org.jvnet.jaxb2_commons.lang.Equals;
import org.jvnet.jaxb2_commons.lang.EqualsStrategy;
import org.jvnet.jaxb2_commons.lang.HashCode;
import org.jvnet.jaxb2_commons.lang.HashCodeStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBEqualsStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBHashCodeStrategy;
import org.jvnet.jaxb2_commons.locator.ObjectLocator;
import org.jvnet.jaxb2_commons.locator.util.LocatorUtils;


/**
 * <p>Java class for ViolationDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ViolationDataType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}TransactionCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}ViolationActivityLocation"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}ViolationSequenceNumber"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}AgencyWhichDeterminedViolation"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}AgencyText" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}ViolationTypeOwner" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}ViolationType" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}ViolationTypeText" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}FormerCitationName" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}ViolationDeterminedDate" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}ReturnComplianceActualDate" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}ReturnToComplianceQualifier" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}ReturnToComplianceQualifierText" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}ViolationResponsibleAgency" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}ViolationResponsibleAgencyText" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}Notes" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}Citation" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ViolationDataType", propOrder = {
    "transactionCode",
    "violationActivityLocation",
    "violationSequenceNumber",
    "agencyWhichDeterminedViolation",
    "agencyText",
    "violationTypeOwner",
    "violationType",
    "violationTypeText",
    "formerCitationName",
    "violationDeterminedDate",
    "returnComplianceActualDate",
    "returnToComplianceQualifier",
    "returnToComplianceQualifierText",
    "violationResponsibleAgency",
    "violationResponsibleAgencyText",
    "notes",
    "citation"
})
@Entity(name = "ViolationDataType")
@Table(name = "RCRA_VIO")
@Inheritance(strategy = InheritanceType.JOINED)
public class ViolationDataType
    implements Equals, HashCode
{

    @XmlElement(name = "TransactionCode")
    protected String transactionCode;
    @XmlElement(name = "ViolationActivityLocation", required = true)
    protected String violationActivityLocation;
    @XmlElement(name = "ViolationSequenceNumber", required = true)
    protected BigInteger violationSequenceNumber;
    @XmlElement(name = "AgencyWhichDeterminedViolation", required = true)
    protected String agencyWhichDeterminedViolation;
    @XmlElement(name = "AgencyText")
    protected String agencyText;
    @XmlElement(name = "ViolationTypeOwner")
    protected String violationTypeOwner;
    @XmlElement(name = "ViolationType")
    protected String violationType;
    @XmlElement(name = "ViolationTypeText")
    protected String violationTypeText;
    @XmlElement(name = "FormerCitationName")
    protected String formerCitationName;
    @XmlElement(name = "ViolationDeterminedDate")
    protected XMLGregorianCalendar violationDeterminedDate;
    @XmlElement(name = "ReturnComplianceActualDate")
    protected XMLGregorianCalendar returnComplianceActualDate;
    @XmlElement(name = "ReturnToComplianceQualifier")
    protected String returnToComplianceQualifier;
    @XmlElement(name = "ReturnToComplianceQualifierText")
    protected String returnToComplianceQualifierText;
    @XmlElement(name = "ViolationResponsibleAgency")
    protected String violationResponsibleAgency;
    @XmlElement(name = "ViolationResponsibleAgencyText")
    protected String violationResponsibleAgencyText;
    @XmlElement(name = "Notes")
    protected String notes;
    @XmlElement(name = "Citation")
    protected List<CitationDataType> citation;
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
     * Gets the value of the violationActivityLocation property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "VIOACTLOC", length = 2)
    public String getViolationActivityLocation() {
        return violationActivityLocation;
    }

    /**
     * Sets the value of the violationActivityLocation property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setViolationActivityLocation(String value) {
        this.violationActivityLocation = value;
    }

    /**
     * Gets the value of the violationSequenceNumber property.
     * 
     * @return
     *     possible object is
     *     {@link BigInteger }
     *     
     */
    @Basic
    @Column(name = "VIOSEQNUMBER", precision = 4, scale = 0)
    public BigInteger getViolationSequenceNumber() {
        return violationSequenceNumber;
    }

    /**
     * Sets the value of the violationSequenceNumber property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigInteger }
     *     
     */
    public void setViolationSequenceNumber(BigInteger value) {
        this.violationSequenceNumber = value;
    }

    /**
     * Gets the value of the agencyWhichDeterminedViolation property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "AGENCYDETERMVIO", length = 1)
    public String getAgencyWhichDeterminedViolation() {
        return agencyWhichDeterminedViolation;
    }

    /**
     * Sets the value of the agencyWhichDeterminedViolation property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAgencyWhichDeterminedViolation(String value) {
        this.agencyWhichDeterminedViolation = value;
    }

    /**
     * Gets the value of the agencyText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "AGENCYTXT", length = 255)
    public String getAgencyText() {
        return agencyText;
    }

    /**
     * Sets the value of the agencyText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAgencyText(String value) {
        this.agencyText = value;
    }

    /**
     * Gets the value of the violationTypeOwner property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "VIOTYPEOWNR", length = 2)
    public String getViolationTypeOwner() {
        return violationTypeOwner;
    }

    /**
     * Sets the value of the violationTypeOwner property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setViolationTypeOwner(String value) {
        this.violationTypeOwner = value;
    }

    /**
     * Gets the value of the violationType property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "VIOTYPE", length = 10)
    public String getViolationType() {
        return violationType;
    }

    /**
     * Sets the value of the violationType property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setViolationType(String value) {
        this.violationType = value;
    }

    /**
     * Gets the value of the violationTypeText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "VIOTYPETXT", length = 255)
    public String getViolationTypeText() {
        return violationTypeText;
    }

    /**
     * Sets the value of the violationTypeText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setViolationTypeText(String value) {
        this.violationTypeText = value;
    }

    /**
     * Gets the value of the formerCitationName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "FORMERCITNNAME", length = 35)
    public String getFormerCitationName() {
        return formerCitationName;
    }

    /**
     * Sets the value of the formerCitationName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFormerCitationName(String value) {
        this.formerCitationName = value;
    }

    /**
     * Gets the value of the violationDeterminedDate property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    @Transient
    public XMLGregorianCalendar getViolationDeterminedDate() {
        return violationDeterminedDate;
    }

    /**
     * Sets the value of the violationDeterminedDate property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setViolationDeterminedDate(XMLGregorianCalendar value) {
        this.violationDeterminedDate = value;
    }

    /**
     * Gets the value of the returnComplianceActualDate property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    @Transient
    public XMLGregorianCalendar getReturnComplianceActualDate() {
        return returnComplianceActualDate;
    }

    /**
     * Sets the value of the returnComplianceActualDate property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setReturnComplianceActualDate(XMLGregorianCalendar value) {
        this.returnComplianceActualDate = value;
    }

    /**
     * Gets the value of the returnToComplianceQualifier property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "RETTOCOMPQUALIFIER", length = 1)
    public String getReturnToComplianceQualifier() {
        return returnToComplianceQualifier;
    }

    /**
     * Sets the value of the returnToComplianceQualifier property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setReturnToComplianceQualifier(String value) {
        this.returnToComplianceQualifier = value;
    }

    /**
     * Gets the value of the returnToComplianceQualifierText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "RETTOCOMPQUALIFIERTXT", length = 255)
    public String getReturnToComplianceQualifierText() {
        return returnToComplianceQualifierText;
    }

    /**
     * Sets the value of the returnToComplianceQualifierText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setReturnToComplianceQualifierText(String value) {
        this.returnToComplianceQualifierText = value;
    }

    /**
     * Gets the value of the violationResponsibleAgency property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "VIORSPAGENCY", length = 1)
    public String getViolationResponsibleAgency() {
        return violationResponsibleAgency;
    }

    /**
     * Sets the value of the violationResponsibleAgency property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setViolationResponsibleAgency(String value) {
        this.violationResponsibleAgency = value;
    }

    /**
     * Gets the value of the violationResponsibleAgencyText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "VIORSPAGENCYTXT", length = 255)
    public String getViolationResponsibleAgencyText() {
        return violationResponsibleAgencyText;
    }

    /**
     * Sets the value of the violationResponsibleAgencyText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setViolationResponsibleAgencyText(String value) {
        this.violationResponsibleAgencyText = value;
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
    @Column(name = "NOTES", length = 2000)
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

    /**
     * Gets the value of the citation property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the citation property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getCitation().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link CitationDataType }
     * 
     * 
     */
    @OneToMany(targetEntity = CitationDataType.class, cascade = {
        CascadeType.ALL
    })
    @JoinColumn(name = "VIOID")
    public List<CitationDataType> getCitation() {
        if (citation == null) {
            citation = new ArrayList<CitationDataType>();
        }
        return this.citation;
    }

    /**
     * 
     * 
     */
    public void setCitation(List<CitationDataType> citation) {
        this.citation = citation;
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

    @Basic
    @Column(name = "VIODETERMDATEITEM")
    @Temporal(TemporalType.DATE)
    public Date getViolationDeterminedDateItem() {
        return XmlAdapterUtils.unmarshall(XMLGregorianCalendarAsDate.class, this.getViolationDeterminedDate());
    }

    public void setViolationDeterminedDateItem(Date target) {
        setViolationDeterminedDate(XmlAdapterUtils.marshall(XMLGregorianCalendarAsDate.class, target));
    }

    @Basic
    @Column(name = "RETCOMPACTUALDATEITEM")
    @Temporal(TemporalType.DATE)
    public Date getReturnComplianceActualDateItem() {
        return XmlAdapterUtils.unmarshall(XMLGregorianCalendarAsDate.class, this.getReturnComplianceActualDate());
    }

    public void setReturnComplianceActualDateItem(Date target) {
        setReturnComplianceActualDate(XmlAdapterUtils.marshall(XMLGregorianCalendarAsDate.class, target));
    }

    public boolean equals(ObjectLocator thisLocator, ObjectLocator thatLocator, Object object, EqualsStrategy strategy) {
        if (!(object instanceof ViolationDataType)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final ViolationDataType that = ((ViolationDataType) object);
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
            String lhsViolationActivityLocation;
            lhsViolationActivityLocation = this.getViolationActivityLocation();
            String rhsViolationActivityLocation;
            rhsViolationActivityLocation = that.getViolationActivityLocation();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "violationActivityLocation", lhsViolationActivityLocation), LocatorUtils.property(thatLocator, "violationActivityLocation", rhsViolationActivityLocation), lhsViolationActivityLocation, rhsViolationActivityLocation)) {
                return false;
            }
        }
        {
            BigInteger lhsViolationSequenceNumber;
            lhsViolationSequenceNumber = this.getViolationSequenceNumber();
            BigInteger rhsViolationSequenceNumber;
            rhsViolationSequenceNumber = that.getViolationSequenceNumber();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "violationSequenceNumber", lhsViolationSequenceNumber), LocatorUtils.property(thatLocator, "violationSequenceNumber", rhsViolationSequenceNumber), lhsViolationSequenceNumber, rhsViolationSequenceNumber)) {
                return false;
            }
        }
        {
            String lhsAgencyWhichDeterminedViolation;
            lhsAgencyWhichDeterminedViolation = this.getAgencyWhichDeterminedViolation();
            String rhsAgencyWhichDeterminedViolation;
            rhsAgencyWhichDeterminedViolation = that.getAgencyWhichDeterminedViolation();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "agencyWhichDeterminedViolation", lhsAgencyWhichDeterminedViolation), LocatorUtils.property(thatLocator, "agencyWhichDeterminedViolation", rhsAgencyWhichDeterminedViolation), lhsAgencyWhichDeterminedViolation, rhsAgencyWhichDeterminedViolation)) {
                return false;
            }
        }
        {
            String lhsAgencyText;
            lhsAgencyText = this.getAgencyText();
            String rhsAgencyText;
            rhsAgencyText = that.getAgencyText();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "agencyText", lhsAgencyText), LocatorUtils.property(thatLocator, "agencyText", rhsAgencyText), lhsAgencyText, rhsAgencyText)) {
                return false;
            }
        }
        {
            String lhsViolationTypeOwner;
            lhsViolationTypeOwner = this.getViolationTypeOwner();
            String rhsViolationTypeOwner;
            rhsViolationTypeOwner = that.getViolationTypeOwner();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "violationTypeOwner", lhsViolationTypeOwner), LocatorUtils.property(thatLocator, "violationTypeOwner", rhsViolationTypeOwner), lhsViolationTypeOwner, rhsViolationTypeOwner)) {
                return false;
            }
        }
        {
            String lhsViolationType;
            lhsViolationType = this.getViolationType();
            String rhsViolationType;
            rhsViolationType = that.getViolationType();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "violationType", lhsViolationType), LocatorUtils.property(thatLocator, "violationType", rhsViolationType), lhsViolationType, rhsViolationType)) {
                return false;
            }
        }
        {
            String lhsViolationTypeText;
            lhsViolationTypeText = this.getViolationTypeText();
            String rhsViolationTypeText;
            rhsViolationTypeText = that.getViolationTypeText();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "violationTypeText", lhsViolationTypeText), LocatorUtils.property(thatLocator, "violationTypeText", rhsViolationTypeText), lhsViolationTypeText, rhsViolationTypeText)) {
                return false;
            }
        }
        {
            String lhsFormerCitationName;
            lhsFormerCitationName = this.getFormerCitationName();
            String rhsFormerCitationName;
            rhsFormerCitationName = that.getFormerCitationName();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "formerCitationName", lhsFormerCitationName), LocatorUtils.property(thatLocator, "formerCitationName", rhsFormerCitationName), lhsFormerCitationName, rhsFormerCitationName)) {
                return false;
            }
        }
        {
            XMLGregorianCalendar lhsViolationDeterminedDate;
            lhsViolationDeterminedDate = this.getViolationDeterminedDate();
            XMLGregorianCalendar rhsViolationDeterminedDate;
            rhsViolationDeterminedDate = that.getViolationDeterminedDate();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "violationDeterminedDate", lhsViolationDeterminedDate), LocatorUtils.property(thatLocator, "violationDeterminedDate", rhsViolationDeterminedDate), lhsViolationDeterminedDate, rhsViolationDeterminedDate)) {
                return false;
            }
        }
        {
            XMLGregorianCalendar lhsReturnComplianceActualDate;
            lhsReturnComplianceActualDate = this.getReturnComplianceActualDate();
            XMLGregorianCalendar rhsReturnComplianceActualDate;
            rhsReturnComplianceActualDate = that.getReturnComplianceActualDate();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "returnComplianceActualDate", lhsReturnComplianceActualDate), LocatorUtils.property(thatLocator, "returnComplianceActualDate", rhsReturnComplianceActualDate), lhsReturnComplianceActualDate, rhsReturnComplianceActualDate)) {
                return false;
            }
        }
        {
            String lhsReturnToComplianceQualifier;
            lhsReturnToComplianceQualifier = this.getReturnToComplianceQualifier();
            String rhsReturnToComplianceQualifier;
            rhsReturnToComplianceQualifier = that.getReturnToComplianceQualifier();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "returnToComplianceQualifier", lhsReturnToComplianceQualifier), LocatorUtils.property(thatLocator, "returnToComplianceQualifier", rhsReturnToComplianceQualifier), lhsReturnToComplianceQualifier, rhsReturnToComplianceQualifier)) {
                return false;
            }
        }
        {
            String lhsReturnToComplianceQualifierText;
            lhsReturnToComplianceQualifierText = this.getReturnToComplianceQualifierText();
            String rhsReturnToComplianceQualifierText;
            rhsReturnToComplianceQualifierText = that.getReturnToComplianceQualifierText();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "returnToComplianceQualifierText", lhsReturnToComplianceQualifierText), LocatorUtils.property(thatLocator, "returnToComplianceQualifierText", rhsReturnToComplianceQualifierText), lhsReturnToComplianceQualifierText, rhsReturnToComplianceQualifierText)) {
                return false;
            }
        }
        {
            String lhsViolationResponsibleAgency;
            lhsViolationResponsibleAgency = this.getViolationResponsibleAgency();
            String rhsViolationResponsibleAgency;
            rhsViolationResponsibleAgency = that.getViolationResponsibleAgency();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "violationResponsibleAgency", lhsViolationResponsibleAgency), LocatorUtils.property(thatLocator, "violationResponsibleAgency", rhsViolationResponsibleAgency), lhsViolationResponsibleAgency, rhsViolationResponsibleAgency)) {
                return false;
            }
        }
        {
            String lhsViolationResponsibleAgencyText;
            lhsViolationResponsibleAgencyText = this.getViolationResponsibleAgencyText();
            String rhsViolationResponsibleAgencyText;
            rhsViolationResponsibleAgencyText = that.getViolationResponsibleAgencyText();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "violationResponsibleAgencyText", lhsViolationResponsibleAgencyText), LocatorUtils.property(thatLocator, "violationResponsibleAgencyText", rhsViolationResponsibleAgencyText), lhsViolationResponsibleAgencyText, rhsViolationResponsibleAgencyText)) {
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
            List<CitationDataType> lhsCitation;
            lhsCitation = (((this.citation!= null)&&(!this.citation.isEmpty()))?this.getCitation():null);
            List<CitationDataType> rhsCitation;
            rhsCitation = (((that.citation!= null)&&(!that.citation.isEmpty()))?that.getCitation():null);
            if (!strategy.equals(LocatorUtils.property(thisLocator, "citation", lhsCitation), LocatorUtils.property(thatLocator, "citation", rhsCitation), lhsCitation, rhsCitation)) {
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
            String theViolationActivityLocation;
            theViolationActivityLocation = this.getViolationActivityLocation();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "violationActivityLocation", theViolationActivityLocation), currentHashCode, theViolationActivityLocation);
        }
        {
            BigInteger theViolationSequenceNumber;
            theViolationSequenceNumber = this.getViolationSequenceNumber();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "violationSequenceNumber", theViolationSequenceNumber), currentHashCode, theViolationSequenceNumber);
        }
        {
            String theAgencyWhichDeterminedViolation;
            theAgencyWhichDeterminedViolation = this.getAgencyWhichDeterminedViolation();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "agencyWhichDeterminedViolation", theAgencyWhichDeterminedViolation), currentHashCode, theAgencyWhichDeterminedViolation);
        }
        {
            String theAgencyText;
            theAgencyText = this.getAgencyText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "agencyText", theAgencyText), currentHashCode, theAgencyText);
        }
        {
            String theViolationTypeOwner;
            theViolationTypeOwner = this.getViolationTypeOwner();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "violationTypeOwner", theViolationTypeOwner), currentHashCode, theViolationTypeOwner);
        }
        {
            String theViolationType;
            theViolationType = this.getViolationType();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "violationType", theViolationType), currentHashCode, theViolationType);
        }
        {
            String theViolationTypeText;
            theViolationTypeText = this.getViolationTypeText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "violationTypeText", theViolationTypeText), currentHashCode, theViolationTypeText);
        }
        {
            String theFormerCitationName;
            theFormerCitationName = this.getFormerCitationName();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "formerCitationName", theFormerCitationName), currentHashCode, theFormerCitationName);
        }
        {
            XMLGregorianCalendar theViolationDeterminedDate;
            theViolationDeterminedDate = this.getViolationDeterminedDate();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "violationDeterminedDate", theViolationDeterminedDate), currentHashCode, theViolationDeterminedDate);
        }
        {
            XMLGregorianCalendar theReturnComplianceActualDate;
            theReturnComplianceActualDate = this.getReturnComplianceActualDate();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "returnComplianceActualDate", theReturnComplianceActualDate), currentHashCode, theReturnComplianceActualDate);
        }
        {
            String theReturnToComplianceQualifier;
            theReturnToComplianceQualifier = this.getReturnToComplianceQualifier();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "returnToComplianceQualifier", theReturnToComplianceQualifier), currentHashCode, theReturnToComplianceQualifier);
        }
        {
            String theReturnToComplianceQualifierText;
            theReturnToComplianceQualifierText = this.getReturnToComplianceQualifierText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "returnToComplianceQualifierText", theReturnToComplianceQualifierText), currentHashCode, theReturnToComplianceQualifierText);
        }
        {
            String theViolationResponsibleAgency;
            theViolationResponsibleAgency = this.getViolationResponsibleAgency();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "violationResponsibleAgency", theViolationResponsibleAgency), currentHashCode, theViolationResponsibleAgency);
        }
        {
            String theViolationResponsibleAgencyText;
            theViolationResponsibleAgencyText = this.getViolationResponsibleAgencyText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "violationResponsibleAgencyText", theViolationResponsibleAgencyText), currentHashCode, theViolationResponsibleAgencyText);
        }
        {
            String theNotes;
            theNotes = this.getNotes();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "notes", theNotes), currentHashCode, theNotes);
        }
        {
            List<CitationDataType> theCitation;
            theCitation = (((this.citation!= null)&&(!this.citation.isEmpty()))?this.getCitation():null);
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "citation", theCitation), currentHashCode, theCitation);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
