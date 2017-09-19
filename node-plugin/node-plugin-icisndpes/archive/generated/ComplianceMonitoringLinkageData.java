//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.12.07 at 11:39:25 AM EST 
//


package com.windsor.node.plugin.icisnpdes.generated;

import java.io.Serializable;
import javax.persistence.AssociationOverride;
import javax.persistence.AssociationOverrides;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
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
 * <p>Java class for ComplianceMonitoringLinkageData complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ComplianceMonitoringLinkageData">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}TransactionHeader"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}ComplianceMonitoringLinkage"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ComplianceMonitoringLinkageData", propOrder = {
    "transactionHeader",
    "complianceMonitoringLinkage"
})
@Entity(name = "ComplianceMonitoringLinkageData")
@Table(name = "ICS_CMPL_MON_LNK")
@Inheritance(strategy = InheritanceType.JOINED)
public class ComplianceMonitoringLinkageData
    implements Serializable, Equals, HashCode
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "TransactionHeader", required = true)
    protected TransactionHeader transactionHeader;
    @XmlElement(name = "ComplianceMonitoringLinkage", required = true)
    protected ComplianceMonitoringLinkage complianceMonitoringLinkage;
    @XmlTransient
    protected String dbid;

    /**
     * Gets the value of the transactionHeader property.
     * 
     * @return
     *     possible object is
     *     {@link TransactionHeader }
     *     
     */
    @Embedded
    @AttributeOverrides({
        @AttributeOverride(name = "transactionType", column = @Column(name = "TRANSACTION_TYPE", columnDefinition = "char(1)", length = 1)),
        @AttributeOverride(name = "transactionTimestamp", column = @Column(name = "TRANSACTION_TIMESTAMP"))
    })
    public TransactionHeader getTransactionHeader() {
        return transactionHeader;
    }

    /**
     * Sets the value of the transactionHeader property.
     * 
     * @param value
     *     allowed object is
     *     {@link TransactionHeader }
     *     
     */
    public void setTransactionHeader(TransactionHeader value) {
        this.transactionHeader = value;
    }

    @Transient
    public boolean isSetTransactionHeader() {
        return (this.transactionHeader!= null);
    }

    /**
     * Gets the value of the complianceMonitoringLinkage property.
     * 
     * @return
     *     possible object is
     *     {@link ComplianceMonitoringLinkage }
     *     
     */
    @Embedded
    @AssociationOverrides({
        @AssociationOverride(name = "linkageSingleEvent", joinColumns = {
            @JoinColumn(name = "ICS_CMPL_MON_LNK_ID", referencedColumnName = "ICS_CMPL_MON_LNK_ID", insertable = false, updatable = false)
        }),
        @AssociationOverride(name = "linkageEnforcementAction", joinColumns = {
            @JoinColumn(name = "ICS_CMPL_MON_LNK_ID", referencedColumnName = "ICS_CMPL_MON_LNK_ID", insertable = false, updatable = false)
        }),
        @AssociationOverride(name = "linkageBiosolidsReport", joinColumns = {
            @JoinColumn(name = "ICS_CMPL_MON_LNK_ID", referencedColumnName = "ICS_CMPL_MON_LNK_ID", insertable = false, updatable = false)
        }),
        @AssociationOverride(name = "linkageCAFOAnnualReport", joinColumns = {
            @JoinColumn(name = "ICS_CMPL_MON_LNK_ID", referencedColumnName = "ICS_CMPL_MON_LNK_ID", insertable = false, updatable = false)
        }),
        @AssociationOverride(name = "linkageCSOEventReport", joinColumns = {
            @JoinColumn(name = "ICS_CMPL_MON_LNK_ID", referencedColumnName = "ICS_CMPL_MON_LNK_ID", insertable = false, updatable = false)
        }),
        @AssociationOverride(name = "linkageLocalLimitsReport", joinColumns = {
            @JoinColumn(name = "ICS_CMPL_MON_LNK_ID", referencedColumnName = "ICS_CMPL_MON_LNK_ID", insertable = false, updatable = false)
        }),
        @AssociationOverride(name = "linkagePretreatmentPerformanceReport", joinColumns = {
            @JoinColumn(name = "ICS_CMPL_MON_LNK_ID", referencedColumnName = "ICS_CMPL_MON_LNK_ID", insertable = false, updatable = false)
        }),
        @AssociationOverride(name = "linkageSSOAnnualReport", joinColumns = {
            @JoinColumn(name = "ICS_CMPL_MON_LNK_ID", referencedColumnName = "ICS_CMPL_MON_LNK_ID", insertable = false, updatable = false)
        }),
        @AssociationOverride(name = "linkageSSOEventReport", joinColumns = {
            @JoinColumn(name = "ICS_CMPL_MON_LNK_ID", referencedColumnName = "ICS_CMPL_MON_LNK_ID", insertable = false, updatable = false)
        }),
        @AssociationOverride(name = "linkageSSOMonthlyEventReport", joinColumns = {
            @JoinColumn(name = "ICS_CMPL_MON_LNK_ID", referencedColumnName = "ICS_CMPL_MON_LNK_ID", insertable = false, updatable = false)
        }),
        @AssociationOverride(name = "linkageSWEventReport", joinColumns = {
            @JoinColumn(name = "ICS_CMPL_MON_LNK_ID", referencedColumnName = "ICS_CMPL_MON_LNK_ID", insertable = false, updatable = false)
        }),
        @AssociationOverride(name = "linkageSWMS4Report", joinColumns = {
            @JoinColumn(name = "ICS_CMPL_MON_LNK_ID", referencedColumnName = "ICS_CMPL_MON_LNK_ID", insertable = false, updatable = false)
        }),
        @AssociationOverride(name = "linkageComplianceMonitoring", joinColumns = {
            @JoinColumn(name = "ICS_CMPL_MON_LNK_ID")
        })
    })
    public ComplianceMonitoringLinkage getComplianceMonitoringLinkage() {
        return complianceMonitoringLinkage;
    }

    /**
     * Sets the value of the complianceMonitoringLinkage property.
     * 
     * @param value
     *     allowed object is
     *     {@link ComplianceMonitoringLinkage }
     *     
     */
    public void setComplianceMonitoringLinkage(ComplianceMonitoringLinkage value) {
        this.complianceMonitoringLinkage = value;
    }

    @Transient
    public boolean isSetComplianceMonitoringLinkage() {
        return (this.complianceMonitoringLinkage!= null);
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
    @Column(name = "ICS_CMPL_MON_LNK_ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
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
        if (!(object instanceof ComplianceMonitoringLinkageData)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final ComplianceMonitoringLinkageData that = ((ComplianceMonitoringLinkageData) object);
        {
            TransactionHeader lhsTransactionHeader;
            lhsTransactionHeader = this.getTransactionHeader();
            TransactionHeader rhsTransactionHeader;
            rhsTransactionHeader = that.getTransactionHeader();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "transactionHeader", lhsTransactionHeader), LocatorUtils.property(thatLocator, "transactionHeader", rhsTransactionHeader), lhsTransactionHeader, rhsTransactionHeader)) {
                return false;
            }
        }
        {
            ComplianceMonitoringLinkage lhsComplianceMonitoringLinkage;
            lhsComplianceMonitoringLinkage = this.getComplianceMonitoringLinkage();
            ComplianceMonitoringLinkage rhsComplianceMonitoringLinkage;
            rhsComplianceMonitoringLinkage = that.getComplianceMonitoringLinkage();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "complianceMonitoringLinkage", lhsComplianceMonitoringLinkage), LocatorUtils.property(thatLocator, "complianceMonitoringLinkage", rhsComplianceMonitoringLinkage), lhsComplianceMonitoringLinkage, rhsComplianceMonitoringLinkage)) {
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
            TransactionHeader theTransactionHeader;
            theTransactionHeader = this.getTransactionHeader();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "transactionHeader", theTransactionHeader), currentHashCode, theTransactionHeader);
        }
        {
            ComplianceMonitoringLinkage theComplianceMonitoringLinkage;
            theComplianceMonitoringLinkage = this.getComplianceMonitoringLinkage();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "complianceMonitoringLinkage", theComplianceMonitoringLinkage), currentHashCode, theComplianceMonitoringLinkage);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
