package com.uni.unipms.model;


import org.apache.commons.lang3.builder.ToStringStyle;
import org.apache.commons.lang3.builder.ToStringBuilder;

import lombok.AllArgsConstructor;

@AllArgsConstructor
 
public class CommonInVO extends CommonVO {

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}
}
