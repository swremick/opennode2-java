//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2018.02.26 at 10:48:23 AM EST 
//


package com.windsor.node.plugin.rcra56.domain.generated;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
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
 * <p>Java class for HazardousWasteHandlerSubmissionDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="HazardousWasteHandlerSubmissionDataType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.exchangenetwork.net/schema/RCRA/5}FacilitySubmission" maxOccurs="unbounded"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "HazardousWasteHandlerSubmissionDataType", namespace = "http://www.exchangenetwork.net/schema/RCRA/5", propOrder = {
    "facilitySubmission"
})
@Entity(name = "HazardousWasteHandlerSubmissionDataType")
@Table(name = "RCRA_HZRDWASTEHANDLERSUB")
@Inheritance(strategy = InheritanceType.JOINED)
public class HazardousWasteHandlerSubmissionDataType
    implements Serializable, Equals, HashCode
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "FacilitySubmission", namespace = "http://www.exchangenetwork.net/schema/RCRA/5", required = true)
    protected List<FacilitySubmissionDataType> facilitySubmission;
    @XmlTransient
    protected Long id;

    /**
     * Gets the value of the facilitySubmission property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the facilitySubmission property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getFacilitySubmission().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link FacilitySubmissionDataType }
     * 
     * 
     */
    @OneToMany(targetEntity = FacilitySubmissionDataType.class, cascade = {
        CascadeType.ALL
    })
    @JoinColumn(name = "HZRDWASTEHANDLERSUBID")
    public List<FacilitySubmissionDataType> getFacilitySubmission() {
        if (facilitySubmission == null) {
            facilitySubmission = new ArrayList<FacilitySubmissionDataType>();
        }
        return this.facilitySubmission;
    }

    /**
     * 
     * 
     */
    public void setFacilitySubmission(List<FacilitySubmissionDataType> facilitySubmission) {
        this.facilitySubmission = facilitySubmission;
    }

    @Transient
    public boolean isSetFacilitySubmission() {
        return ((this.facilitySubmission!= null)&&(!this.facilitySubmission.isEmpty()));
    }

    public void unsetFacilitySubmission() {
        this.facilitySubmission = null;
    }

    /**
     * 
     * 
     * @return
     *     possible object is
     *     {@link Long }
     *     
     */
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getID() {
        return id;
    }

    /**
     * 
     * 
     * @param value
     *     allowed object is
     *     {@link Long }
     *     
     */
    public void setID(Long value) {
        this.id = value;
    }

    public boolean equals(ObjectLocator thisLocator, ObjectLocator thatLocator, Object object, EqualsStrategy strategy) {
        if (!(object instanceof HazardousWasteHandlerSubmissionDataType)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final HazardousWasteHandlerSubmissionDataType that = ((HazardousWasteHandlerSubmissionDataType) object);
        {
            List<FacilitySubmissionDataType> lhsFacilitySubmission;
            lhsFacilitySubmission = (this.isSetFacilitySubmission()?this.getFacilitySubmission():null);
            List<FacilitySubmissionDataType> rhsFacilitySubmission;
            rhsFacilitySubmission = (that.isSetFacilitySubmission()?that.getFacilitySubmission():null);
            if (!strategy.equals(LocatorUtils.property(thisLocator, "facilitySubmission", lhsFacilitySubmission), LocatorUtils.property(thatLocator, "facilitySubmission", rhsFacilitySubmission), lhsFacilitySubmission, rhsFacilitySubmission)) {
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
            List<FacilitySubmissionDataType> theFacilitySubmission;
            theFacilitySubmission = (this.isSetFacilitySubmission()?this.getFacilitySubmission():null);
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "facilitySubmission", theFacilitySubmission), currentHashCode, theFacilitySubmission);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
