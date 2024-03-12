package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonOutVO;

public class MG020102OVO extends CommonOutVO {
	
	private String sCURR_DT = "";
    private String sCURR_YYYY = "";
    private String sCURR_MM = "";
    private String sCURR_DD = "";
    private String sCURR_WEEK = "";
    private String sPRJT_WEEK = "";
    private String sSTRT_DT = "";
    private String sEND_DT = "";
    private String sWEEK_TYPE = "";
    private String sWEEK_TYPE_NM = "";
    private String sHDAY_TYPE = "";
    private String sZEROSTRING = "";

    public String getsCURR_DT() {
		return sCURR_DT;
	}
	
	public void setsCURR_DT(String sCURR_DT) {
		this.sCURR_DT = sCURR_DT;
	}

	public String getsCURR_YYYY() {
		return sCURR_YYYY;
	}
	
	public void setsCURR_YYYY(String sCURR_YYYY) {
		this.sCURR_YYYY = sCURR_YYYY;
	}
	
	public String getsCURR_MM() {
		return sCURR_MM;
	}

	public void setsCURR_MM(String sCURR_MM) {
		this.sCURR_MM = sCURR_MM;
	}

	public String getsCURR_DD() {
		return sCURR_DD;
	}

	public void setsCURR_DD(String sCURR_DD) {
		this.sCURR_DD = sCURR_DD;
	}
	
	public String getsCURR_WEEK() {
		return sCURR_WEEK;
	}

	public void setsCURR_WEEK(String sCURR_WEEK) {
		this.sCURR_WEEK = sCURR_WEEK;
	}
	
	public String getsPRJT_WEEK() {
		return sPRJT_WEEK;
	}

	public void setsPRJT_WEEK(String sPRJT_WEEK) {
		this.sPRJT_WEEK = sPRJT_WEEK;
	}
	
	public String getsSTRT_DT() {
		return sSTRT_DT;
	}

	public void setsSTRT_DT(String sSTRT_DT) {
		this.sSTRT_DT = sSTRT_DT;
	}
	
	public String getsEND_DT() {
		return sEND_DT;
	}

	public void setsEND_DT(String sEND_DT) {
		this.sEND_DT = sEND_DT;
	}
	
	public String getsWEEK_TYPE() {
		return sWEEK_TYPE;
	}

	public void setsWEEK_TYPE(String sWEEK_TYPE) {
		this.sWEEK_TYPE = sWEEK_TYPE;
	}

	public String getsWEEK_TYPE_NM() {
		return sWEEK_TYPE_NM;
	}

	public void setsWEEK_TYPE_NM(String sWEEK_TYPE_NM) {
		this.sWEEK_TYPE_NM = sWEEK_TYPE_NM;
	}
	
	public String getsHDAY_TYPE() {
		return sHDAY_TYPE;
	}

	public void setsHDAY_TYPE(String sHDAY_TYPE) {
		this.sHDAY_TYPE = sHDAY_TYPE;
	}
	
	public String getsZEROSTRING() {
		return sZEROSTRING;
	}

	public void setsZEROSTRING(String sZEROSTRING) {
		this.sZEROSTRING = sZEROSTRING;
	}
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
