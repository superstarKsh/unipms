package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonOutVO;

public class WSPJ020101OVO extends CommonOutVO{
	
	private String sOUTSRC_DSCR = "";

	public String getsOUTSRC_DSCR() {
		return sOUTSRC_DSCR;
	}

	public void setsOUTSRC_DSCR(String sOUTSRC_DSCR) {
		this.sOUTSRC_DSCR = sOUTSRC_DSCR;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
