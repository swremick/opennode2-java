//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.12.07 at 11:39:25 AM EST 
//


package com.windsor.node.plugin.icisnpdes.generated;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
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
 * <p>Java class for TransactionTypeTotalsDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="TransactionTypeTotalsDataType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}SubmissionTransactionTypeCode"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}TotalAcceptedTransactions"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}TotalRejectedTransactions"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "TransactionTypeTotalsDataType", propOrder = {
    "submissionTransactionTypeCode",
    "totalAcceptedTransactions",
    "totalRejectedTransactions"
})
public class TransactionTypeTotalsDataType
    implements Serializable, Equals, HashCode
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "SubmissionTransactionTypeCode", required = true)
    protected SubmissionTransactionTypeCodeDataType submissionTransactionTypeCode;
    @XmlElement(name = "TotalAcceptedTransactions")
    protected int totalAcceptedTransactions;
    @XmlElement(name = "TotalRejectedTransactions")
    protected int totalRejectedTransactions;

    /**
     * Gets the value of the submissionTransactionTypeCode property.
     * 
     * @return
     *     possible object is
     *     {@link SubmissionTransactionTypeCodeDataType }
     *     
     */
    public SubmissionTransactionTypeCodeDataType getSubmissionTransactionTypeCode() {
        return submissionTransactionTypeCode;
    }

    /**
     * Sets the value of the submissionTransactionTypeCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link SubmissionTransactionTypeCodeDataType }
     *     
     */
    public void setSubmissionTransactionTypeCode(SubmissionTransactionTypeCodeDataType value) {
        this.submissionTransactionTypeCode = value;
    }

    public boolean isSetSubmissionTransactionTypeCode() {
        return (this.submissionTransactionTypeCode!= null);
    }

    /**
     * Gets the value of the totalAcceptedTransactions property.
     * 
     */
    public int getTotalAcceptedTransactions() {
        return totalAcceptedTransactions;
    }

    /**
     * Sets the value of the totalAcceptedTransactions property.
     * 
     */
    public void setTotalAcceptedTransactions(int value) {
        this.totalAcceptedTransactions = value;
    }

    public boolean isSetTotalAcceptedTransactions() {
        return true;
    }

    /**
     * Gets the value of the totalRejectedTransactions property.
     * 
     */
    public int getTotalRejectedTransactions() {
        return totalRejectedTransactions;
    }

    /**
     * Sets the value of the totalRejectedTransactions property.
     * 
     */
    public void setTotalRejectedTransactions(int value) {
        this.totalRejectedTransactions = value;
    }

    public boolean isSetTotalRejectedTransactions() {
        return true;
    }

    public boolean equals(ObjectLocator thisLocator, ObjectLocator thatLocator, Object object, EqualsStrategy strategy) {
        if (!(object instanceof TransactionTypeTotalsDataType)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final TransactionTypeTotalsDataType that = ((TransactionTypeTotalsDataType) object);
        {
            SubmissionTransactionTypeCodeDataType lhsSubmissionTransactionTypeCode;
            lhsSubmissionTransactionTypeCode = this.getSubmissionTransactionTypeCode();
            SubmissionTransactionTypeCodeDataType rhsSubmissionTransactionTypeCode;
            rhsSubmissionTransactionTypeCode = that.getSubmissionTransactionTypeCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "submissionTransactionTypeCode", lhsSubmissionTransactionTypeCode), LocatorUtils.property(thatLocator, "submissionTransactionTypeCode", rhsSubmissionTransactionTypeCode), lhsSubmissionTransactionTypeCode, rhsSubmissionTransactionTypeCode)) {
                return false;
            }
        }
        {
            int lhsTotalAcceptedTransactions;
            lhsTotalAcceptedTransactions = (this.isSetTotalAcceptedTransactions()?this.getTotalAcceptedTransactions(): 0);
            int rhsTotalAcceptedTransactions;
            rhsTotalAcceptedTransactions = (that.isSetTotalAcceptedTransactions()?that.getTotalAcceptedTransactions(): 0);
            if (!strategy.equals(LocatorUtils.property(thisLocator, "totalAcceptedTransactions", lhsTotalAcceptedTransactions), LocatorUtils.property(thatLocator, "totalAcceptedTransactions", rhsTotalAcceptedTransactions), lhsTotalAcceptedTransactions, rhsTotalAcceptedTransactions)) {
                return false;
            }
        }
        {
            int lhsTotalRejectedTransactions;
            lhsTotalRejectedTransactions = (this.isSetTotalRejectedTransactions()?this.getTotalRejectedTransactions(): 0);
            int rhsTotalRejectedTransactions;
            rhsTotalRejectedTransactions = (that.isSetTotalRejectedTransactions()?that.getTotalRejectedTransactions(): 0);
            if (!strategy.equals(LocatorUtils.property(thisLocator, "totalRejectedTransactions", lhsTotalRejectedTransactions), LocatorUtils.property(thatLocator, "totalRejectedTransactions", rhsTotalRejectedTransactions), lhsTotalRejectedTransactions, rhsTotalRejectedTransactions)) {
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
            SubmissionTransactionTypeCodeDataType theSubmissionTransactionTypeCode;
            theSubmissionTransactionTypeCode = this.getSubmissionTransactionTypeCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "submissionTransactionTypeCode", theSubmissionTransactionTypeCode), currentHashCode, theSubmissionTransactionTypeCode);
        }
        {
            int theTotalAcceptedTransactions;
            theTotalAcceptedTransactions = (this.isSetTotalAcceptedTransactions()?this.getTotalAcceptedTransactions(): 0);
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "totalAcceptedTransactions", theTotalAcceptedTransactions), currentHashCode, theTotalAcceptedTransactions);
        }
        {
            int theTotalRejectedTransactions;
            theTotalRejectedTransactions = (this.isSetTotalRejectedTransactions()?this.getTotalRejectedTransactions(): 0);
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "totalRejectedTransactions", theTotalRejectedTransactions), currentHashCode, theTotalRejectedTransactions);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
