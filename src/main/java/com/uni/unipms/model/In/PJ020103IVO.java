package com.uni.unipms.model.In;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class PJ020103IVO extends CommonInVO {

	private String sUSER_ID = "";
	private String sCURR_PRJT_ID = "";

	public String getsUSER_ID() {
		return sUSER_ID;
	}

	public void setsUSER_ID(String sUSER_ID) {
		this.sUSER_ID = sUSER_ID;
	}
	
	public String getsCURR_PRJT_ID() {
		return sCURR_PRJT_ID;
	}

	public void setsCURR_PRJT_ID(String sCURR_PRJT_ID) {
		this.sCURR_PRJT_ID = sCURR_PRJT_ID;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
