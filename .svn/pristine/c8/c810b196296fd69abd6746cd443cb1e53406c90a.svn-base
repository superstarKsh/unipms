package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.common.Message.ConstantMessage;
import com.uni.unipms.model.CommonOutVO;

public class MN010102OVO extends CommonOutVO {
	
	private String sSTRT_DT = "";
	private String sEND_DT = "";
	private String sPRJT_YEAR = "";
	private String sPRJT_WEEK = "";
	private String sWEEK_ORDER = "";
	private String sFILE_NM = "";
	private String sPRJT_MANG_ID = "";
	private String sPRJT_MANG_NM = "";
	private String sDEV_STAGE = "";
	private String sTEST_STAGE = "";
	private String sIMG_URL = "";

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
	
	public String getsPRJT_YEAR() {
		return sPRJT_YEAR;
	}
	
	public void setsPRJT_YEAR(String sPRJT_YEAR) {
		this.sPRJT_YEAR = sPRJT_YEAR;
	}
	
	public String getsPRJT_WEEK() {
		return sPRJT_WEEK;
	}
	
	public void setsPRJT_WEEK(String sPRJT_WEEK) {
		this.sPRJT_WEEK = sPRJT_WEEK;
	}
	
	public String getsWEEK_ORDER() {
		return sWEEK_ORDER;
	}
	
	public void setsWEEK_ORDER(String sWEEK_ORDER) {
		this.sWEEK_ORDER = sWEEK_ORDER;
	}
	
	public String getsFILE_NM() {
		return sFILE_NM;
	}

	public void setsFILE_NM(String sFILE_NM) {
		this.sFILE_NM = sFILE_NM;
	}

	public String getsPRJT_MANG_ID() {
		return sPRJT_MANG_ID;
	}
	
	public void setsPRJT_MANG_ID(String sPRJT_MANG_ID) {
		this.sPRJT_MANG_ID = sPRJT_MANG_ID;
	}

	public String getsPRJT_MANG_NM() {
		return sPRJT_MANG_NM;
	}
	
	public void setsPRJT_MANG_NM(String sPRJT_MANG_NM) {
		this.sPRJT_MANG_NM = sPRJT_MANG_NM;
	}

	public String getsDEV_STAGE() {
		return sDEV_STAGE;
	}

	public void setsDEV_STAGE(String sDEV_STAGE) {
		this.sDEV_STAGE = sDEV_STAGE;
	}
	
	public String getsTEST_STAGE() {
		return sTEST_STAGE;
	}
	
	public void setsTEST_STAGE(String sTEST_STAGE) {
		this.sTEST_STAGE = sTEST_STAGE;
	}

    public String getsIMG_URL() {
    	if (!sFILE_NM.equals(""))
    		sIMG_URL = ConstantMessage.EXCEL_ICON_IMAGE_URL;

    	return sIMG_URL;
	}
    
    public void setsIMG_URL(String sIMG_URL) {
		this.sIMG_URL = sIMG_URL;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
