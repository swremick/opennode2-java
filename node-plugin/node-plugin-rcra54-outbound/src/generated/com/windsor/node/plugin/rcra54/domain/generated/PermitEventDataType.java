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
 * Permit event data.
 * 
 * <p>Java class for PermitEventDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="PermitEventDataType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}TransactionCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}ActivityLocationCode"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}PermitEventDataOwnerCode"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}PermitEventCode"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}PermitEventText" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}EventAgencyCode"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}AgencyText" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}EventSequenceNumber"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}ActualDate" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}OriginalScheduleDate" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}NewScheduleDate" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}ResponsiblePersonDataOwnerCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}ResponsiblePersonID" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}EventSuborganizationDataOwnerCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}EventSuborganizationCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}SupplementalInformationText" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}EventCommitment" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "PermitEventDataType", propOrder = {
    "transactionCode",
    "activityLocationCode",
    "permitEventDataOwnerCode",
    "permitEventCode",
    "permitEventText",
    "eventAgencyCode",
    "agencyText",
    "eventSequenceNumber",
    "actualDate",
    "originalScheduleDate",
    "newScheduleDate",
    "responsiblePersonDataOwnerCode",
    "responsiblePersonID",
    "eventSuborganizationDataOwnerCode",
    "eventSuborganizationCode",
    "supplementalInformationText",
    "eventCommitment"
})
@Entity(name = "PermitEventDataType")
@Table(name = "RCRA_PERMITEVENT")
@Inheritance(strategy = InheritanceType.JOINED)
public class PermitEventDataType
    implements Equals, HashCode
{

    @XmlElement(name = "TransactionCode")
    protected String transactionCode;
    @XmlElement(name = "ActivityLocationCode", required = true)
    protected String activityLocationCode;
    @XmlElement(name = "PermitEventDataOwnerCode", required = true)
    protected String permitEventDataOwnerCode;
    @XmlElement(name = "PermitEventCode", required = true)
    protected String permitEventCode;
    @XmlElement(name = "PermitEventText")
    protected String permitEventText;
    @XmlElement(name = "EventAgencyCode", required = true)
    protected String eventAgencyCode;
    @XmlElement(name = "AgencyText")
    protected String agencyText;
    @XmlElement(name = "EventSequenceNumber", required = true)
    protected BigInteger eventSequenceNumber;
    @XmlElement(name = "ActualDate")
    protected XMLGregorianCalendar actualDate;
    @XmlElement(name = "OriginalScheduleDate")
    protected XMLGregorianCalendar originalScheduleDate;
    @XmlElement(name = "NewScheduleDate")
    protected XMLGregorianCalendar newScheduleDate;
    @XmlElement(name = "ResponsiblePersonDataOwnerCode")
    protected String responsiblePersonDataOwnerCode;
    @XmlElement(name = "ResponsiblePersonID")
    protected String responsiblePersonID;
    @XmlElement(name = "EventSuborganizationDataOwnerCode")
    protected String eventSuborganizationDataOwnerCode;
    @XmlElement(name = "EventSuborganizationCode")
    protected String eventSuborganizationCode;
    @XmlElement(name = "SupplementalInformationText")
    protected String supplementalInformationText;
    @XmlElement(name = "EventCommitment")
    protected List<EventCommitmentDataType> eventCommitment;
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
     * Gets the value of the activityLocationCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "ACTLOCCODE", length = 255)
    public String getActivityLocationCode() {
        return activityLocationCode;
    }

    /**
     * Sets the value of the activityLocationCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setActivityLocationCode(String value) {
        this.activityLocationCode = value;
    }

    /**
     * Gets the value of the permitEventDataOwnerCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "PERMITEVENTDATOWNRCODE", length = 2)
    public String getPermitEventDataOwnerCode() {
        return permitEventDataOwnerCode;
    }

    /**
     * Sets the value of the permitEventDataOwnerCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPermitEventDataOwnerCode(String value) {
        this.permitEventDataOwnerCode = value;
    }

    /**
     * Gets the value of the permitEventCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "PERMITEVENTCODE", length = 7)
    public String getPermitEventCode() {
        return permitEventCode;
    }

    /**
     * Sets the value of the permitEventCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPermitEventCode(String value) {
        this.permitEventCode = value;
    }

    /**
     * Gets the value of the permitEventText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "PERMITEVENTTXT", length = 255)
    public String getPermitEventText() {
        return permitEventText;
    }

    /**
     * Sets the value of the permitEventText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPermitEventText(String value) {
        this.permitEventText = value;
    }

    /**
     * Gets the value of the eventAgencyCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "EVENTAGENCYCODE", length = 1)
    public String getEventAgencyCode() {
        return eventAgencyCode;
    }

    /**
     * Sets the value of the eventAgencyCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setEventAgencyCode(String value) {
        this.eventAgencyCode = value;
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
     * Gets the value of the eventSequenceNumber property.
     * 
     * @return
     *     possible object is
     *     {@link BigInteger }
     *     
     */
    @Basic
    @Column(name = "EVENTSEQNUMBER", precision = 3, scale = 0)
    public BigInteger getEventSequenceNumber() {
        return eventSequenceNumber;
    }

    /**
     * Sets the value of the eventSequenceNumber property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigInteger }
     *     
     */
    public void setEventSequenceNumber(BigInteger value) {
        this.eventSequenceNumber = value;
    }

    /**
     * Gets the value of the actualDate property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    @Transient
    public XMLGregorianCalendar getActualDate() {
        return actualDate;
    }

    /**
     * Sets the value of the actualDate property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setActualDate(XMLGregorianCalendar value) {
        this.actualDate = value;
    }

    /**
     * Gets the value of the originalScheduleDate property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    @Transient
    public XMLGregorianCalendar getOriginalScheduleDate() {
        return originalScheduleDate;
    }

    /**
     * Sets the value of the originalScheduleDate property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setOriginalScheduleDate(XMLGregorianCalendar value) {
        this.originalScheduleDate = value;
    }

    /**
     * Gets the value of the newScheduleDate property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    @Transient
    public XMLGregorianCalendar getNewScheduleDate() {
        return newScheduleDate;
    }

    /**
     * Sets the value of the newScheduleDate property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setNewScheduleDate(XMLGregorianCalendar value) {
        this.newScheduleDate = value;
    }

    /**
     * Gets the value of the responsiblePersonDataOwnerCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "RSPPERSONDATOWNRCODE", length = 2)
    public String getResponsiblePersonDataOwnerCode() {
        return responsiblePersonDataOwnerCode;
    }

    /**
     * Sets the value of the responsiblePersonDataOwnerCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setResponsiblePersonDataOwnerCode(String value) {
        this.responsiblePersonDataOwnerCode = value;
    }

    /**
     * Gets the value of the responsiblePersonID property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "RSPPERSONID", length = 5)
    public String getResponsiblePersonID() {
        return responsiblePersonID;
    }

    /**
     * Sets the value of the responsiblePersonID property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setResponsiblePersonID(String value) {
        this.responsiblePersonID = value;
    }

    /**
     * Gets the value of the eventSuborganizationDataOwnerCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "EVENTSUBORGDATOWNRCODE", length = 2)
    public String getEventSuborganizationDataOwnerCode() {
        return eventSuborganizationDataOwnerCode;
    }

    /**
     * Sets the value of the eventSuborganizationDataOwnerCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setEventSuborganizationDataOwnerCode(String value) {
        this.eventSuborganizationDataOwnerCode = value;
    }

    /**
     * Gets the value of the eventSuborganizationCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "EVENTSUBORGCODE", length = 10)
    public String getEventSuborganizationCode() {
        return eventSuborganizationCode;
    }

    /**
     * Sets the value of the eventSuborganizationCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setEventSuborganizationCode(String value) {
        this.eventSuborganizationCode = value;
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

    /**
     * Gets the value of the eventCommitment property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the eventCommitment property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getEventCommitment().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link EventCommitmentDataType }
     * 
     * 
     */
    @OneToMany(targetEntity = EventCommitmentDataType.class, cascade = {
        CascadeType.ALL
    })
    @JoinColumn(name = "PERMITEVENTID")
    public List<EventCommitmentDataType> getEventCommitment() {
        if (eventCommitment == null) {
            eventCommitment = new ArrayList<EventCommitmentDataType>();
        }
        return this.eventCommitment;
    }

    /**
     * 
     * 
     */
    public void setEventCommitment(List<EventCommitmentDataType> eventCommitment) {
        this.eventCommitment = eventCommitment;
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
    @Column(name = "ACTUALDATEITEM")
    @Temporal(TemporalType.DATE)
    public Date getActualDateItem() {
        return XmlAdapterUtils.unmarshall(XMLGregorianCalendarAsDate.class, this.getActualDate());
    }

    public void setActualDateItem(Date target) {
        setActualDate(XmlAdapterUtils.marshall(XMLGregorianCalendarAsDate.class, target));
    }

    @Basic
    @Column(name = "ORIGSCHEDDATEITEM")
    @Temporal(TemporalType.DATE)
    public Date getOriginalScheduleDateItem() {
        return XmlAdapterUtils.unmarshall(XMLGregorianCalendarAsDate.class, this.getOriginalScheduleDate());
    }

    public void setOriginalScheduleDateItem(Date target) {
        setOriginalScheduleDate(XmlAdapterUtils.marshall(XMLGregorianCalendarAsDate.class, target));
    }

    @Basic
    @Column(name = "NEWSCHEDDATEITEM")
    @Temporal(TemporalType.DATE)
    public Date getNewScheduleDateItem() {
        return XmlAdapterUtils.unmarshall(XMLGregorianCalendarAsDate.class, this.getNewScheduleDate());
    }

    public void setNewScheduleDateItem(Date target) {
        setNewScheduleDate(XmlAdapterUtils.marshall(XMLGregorianCalendarAsDate.class, target));
    }

    public boolean equals(ObjectLocator thisLocator, ObjectLocator thatLocator, Object object, EqualsStrategy strategy) {
        if (!(object instanceof PermitEventDataType)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final PermitEventDataType that = ((PermitEventDataType) object);
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
            String lhsActivityLocationCode;
            lhsActivityLocationCode = this.getActivityLocationCode();
            String rhsActivityLocationCode;
            rhsActivityLocationCode = that.getActivityLocationCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "activityLocationCode", lhsActivityLocationCode), LocatorUtils.property(thatLocator, "activityLocationCode", rhsActivityLocationCode), lhsActivityLocationCode, rhsActivityLocationCode)) {
                return false;
            }
        }
        {
            String lhsPermitEventDataOwnerCode;
            lhsPermitEventDataOwnerCode = this.getPermitEventDataOwnerCode();
            String rhsPermitEventDataOwnerCode;
            rhsPermitEventDataOwnerCode = that.getPermitEventDataOwnerCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "permitEventDataOwnerCode", lhsPermitEventDataOwnerCode), LocatorUtils.property(thatLocator, "permitEventDataOwnerCode", rhsPermitEventDataOwnerCode), lhsPermitEventDataOwnerCode, rhsPermitEventDataOwnerCode)) {
                return false;
            }
        }
        {
            String lhsPermitEventCode;
            lhsPermitEventCode = this.getPermitEventCode();
            String rhsPermitEventCode;
            rhsPermitEventCode = that.getPermitEventCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "permitEventCode", lhsPermitEventCode), LocatorUtils.property(thatLocator, "permitEventCode", rhsPermitEventCode), lhsPermitEventCode, rhsPermitEventCode)) {
                return false;
            }
        }
        {
            String lhsPermitEventText;
            lhsPermitEventText = this.getPermitEventText();
            String rhsPermitEventText;
            rhsPermitEventText = that.getPermitEventText();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "permitEventText", lhsPermitEventText), LocatorUtils.property(thatLocator, "permitEventText", rhsPermitEventText), lhsPermitEventText, rhsPermitEventText)) {
                return false;
            }
        }
        {
            String lhsEventAgencyCode;
            lhsEventAgencyCode = this.getEventAgencyCode();
            String rhsEventAgencyCode;
            rhsEventAgencyCode = that.getEventAgencyCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "eventAgencyCode", lhsEventAgencyCode), LocatorUtils.property(thatLocator, "eventAgencyCode", rhsEventAgencyCode), lhsEventAgencyCode, rhsEventAgencyCode)) {
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
            BigInteger lhsEventSequenceNumber;
            lhsEventSequenceNumber = this.getEventSequenceNumber();
            BigInteger rhsEventSequenceNumber;
            rhsEventSequenceNumber = that.getEventSequenceNumber();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "eventSequenceNumber", lhsEventSequenceNumber), LocatorUtils.property(thatLocator, "eventSequenceNumber", rhsEventSequenceNumber), lhsEventSequenceNumber, rhsEventSequenceNumber)) {
                return false;
            }
        }
        {
            XMLGregorianCalendar lhsActualDate;
            lhsActualDate = this.getActualDate();
            XMLGregorianCalendar rhsActualDate;
            rhsActualDate = that.getActualDate();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "actualDate", lhsActualDate), LocatorUtils.property(thatLocator, "actualDate", rhsActualDate), lhsActualDate, rhsActualDate)) {
                return false;
            }
        }
        {
            XMLGregorianCalendar lhsOriginalScheduleDate;
            lhsOriginalScheduleDate = this.getOriginalScheduleDate();
            XMLGregorianCalendar rhsOriginalScheduleDate;
            rhsOriginalScheduleDate = that.getOriginalScheduleDate();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "originalScheduleDate", lhsOriginalScheduleDate), LocatorUtils.property(thatLocator, "originalScheduleDate", rhsOriginalScheduleDate), lhsOriginalScheduleDate, rhsOriginalScheduleDate)) {
                return false;
            }
        }
        {
            XMLGregorianCalendar lhsNewScheduleDate;
            lhsNewScheduleDate = this.getNewScheduleDate();
            XMLGregorianCalendar rhsNewScheduleDate;
            rhsNewScheduleDate = that.getNewScheduleDate();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "newScheduleDate", lhsNewScheduleDate), LocatorUtils.property(thatLocator, "newScheduleDate", rhsNewScheduleDate), lhsNewScheduleDate, rhsNewScheduleDate)) {
                return false;
            }
        }
        {
            String lhsResponsiblePersonDataOwnerCode;
            lhsResponsiblePersonDataOwnerCode = this.getResponsiblePersonDataOwnerCode();
            String rhsResponsiblePersonDataOwnerCode;
            rhsResponsiblePersonDataOwnerCode = that.getResponsiblePersonDataOwnerCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "responsiblePersonDataOwnerCode", lhsResponsiblePersonDataOwnerCode), LocatorUtils.property(thatLocator, "responsiblePersonDataOwnerCode", rhsResponsiblePersonDataOwnerCode), lhsResponsiblePersonDataOwnerCode, rhsResponsiblePersonDataOwnerCode)) {
                return false;
            }
        }
        {
            String lhsResponsiblePersonID;
            lhsResponsiblePersonID = this.getResponsiblePersonID();
            String rhsResponsiblePersonID;
            rhsResponsiblePersonID = that.getResponsiblePersonID();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "responsiblePersonID", lhsResponsiblePersonID), LocatorUtils.property(thatLocator, "responsiblePersonID", rhsResponsiblePersonID), lhsResponsiblePersonID, rhsResponsiblePersonID)) {
                return false;
            }
        }
        {
            String lhsEventSuborganizationDataOwnerCode;
            lhsEventSuborganizationDataOwnerCode = this.getEventSuborganizationDataOwnerCode();
            String rhsEventSuborganizationDataOwnerCode;
            rhsEventSuborganizationDataOwnerCode = that.getEventSuborganizationDataOwnerCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "eventSuborganizationDataOwnerCode", lhsEventSuborganizationDataOwnerCode), LocatorUtils.property(thatLocator, "eventSuborganizationDataOwnerCode", rhsEventSuborganizationDataOwnerCode), lhsEventSuborganizationDataOwnerCode, rhsEventSuborganizationDataOwnerCode)) {
                return false;
            }
        }
        {
            String lhsEventSuborganizationCode;
            lhsEventSuborganizationCode = this.getEventSuborganizationCode();
            String rhsEventSuborganizationCode;
            rhsEventSuborganizationCode = that.getEventSuborganizationCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "eventSuborganizationCode", lhsEventSuborganizationCode), LocatorUtils.property(thatLocator, "eventSuborganizationCode", rhsEventSuborganizationCode), lhsEventSuborganizationCode, rhsEventSuborganizationCode)) {
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
            List<EventCommitmentDataType> lhsEventCommitment;
            lhsEventCommitment = (((this.eventCommitment!= null)&&(!this.eventCommitment.isEmpty()))?this.getEventCommitment():null);
            List<EventCommitmentDataType> rhsEventCommitment;
            rhsEventCommitment = (((that.eventCommitment!= null)&&(!that.eventCommitment.isEmpty()))?that.getEventCommitment():null);
            if (!strategy.equals(LocatorUtils.property(thisLocator, "eventCommitment", lhsEventCommitment), LocatorUtils.property(thatLocator, "eventCommitment", rhsEventCommitment), lhsEventCommitment, rhsEventCommitment)) {
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
            String theActivityLocationCode;
            theActivityLocationCode = this.getActivityLocationCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "activityLocationCode", theActivityLocationCode), currentHashCode, theActivityLocationCode);
        }
        {
            String thePermitEventDataOwnerCode;
            thePermitEventDataOwnerCode = this.getPermitEventDataOwnerCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "permitEventDataOwnerCode", thePermitEventDataOwnerCode), currentHashCode, thePermitEventDataOwnerCode);
        }
        {
            String thePermitEventCode;
            thePermitEventCode = this.getPermitEventCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "permitEventCode", thePermitEventCode), currentHashCode, thePermitEventCode);
        }
        {
            String thePermitEventText;
            thePermitEventText = this.getPermitEventText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "permitEventText", thePermitEventText), currentHashCode, thePermitEventText);
        }
        {
            String theEventAgencyCode;
            theEventAgencyCode = this.getEventAgencyCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "eventAgencyCode", theEventAgencyCode), currentHashCode, theEventAgencyCode);
        }
        {
            String theAgencyText;
            theAgencyText = this.getAgencyText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "agencyText", theAgencyText), currentHashCode, theAgencyText);
        }
        {
            BigInteger theEventSequenceNumber;
            theEventSequenceNumber = this.getEventSequenceNumber();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "eventSequenceNumber", theEventSequenceNumber), currentHashCode, theEventSequenceNumber);
        }
        {
            XMLGregorianCalendar theActualDate;
            theActualDate = this.getActualDate();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "actualDate", theActualDate), currentHashCode, theActualDate);
        }
        {
            XMLGregorianCalendar theOriginalScheduleDate;
            theOriginalScheduleDate = this.getOriginalScheduleDate();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "originalScheduleDate", theOriginalScheduleDate), currentHashCode, theOriginalScheduleDate);
        }
        {
            XMLGregorianCalendar theNewScheduleDate;
            theNewScheduleDate = this.getNewScheduleDate();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "newScheduleDate", theNewScheduleDate), currentHashCode, theNewScheduleDate);
        }
        {
            String theResponsiblePersonDataOwnerCode;
            theResponsiblePersonDataOwnerCode = this.getResponsiblePersonDataOwnerCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "responsiblePersonDataOwnerCode", theResponsiblePersonDataOwnerCode), currentHashCode, theResponsiblePersonDataOwnerCode);
        }
        {
            String theResponsiblePersonID;
            theResponsiblePersonID = this.getResponsiblePersonID();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "responsiblePersonID", theResponsiblePersonID), currentHashCode, theResponsiblePersonID);
        }
        {
            String theEventSuborganizationDataOwnerCode;
            theEventSuborganizationDataOwnerCode = this.getEventSuborganizationDataOwnerCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "eventSuborganizationDataOwnerCode", theEventSuborganizationDataOwnerCode), currentHashCode, theEventSuborganizationDataOwnerCode);
        }
        {
            String theEventSuborganizationCode;
            theEventSuborganizationCode = this.getEventSuborganizationCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "eventSuborganizationCode", theEventSuborganizationCode), currentHashCode, theEventSuborganizationCode);
        }
        {
            String theSupplementalInformationText;
            theSupplementalInformationText = this.getSupplementalInformationText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "supplementalInformationText", theSupplementalInformationText), currentHashCode, theSupplementalInformationText);
        }
        {
            List<EventCommitmentDataType> theEventCommitment;
            theEventCommitment = (((this.eventCommitment!= null)&&(!this.eventCommitment.isEmpty()))?this.getEventCommitment():null);
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "eventCommitment", theEventCommitment), currentHashCode, theEventCommitment);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
