package com.windsor.node.plugin.rcra57.converter;

import com.windsor.node.plugin.rcra57.domain.QuantityUOMCodeDataType;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter(autoApply = true)
public class QuantityUOMCodeDataTypeConverter implements AttributeConverter<QuantityUOMCodeDataType, String> {

    @Override
    public String convertToDatabaseColumn(QuantityUOMCodeDataType quantityUOMCodeDataType) {
        String s = null;
        if (quantityUOMCodeDataType != null) {
            s = quantityUOMCodeDataType.value();
        }
        return s;
    }

    @Override
    public QuantityUOMCodeDataType convertToEntityAttribute(String s) {
        return QuantityUOMCodeDataType.fromValue(s);
    }
}
