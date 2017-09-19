//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2014.09.02 at 11:05:46 AM PDT 
//


package com.windsor.node.plugin.icisair.domain.generated;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
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
 * <p>Java class for SubmissionAcceptedDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="SubmissionAcceptedDataType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}SubmissionAcceptedKey" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}AcceptedReport" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "SubmissionAcceptedDataType", propOrder = {
    "submissionAcceptedKey",
    "acceptedReport"
})
@Entity(name = "SubmissionAcceptedDataType")
@Table(name = "ICA_SUBM_ACCEPTED_DAT_TYPE")
@Inheritance(strategy = InheritanceType.JOINED)
public class SubmissionAcceptedDataType
    implements Serializable, Equals, HashCode
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "SubmissionAcceptedKey")
    protected SubmissionAcceptedKeyDataType submissionAcceptedKey;
    @XmlElement(name = "AcceptedReport")
    protected List<AcceptedReportDataType> acceptedReport;
    @XmlTransient
    protected String dbid;

    /**
     * Gets the value of the submissionAcceptedKey property.
     * 
     * @return
     *     possible object is
     *     {@link SubmissionAcceptedKeyDataType }
     *     
     */
    @Transient
    public SubmissionAcceptedKeyDataType getSubmissionAcceptedKey() {
        return submissionAcceptedKey;
    }

    /**
     * Sets the value of the submissionAcceptedKey property.
     * 
     * @param value
     *     allowed object is
     *     {@link SubmissionAcceptedKeyDataType }
     *     
     */
    public void setSubmissionAcceptedKey(SubmissionAcceptedKeyDataType value) {
        this.submissionAcceptedKey = value;
    }

    @Transient
    public boolean isSetSubmissionAcceptedKey() {
        return (this.submissionAcceptedKey!= null);
    }

    /**
     * Gets the value of the acceptedReport property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the acceptedReport property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getAcceptedReport().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link AcceptedReportDataType }
     * 
     * 
     */
    @Transient
    public List<AcceptedReportDataType> getAcceptedReport() {
        if (acceptedReport == null) {
            acceptedReport = new ArrayList<AcceptedReportDataType>();
        }
        return this.acceptedReport;
    }

    /**
     * 
     * 
     */
    public void setAcceptedReport(List<AcceptedReportDataType> acceptedReport) {
        this.acceptedReport = acceptedReport;
    }

    @Transient
    public boolean isSetAcceptedReport() {
        return ((this.acceptedReport!= null)&&(!this.acceptedReport.isEmpty()));
    }

    public void unsetAcceptedReport() {
        this.acceptedReport = null;
    }

    /**
     * 
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Id
    @Column(name = "ICA_SUBM_ACCEPTED_DAT_TYPE_ID")
    public String getDbid() {
        return dbid;
    }

    /**
     * 
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDbid(String value) {
        this.dbid = value;
    }

    public boolean equals(ObjectLocator thisLocator, ObjectLocator thatLocator, Object object, EqualsStrategy strategy) {
        if (!(object instanceof SubmissionAcceptedDataType)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final SubmissionAcceptedDataType that = ((SubmissionAcceptedDataType) object);
        {
            SubmissionAcceptedKeyDataType lhsSubmissionAcceptedKey;
            lhsSubmissionAcceptedKey = this.getSubmissionAcceptedKey();
            SubmissionAcceptedKeyDataType rhsSubmissionAcceptedKey;
            rhsSubmissionAcceptedKey = that.getSubmissionAcceptedKey();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "submissionAcceptedKey", lhsSubmissionAcceptedKey), LocatorUtils.property(thatLocator, "submissionAcceptedKey", rhsSubmissionAcceptedKey), lhsSubmissionAcceptedKey, rhsSubmissionAcceptedKey)) {
                return false;
            }
        }
        {
            List<AcceptedReportDataType> lhsAcceptedReport;
            lhsAcceptedReport = (this.isSetAcceptedReport()?this.getAcceptedReport():null);
            List<AcceptedReportDataType> rhsAcceptedReport;
            rhsAcceptedReport = (that.isSetAcceptedReport()?that.getAcceptedReport():null);
            if (!strategy.equals(LocatorUtils.property(thisLocator, "acceptedReport", lhsAcceptedReport), LocatorUtils.property(thatLocator, "acceptedReport", rhsAcceptedReport), lhsAcceptedReport, rhsAcceptedReport)) {
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
            SubmissionAcceptedKeyDataType theSubmissionAcceptedKey;
            theSubmissionAcceptedKey = this.getSubmissionAcceptedKey();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "submissionAcceptedKey", theSubmissionAcceptedKey), currentHashCode, theSubmissionAcceptedKey);
        }
        {
            List<AcceptedReportDataType> theAcceptedReport;
            theAcceptedReport = (this.isSetAcceptedReport()?this.getAcceptedReport():null);
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "acceptedReport", theAcceptedReport), currentHashCode, theAcceptedReport);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
