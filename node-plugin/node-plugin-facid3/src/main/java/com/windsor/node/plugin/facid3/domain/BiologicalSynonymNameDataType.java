//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2012.01.24 at 11:33:47 AM PST 
//


package com.windsor.node.plugin.facid3.domain;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlValue;


/**
 * <p>Java class for BiologicalSynonymNameDataType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="BiologicalSynonymNameDataType">
 *   &lt;simpleContent>
 *     &lt;extension base="&lt;http://www.w3.org/2001/XMLSchema>string">
 *       &lt;attribute name="BiologicalSynonymNameContext" type="{http://www.w3.org/2001/XMLSchema}string" />
 *     &lt;/extension>
 *   &lt;/simpleContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "BiologicalSynonymNameDataType", propOrder = {
    "value"
})
public class BiologicalSynonymNameDataType {

    @XmlValue
    protected String value;
    @XmlAttribute(name = "BiologicalSynonymNameContext")
    protected String biologicalSynonymNameContext;

    /**
     * Gets the value of the value property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getValue() {
        return value;
    }

    /**
     * Sets the value of the value property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setValue(String value) {
        this.value = value;
    }

    /**
     * Gets the value of the biologicalSynonymNameContext property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getBiologicalSynonymNameContext() {
        return biologicalSynonymNameContext;
    }

    /**
     * Sets the value of the biologicalSynonymNameContext property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setBiologicalSynonymNameContext(String value) {
        this.biologicalSynonymNameContext = value;
    }

}
