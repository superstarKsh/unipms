package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonOutVO;

public class MG110101OVO extends CommonOutVO {
	
	public String sMNG_STAGE  = "";
	public String sMNG_STAGE_NM  = "";
	public String sMNG_STAGE_DESC  = "";
	public String sCMPL_DT  = "";
	public String sCMPL_YN  = "";
	
	public String getsMNG_STAGE() {
		return sMNG_STAGE;
	}

	public void setsMNG_STAGE(String sMNG_STAGE) {
		this.sMNG_STAGE = sMNG_STAGE;
	}

	public String getsMNG_STAGE_NM() {
		return sMNG_STAGE_NM;
	}

	public void setsMNG_STAGE_NM(String sMNG_STAGE_NM) {
		this.sMNG_STAGE_NM = sMNG_STAGE_NM;
	}

	public String getsMNG_STAGE_DESC() {
		return sMNG_STAGE_DESC;
	}

	public void setsMNG_STAGE_DESC(String sMNG_STAGE_DESC) {
		this.sMNG_STAGE_DESC = sMNG_STAGE_DESC;
	}

	public String getsCMPL_DT() {
		return sCMPL_DT;
	}

	public void setsCMPL_DT(String sCMPL_DT) {
		this.sCMPL_DT = sCMPL_DT;
	}

	public String getsCMPL_YN() {
		return sCMPL_YN;
	}

	public void setsCMPL_YN(String sCMPL_YN) {
		this.sCMPL_YN = sCMPL_YN;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
