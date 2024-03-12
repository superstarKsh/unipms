package com.uni.unipms.model.In;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class MG130101IVO extends CommonInVO {
	
	public String sQTYPE = "";
	public String sMNG_STAGE = "";
	public String sACTIVITY_ID = "";
	public String sTASK_ID = "";
	public String sFILE_VER = "";
	public String sCMPL_DT = "";
	public String sFILE_NM  = "";
	public String sCMPL_YN = "";
	
	public String getsQTYPE() {
		return sQTYPE;
	}

	public void setsQTYPE(String sQTYPE) {
		this.sQTYPE = sQTYPE;
	}
	
	public String getsMNG_STAGE() {
		return sMNG_STAGE;
	}

	public void setsMNG_STAGE(String sMNG_STAGE) {
		this.sMNG_STAGE = sMNG_STAGE;
	}
	
	public String getsACTIVITY_ID() {
		return sACTIVITY_ID;
	}

	public void setsACTIVITY_ID(String sACTIVITY_ID) {
		this.sACTIVITY_ID = sACTIVITY_ID;
	}
	
	public String getsTASK_ID() {
		return sTASK_ID;
	}

	public void setsTASK_ID(String sTASK_ID) {
		this.sTASK_ID = sTASK_ID;
	}
	
	public String getsFILE_VER() {
		return sFILE_VER;
	}

	public void setsFILE_VER(String sFILE_VER) {
		this.sFILE_VER = sFILE_VER;
	}

	public String getsCMPL_DT() {
		return sCMPL_DT;
	}

	public void setsCMPL_DT(String sCMPL_DT) {
		this.sCMPL_DT = sCMPL_DT;
	}
	
	public String getsFILE_NM() {
		return sFILE_NM;
	}

	public void setsFILE_NM(String sFILE_NM) {
		this.sFILE_NM = sFILE_NM;
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
