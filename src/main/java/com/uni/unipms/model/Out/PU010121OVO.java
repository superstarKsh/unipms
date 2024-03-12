package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonOutVO;

public class PU010121OVO extends CommonOutVO {
	
    private String sCOOP_ID = "";
    private String sCOOP_NM = "";
    private String sPHONE_NUM = "";

	public String getsCOOP_ID() {
		return sCOOP_ID;
	}
	
	public void setsCOOP_ID(String sCOOP_ID) {
		this.sCOOP_ID = sCOOP_ID;
	}

	public String getsCOOP_NM() {
		return sCOOP_NM;
	}
	
	public void setssCOOP_NM(String sCOOP_NM) {
		this.sCOOP_NM = sCOOP_NM;
	}
	
	public String getsPHONE_NUM() {
		return sPHONE_NUM;
	}

	public void setsPHONE_NUM(String sPHONE_NUM) {
		this.sPHONE_NUM = sPHONE_NUM;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
