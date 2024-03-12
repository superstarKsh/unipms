package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class MG140101OVO {
	
	public String sDOMAIN_ID = "00000000";
	public String sPRJT_ID = "";
	public String sACTIVITY_ID  = "";
	public String sCMPL_YN = "";

	public String getsDOMAIN_ID() {
		return sDOMAIN_ID;
	}

	public void setsDOMAIN_ID(String sDOMAIN_ID) {
		this.sDOMAIN_ID = sDOMAIN_ID;
	}

	public String getsPRJT_ID() {
		return sPRJT_ID;
	}

	public void setsPRJT_ID(String sPRJT_ID) {
		this.sPRJT_ID = sPRJT_ID;
	}

	public String getsACTIVITY_ID() {
		return sACTIVITY_ID;
	}

	public void setsACTIVITY_ID(String sACTIVITY_ID) {
		this.sACTIVITY_ID = sACTIVITY_ID;
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
