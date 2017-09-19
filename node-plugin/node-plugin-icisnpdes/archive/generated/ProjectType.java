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
import com.windsor.node.plugin.icisnpdes.domain.AbstractProjectType;
import org.jvnet.jaxb2_commons.lang.Equals;
import org.jvnet.jaxb2_commons.lang.EqualsStrategy;
import org.jvnet.jaxb2_commons.lang.HashCode;
import org.jvnet.jaxb2_commons.lang.HashCodeStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBEqualsStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBHashCodeStrategy;
import org.jvnet.jaxb2_commons.locator.ObjectLocator;
import org.jvnet.jaxb2_commons.locator.util.LocatorUtils;


/**
 * <p>Java class for ProjectType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ProjectType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}ProjectTypeCode"/>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/icis/5}ProjectTypeCodeOtherDescription" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ProjectType", propOrder = {
    "projectTypeCode",
    "projectTypeCodeOtherDescription"
})
@Entity(name = "ProjectType")
@Table(name = "ICS_PROJ_TYPE")
@Inheritance(strategy = InheritanceType.JOINED)
public class ProjectType
    extends AbstractProjectType
    implements Serializable, Equals, HashCode
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "ProjectTypeCode", required = true)
    protected String projectTypeCode;
    @XmlElement(name = "ProjectTypeCodeOtherDescription")
    protected String projectTypeCodeOtherDescription;
    @XmlTransient
    protected String dbid;

    /**
     * Gets the value of the projectTypeCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "PROJ_TYPE_CODE", length = 3)
    public String getProjectTypeCode() {
        return projectTypeCode;
    }

    /**
     * Sets the value of the projectTypeCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setProjectTypeCode(String value) {
        this.projectTypeCode = value;
    }

    @Transient
    public boolean isSetProjectTypeCode() {
        return (this.projectTypeCode!= null);
    }

    /**
     * Gets the value of the projectTypeCodeOtherDescription property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Basic
    @Column(name = "PROJ_TYPE_CODE_OTHR_DESC", length = 50)
    public String getProjectTypeCodeOtherDescription() {
        return projectTypeCodeOtherDescription;
    }

    /**
     * Sets the value of the projectTypeCodeOtherDescription property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setProjectTypeCodeOtherDescription(String value) {
        this.projectTypeCodeOtherDescription = value;
    }

    @Transient
    public boolean isSetProjectTypeCodeOtherDescription() {
        return (this.projectTypeCodeOtherDescription!= null);
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
    @Column(name = "ICS_PROJ_TYPE_ID")
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
        if (!(object instanceof ProjectType)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final ProjectType that = ((ProjectType) object);
        {
            String lhsProjectTypeCode;
            lhsProjectTypeCode = this.getProjectTypeCode();
            String rhsProjectTypeCode;
            rhsProjectTypeCode = that.getProjectTypeCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "projectTypeCode", lhsProjectTypeCode), LocatorUtils.property(thatLocator, "projectTypeCode", rhsProjectTypeCode), lhsProjectTypeCode, rhsProjectTypeCode)) {
                return false;
            }
        }
        {
            String lhsProjectTypeCodeOtherDescription;
            lhsProjectTypeCodeOtherDescription = this.getProjectTypeCodeOtherDescription();
            String rhsProjectTypeCodeOtherDescription;
            rhsProjectTypeCodeOtherDescription = that.getProjectTypeCodeOtherDescription();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "projectTypeCodeOtherDescription", lhsProjectTypeCodeOtherDescription), LocatorUtils.property(thatLocator, "projectTypeCodeOtherDescription", rhsProjectTypeCodeOtherDescription), lhsProjectTypeCodeOtherDescription, rhsProjectTypeCodeOtherDescription)) {
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
            String theProjectTypeCode;
            theProjectTypeCode = this.getProjectTypeCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "projectTypeCode", theProjectTypeCode), currentHashCode, theProjectTypeCode);
        }
        {
            String theProjectTypeCodeOtherDescription;
            theProjectTypeCodeOtherDescription = this.getProjectTypeCodeOtherDescription();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "projectTypeCodeOtherDescription", theProjectTypeCodeOtherDescription), currentHashCode, theProjectTypeCodeOtherDescription);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
