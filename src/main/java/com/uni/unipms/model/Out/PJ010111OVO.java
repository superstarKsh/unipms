package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonOutVO;

public class PJ010111OVO extends CommonOutVO{
	
	private String sYYYYMM = "";
    private String sMAN_MONTH = "";

	public String getsYYYYMM() {
		return sYYYYMM;
	}
	
	public void setsYYYYMM(String sYYYYMM) {
		this.sYYYYMM = sYYYYMM;
	}
	
	public String getsMAN_MONTH() {
		return sMAN_MONTH;
	}
	
	public void setsMAN_MONTH(String sMAN_MONTH) {
		this.sMAN_MONTH = sMAN_MONTH;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}
}
