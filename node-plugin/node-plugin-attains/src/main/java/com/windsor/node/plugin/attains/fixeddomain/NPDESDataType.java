//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.5-2 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2013.04.09 at 07:20:00 AM PDT 
//


package com.windsor.node.plugin.attains.fixeddomain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
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
 * <p>Java class for NPDESDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="NPDESDataType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="NPDESDetails" type="{http://www.exchangenetwork.net/schema/OWIR/ATT/2}NPDESDetailsDataType" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "NPDESDataType", propOrder = {
    "npdesDetails"
})
public class NPDESDataType
    implements Serializable, Equals, HashCode
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "NPDESDetails")
    protected List<NPDESDetailsDataType> npdesDetails;

    /**
     * Gets the value of the npdesDetails property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the npdesDetails property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getNPDESDetails().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link NPDESDetailsDataType }
     * 
     * 
     */
    public List<NPDESDetailsDataType> getNPDESDetails() {
        if (npdesDetails == null) {
            npdesDetails = new ArrayList<NPDESDetailsDataType>();
        }
        return this.npdesDetails;
    }

    /**
     * 
     * 
     */
    public void setNPDESDetails(List<NPDESDetailsDataType> npdesDetails) {
        this.npdesDetails = npdesDetails;
    }

    public boolean isSetNPDESDetails() {
        return ((this.npdesDetails!= null)&&(!this.npdesDetails.isEmpty()));
    }

    public void unsetNPDESDetails() {
        this.npdesDetails = null;
    }

    public boolean equals(ObjectLocator thisLocator, ObjectLocator thatLocator, Object object, EqualsStrategy strategy) {
        if (!(object instanceof NPDESDataType)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final NPDESDataType that = ((NPDESDataType) object);
        {
            List<NPDESDetailsDataType> lhsNPDESDetails;
            lhsNPDESDetails = (this.isSetNPDESDetails()?this.getNPDESDetails():null);
            List<NPDESDetailsDataType> rhsNPDESDetails;
            rhsNPDESDetails = (that.isSetNPDESDetails()?that.getNPDESDetails():null);
            if (!strategy.equals(LocatorUtils.property(thisLocator, "npdesDetails", lhsNPDESDetails), LocatorUtils.property(thatLocator, "npdesDetails", rhsNPDESDetails), lhsNPDESDetails, rhsNPDESDetails)) {
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
            List<NPDESDetailsDataType> theNPDESDetails;
            theNPDESDetails = (this.isSetNPDESDetails()?this.getNPDESDetails():null);
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "npdesDetails", theNPDESDetails), currentHashCode, theNPDESDetails);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
