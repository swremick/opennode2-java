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
import com.windsor.node.plugin.icisnpdes.domain.AbstractCAFOPermitData;
import org.jvnet.jaxb2_commons.lang.Equals;
import org.jvnet.jaxb2_commons.lang.EqualsStrategy;
import org.jvnet.jaxb2_commons.lang.HashCode;
import org.jvnet.jaxb2_commons.lang.HashCodeStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBEqualsStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBHashCodeStrategy;
import org.jvnet.jaxb2_commons.locator.ObjectLocator;
import org.jvnet.jaxb2_commons.locator.util.LocatorUtils;


/**
 * <p>Java class for CAFOPermitData complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="CAFOPermitData">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}TransactionHeader"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}CAFOPermit"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "CAFOPermitData", propOrder = {
    "transactionHeader",
    "cafoPermit"
})
@Entity(name = "CAFOPermitData")
@Table(name = "ICS_CAFO_PRMT")
@Inheritance(strategy = InheritanceType.JOINED)
public class CAFOPermitData
    extends AbstractCAFOPermitData
    implements Serializable, Equals, HashCode
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "TransactionHeader", required = true)
    protected TransactionHeader transactionHeader;
    @XmlElement(name = "CAFOPermit", required = true)
    protected CAFOPermit cafoPermit;
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
     * Gets the value of the cafoPermit property.
     * 
     * @return
     *     possible object is
     *     {@link CAFOPermit }
     *     
     */
    @Embedded
    @AttributeOverrides({
        @AttributeOverride(name = "cafoClassificationCode", column = @Column(name = "CAFO_CLASS_CODE", length = 3)),
        @AttributeOverride(name = "isAnimalFacilityTypeCAFOIndicator", column = @Column(name = "IS_ANML_FAC_TYPE_CAFO_IND", columnDefinition = "char(1)", length = 1)),
        @AttributeOverride(name = "cafoDesignationDate", column = @Column(name = "CAFO_DESGN_DATE")),
        @AttributeOverride(name = "cafoDesignationReasonText", column = @Column(name = "CAFO_DESGN_REASON_TXT", length = 500)),
        @AttributeOverride(name = "numberAcresContributingDrainage", column = @Column(name = "NUM_ACRES_CONTRB_DRAIN", scale = 0)),
        @AttributeOverride(name = "applicationMeasureAvailableLandNumber", column = @Column(name = "APPL_MEAS_AVAIL_LAND_NUM", scale = 0)),
        @AttributeOverride(name = "solidManureLitterGeneratedAmount", column = @Column(name = "SOLID_MNUR_LTTR_GNRTD_AMT", scale = 0)),
        @AttributeOverride(name = "liquidManureWastewaterGeneratedAmount", column = @Column(name = "LIQUID_MNUR_WW_GNRTD_AMT", scale = 0)),
        @AttributeOverride(name = "solidManureLitterTransferAmount", column = @Column(name = "SOLID_MNUR_LTTR_TRANS_AMT", scale = 0)),
        @AttributeOverride(name = "liquidManureWastewaterTransferAmount", column = @Column(name = "LIQUID_MNUR_WW_TRANS_AMT", scale = 0)),
        @AttributeOverride(name = "nmpDevelopedCertifiedPlannerApprovedIndicator", column = @Column(name = "NMP_DVLPD_CERT_PLNR_APRVD_IND", columnDefinition = "char(1)", length = 1)),
        @AttributeOverride(name = "nmpDevelopedDate", column = @Column(name = "NMP_DVLPD_DATE")),
        @AttributeOverride(name = "nmpLastUpdatedDate", column = @Column(name = "NMP_LAST_UPDATED_DATE")),
        @AttributeOverride(name = "environmentalManagementSystemIndicator", column = @Column(name = "ENVR_MGMT_SYSTM_IND", columnDefinition = "char(1)", length = 1)),
        @AttributeOverride(name = "emsDevelopedDate", column = @Column(name = "EMS_DVLPD_DATE")),
        @AttributeOverride(name = "emsLastUpdatedDate", column = @Column(name = "EMS_LAST_UPDATED_DATE")),
        @AttributeOverride(name = "livestockMaximumCapacityNumber", column = @Column(name = "LVSTCK_MAX_CPCTY_NUM", scale = 0)),
        @AttributeOverride(name = "livestockCapacityDeterminationBasedUponNumber", column = @Column(name = "LVSTCK_CPCTY_DTRMN_BS_UPON_NUM", scale = 0)),
        @AttributeOverride(name = "authorizedLivestockCapacityNumber", column = @Column(name = "AUTH_LVSTCK_CPCTY_NUM", scale = 0)),
        @AttributeOverride(name = "legalDescriptionText", column = @Column(name = "LEGAL_DESC_TXT", length = 100))
    })
    @AssociationOverrides({
        @AssociationOverride(name = "animalType", joinColumns = {
            @JoinColumn(name = "ICS_CAFO_PRMT_ID")
        }),
        @AssociationOverride(name = "manureLitterProcessedWastewaterStorage", joinColumns = {
            @JoinColumn(name = "ICS_CAFO_PRMT_ID")
        }),
        @AssociationOverride(name = "containment", joinColumns = {
            @JoinColumn(name = "ICS_CAFO_PRMT_ID")
        }),
        @AssociationOverride(name = "landApplicationBMP", joinColumns = {
            @JoinColumn(name = "ICS_CAFO_PRMT_ID")
        }),
        @AssociationOverride(name = "cafoContact.contact", joinColumns = {
            @JoinColumn(name = "ICS_CAFO_PRMT_ID")
        }),
        @AssociationOverride(name = "cafoAddress.address", joinColumns = {
            @JoinColumn(name = "ICS_CAFO_PRMT_ID")
        })
    })
    public CAFOPermit getCAFOPermit() {
        return cafoPermit;
    }

    /**
     * Sets the value of the cafoPermit property.
     * 
     * @param value
     *     allowed object is
     *     {@link CAFOPermit }
     *     
     */
    public void setCAFOPermit(CAFOPermit value) {
        this.cafoPermit = value;
    }

    @Transient
    public boolean isSetCAFOPermit() {
        return (this.cafoPermit!= null);
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
    @Column(name = "ICS_CAFO_PRMT_ID")
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
        if (!(object instanceof CAFOPermitData)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final CAFOPermitData that = ((CAFOPermitData) object);
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
            CAFOPermit lhsCAFOPermit;
            lhsCAFOPermit = this.getCAFOPermit();
            CAFOPermit rhsCAFOPermit;
            rhsCAFOPermit = that.getCAFOPermit();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "cafoPermit", lhsCAFOPermit), LocatorUtils.property(thatLocator, "cafoPermit", rhsCAFOPermit), lhsCAFOPermit, rhsCAFOPermit)) {
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
            CAFOPermit theCAFOPermit;
            theCAFOPermit = this.getCAFOPermit();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "cafoPermit", theCAFOPermit), currentHashCode, theCAFOPermit);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
