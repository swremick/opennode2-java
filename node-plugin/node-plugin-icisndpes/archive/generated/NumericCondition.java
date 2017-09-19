//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.12.07 at 11:39:25 AM EST 
//


package com.windsor.node.plugin.icisnpdes.generated;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import com.windsor.node.plugin.common.xml.bind.annotation.adapters.StringAdapter;
import org.jvnet.jaxb2_commons.lang.Equals;
import org.jvnet.jaxb2_commons.lang.EqualsStrategy;
import org.jvnet.jaxb2_commons.lang.HashCode;
import org.jvnet.jaxb2_commons.lang.HashCodeStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBEqualsStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBHashCodeStrategy;
import org.jvnet.jaxb2_commons.locator.ObjectLocator;
import org.jvnet.jaxb2_commons.locator.util.LocatorUtils;


/**
 * <p>Java class for NumericCondition complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="NumericCondition">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}NumericConditionText"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}NumericConditionQuantity" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}NumericConditionStatisticalBaseCode" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}NumericConditionQualifier" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}NumericConditionOptionalMonitoringIndicator" minOccurs="0"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}NumericConditionStayValue" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "NumericCondition", propOrder = {
    "numericConditionText",
    "numericConditionQuantity",
    "numericConditionStatisticalBaseCode",
    "numericConditionQualifier",
    "numericConditionOptionalMonitoringIndicator",
    "numericConditionStayValue"
})
@Entity(name = "NumericCondition")
@Table(name = "ICS_NUM_COND")
@Inheritance(strategy = InheritanceType.JOINED)
public class NumericCondition
    implements Serializable, Equals, HashCode
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "NumericConditionText", required = true)
    @XmlJavaTypeAdapter(StringAdapter.class)
    protected String numericConditionText;
    @XmlElement(name = "NumericConditionQuantity")
    @XmlJavaTypeAdapter(StringAdapter.class)
    protected String numericConditionQuantity;
    @XmlElement(name = "NumericConditionStatisticalBaseCode")
    protected String numericConditionStatisticalBaseCode;
    @XmlElement(name = "NumericConditionQualifier")
    protected String numericConditionQualifier;
    @XmlElement(name = "NumericConditionOptionalMonitoringIndicator")
    protected String numericConditionOptionalMonitoringIndicator;
    @XmlElement(name = "NumericConditionStayValue")
    @XmlJavaTypeAdapter(StringAdapter.class)
    protected String numericConditionStayValue;
    @XmlTransient
    protected String dbid;

    /**
     * Gets the value of the numericConditionText property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "NUM_COND_TXT", length = 255)
    public String getNumericConditionText() {
        return numericConditionText;
    }

    /**
     * Sets the value of the numericConditionText property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNumericConditionText(String value) {
        this.numericConditionText = value;
    }

    @Transient
    public boolean isSetNumericConditionText() {
        return (this.numericConditionText!= null);
    }

    /**
     * Gets the value of the numericConditionQuantity property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "NUM_COND_QTY", precision = 8, scale = 8)
    public String getNumericConditionQuantity() {
        return numericConditionQuantity;
    }

    /**
     * Sets the value of the numericConditionQuantity property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNumericConditionQuantity(String value) {
        this.numericConditionQuantity = value;
    }

    @Transient
    public boolean isSetNumericConditionQuantity() {
        return (this.numericConditionQuantity!= null);
    }

    /**
     * Gets the value of the numericConditionStatisticalBaseCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "NUM_COND_STAT_BASE_CODE", length = 3)
    public String getNumericConditionStatisticalBaseCode() {
        return numericConditionStatisticalBaseCode;
    }

    /**
     * Sets the value of the numericConditionStatisticalBaseCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNumericConditionStatisticalBaseCode(String value) {
        this.numericConditionStatisticalBaseCode = value;
    }

    @Transient
    public boolean isSetNumericConditionStatisticalBaseCode() {
        return (this.numericConditionStatisticalBaseCode!= null);
    }

    /**
     * Gets the value of the numericConditionQualifier property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "NUM_COND_QUALIFIER", length = 3)
    public String getNumericConditionQualifier() {
        return numericConditionQualifier;
    }

    /**
     * Sets the value of the numericConditionQualifier property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNumericConditionQualifier(String value) {
        this.numericConditionQualifier = value;
    }

    @Transient
    public boolean isSetNumericConditionQualifier() {
        return (this.numericConditionQualifier!= null);
    }

    /**
     * Gets the value of the numericConditionOptionalMonitoringIndicator property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "NUM_COND_OPT_MON_IND", columnDefinition = "char(1)", length = 1)
    public String getNumericConditionOptionalMonitoringIndicator() {
        return numericConditionOptionalMonitoringIndicator;
    }

    /**
     * Sets the value of the numericConditionOptionalMonitoringIndicator property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNumericConditionOptionalMonitoringIndicator(String value) {
        this.numericConditionOptionalMonitoringIndicator = value;
    }

    @Transient
    public boolean isSetNumericConditionOptionalMonitoringIndicator() {
        return (this.numericConditionOptionalMonitoringIndicator!= null);
    }

    /**
     * Gets the value of the numericConditionStayValue property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "NUM_COND_STAY_VALUE", precision = 8, scale = 8)
    public String getNumericConditionStayValue() {
        return numericConditionStayValue;
    }

    /**
     * Sets the value of the numericConditionStayValue property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNumericConditionStayValue(String value) {
        this.numericConditionStayValue = value;
    }

    @Transient
    public boolean isSetNumericConditionStayValue() {
        return (this.numericConditionStayValue!= null);
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
    @Column(name = "ICS_NUM_COND_ID")
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
        if (!(object instanceof NumericCondition)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final NumericCondition that = ((NumericCondition) object);
        {
            String lhsNumericConditionText;
            lhsNumericConditionText = this.getNumericConditionText();
            String rhsNumericConditionText;
            rhsNumericConditionText = that.getNumericConditionText();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "numericConditionText", lhsNumericConditionText), LocatorUtils.property(thatLocator, "numericConditionText", rhsNumericConditionText), lhsNumericConditionText, rhsNumericConditionText)) {
                return false;
            }
        }
        {
            String lhsNumericConditionQuantity;
            lhsNumericConditionQuantity = this.getNumericConditionQuantity();
            String rhsNumericConditionQuantity;
            rhsNumericConditionQuantity = that.getNumericConditionQuantity();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "numericConditionQuantity", lhsNumericConditionQuantity), LocatorUtils.property(thatLocator, "numericConditionQuantity", rhsNumericConditionQuantity), lhsNumericConditionQuantity, rhsNumericConditionQuantity)) {
                return false;
            }
        }
        {
            String lhsNumericConditionStatisticalBaseCode;
            lhsNumericConditionStatisticalBaseCode = this.getNumericConditionStatisticalBaseCode();
            String rhsNumericConditionStatisticalBaseCode;
            rhsNumericConditionStatisticalBaseCode = that.getNumericConditionStatisticalBaseCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "numericConditionStatisticalBaseCode", lhsNumericConditionStatisticalBaseCode), LocatorUtils.property(thatLocator, "numericConditionStatisticalBaseCode", rhsNumericConditionStatisticalBaseCode), lhsNumericConditionStatisticalBaseCode, rhsNumericConditionStatisticalBaseCode)) {
                return false;
            }
        }
        {
            String lhsNumericConditionQualifier;
            lhsNumericConditionQualifier = this.getNumericConditionQualifier();
            String rhsNumericConditionQualifier;
            rhsNumericConditionQualifier = that.getNumericConditionQualifier();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "numericConditionQualifier", lhsNumericConditionQualifier), LocatorUtils.property(thatLocator, "numericConditionQualifier", rhsNumericConditionQualifier), lhsNumericConditionQualifier, rhsNumericConditionQualifier)) {
                return false;
            }
        }
        {
            String lhsNumericConditionOptionalMonitoringIndicator;
            lhsNumericConditionOptionalMonitoringIndicator = this.getNumericConditionOptionalMonitoringIndicator();
            String rhsNumericConditionOptionalMonitoringIndicator;
            rhsNumericConditionOptionalMonitoringIndicator = that.getNumericConditionOptionalMonitoringIndicator();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "numericConditionOptionalMonitoringIndicator", lhsNumericConditionOptionalMonitoringIndicator), LocatorUtils.property(thatLocator, "numericConditionOptionalMonitoringIndicator", rhsNumericConditionOptionalMonitoringIndicator), lhsNumericConditionOptionalMonitoringIndicator, rhsNumericConditionOptionalMonitoringIndicator)) {
                return false;
            }
        }
        {
            String lhsNumericConditionStayValue;
            lhsNumericConditionStayValue = this.getNumericConditionStayValue();
            String rhsNumericConditionStayValue;
            rhsNumericConditionStayValue = that.getNumericConditionStayValue();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "numericConditionStayValue", lhsNumericConditionStayValue), LocatorUtils.property(thatLocator, "numericConditionStayValue", rhsNumericConditionStayValue), lhsNumericConditionStayValue, rhsNumericConditionStayValue)) {
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
            String theNumericConditionText;
            theNumericConditionText = this.getNumericConditionText();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "numericConditionText", theNumericConditionText), currentHashCode, theNumericConditionText);
        }
        {
            String theNumericConditionQuantity;
            theNumericConditionQuantity = this.getNumericConditionQuantity();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "numericConditionQuantity", theNumericConditionQuantity), currentHashCode, theNumericConditionQuantity);
        }
        {
            String theNumericConditionStatisticalBaseCode;
            theNumericConditionStatisticalBaseCode = this.getNumericConditionStatisticalBaseCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "numericConditionStatisticalBaseCode", theNumericConditionStatisticalBaseCode), currentHashCode, theNumericConditionStatisticalBaseCode);
        }
        {
            String theNumericConditionQualifier;
            theNumericConditionQualifier = this.getNumericConditionQualifier();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "numericConditionQualifier", theNumericConditionQualifier), currentHashCode, theNumericConditionQualifier);
        }
        {
            String theNumericConditionOptionalMonitoringIndicator;
            theNumericConditionOptionalMonitoringIndicator = this.getNumericConditionOptionalMonitoringIndicator();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "numericConditionOptionalMonitoringIndicator", theNumericConditionOptionalMonitoringIndicator), currentHashCode, theNumericConditionOptionalMonitoringIndicator);
        }
        {
            String theNumericConditionStayValue;
            theNumericConditionStayValue = this.getNumericConditionStayValue();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "numericConditionStayValue", theNumericConditionStayValue), currentHashCode, theNumericConditionStayValue);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
