package com.uni.unipms.model.In;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class PU010121IVO extends CommonInVO {
	
	private String sCOOP_NM = "";

	public String getsCOOP_NM() {
		return sCOOP_NM;
	}
	
	public void setsCOOP_NM(String sCOOP_NM) {
		this.sCOOP_NM = sCOOP_NM;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
