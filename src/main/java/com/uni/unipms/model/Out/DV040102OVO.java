package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonOutVO;

public class DV040102OVO extends CommonOutVO {
	
	private String sTOT_CNT = "";
	private String sCOMPLETE_CNT = "";
	private String sDELAY_CNT = "";
	private String sCUR_WEEK_CNT = "";
	private String sNEXT_WEEK_CNT = "";
	private String sPROGRESS_RT = "";

	public String getsTOT_CNT() {
		return sTOT_CNT;
	}
	
	public void setsTOT_CNT(String sTOT_CNT) {
		this.sTOT_CNT = sTOT_CNT;
	}
	
	public String getsCOMPLETE_CNT() {
		return sCOMPLETE_CNT;
	}
	
	public void setsCOMPLETE_CNT(String sCOMPLETE_CNT) {
		this.sCOMPLETE_CNT = sCOMPLETE_CNT;
	}
	
	public String getsDELAY_CNT() {
		return sDELAY_CNT;
	}
	
	public void setsDELAY_CNT(String sDELAY_CNT) {
		this.sDELAY_CNT = sDELAY_CNT;
	}
	
	public String getsCUR_WEEK_CNT() {
		return sCUR_WEEK_CNT;
	}
	
	public void setsCUR_WEEK_CNT(String sCUR_WEEK_CNT) {
		this.sCUR_WEEK_CNT = sCUR_WEEK_CNT;
	}
	
	public String getsNEXT_WEEK_CNT() {
		return sNEXT_WEEK_CNT;
	}
	
	public void setsNEXT_WEEK_CNT(String sNEXT_WEEK_CNT) {
		this.sNEXT_WEEK_CNT = sNEXT_WEEK_CNT;
	}
	
	public String getsPROGRESS_RT() {
		return sPROGRESS_RT;
	}
	
	public void setsPROGRESS_RT(String sPROGRESS_RT) {
		this.sPROGRESS_RT = sPROGRESS_RT;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
