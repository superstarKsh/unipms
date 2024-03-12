package com.uni.unipms.model.In;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class DV010101IVO extends CommonInVO {
	
	private String sSELECT_TYPE = "";

	public String getsSELECT_TYPE() {
		return sSELECT_TYPE;
	}
	
	public void setsSELECT_TYPE(String sSELECT_TYPE) {
		this.sSELECT_TYPE = sSELECT_TYPE;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
