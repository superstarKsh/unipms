package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.common.Message.ConstantMessage;
import com.uni.unipms.model.CommonOutVO;

public class DV060102OVO extends CommonOutVO {
	
	private String sTASK_ID = "";
	private String sTASK_NM = "";
	private String sOUTPUT_ID = "";
	private String sOUTPUT_NM = "";
	private String sOUTPUT_VER = "";
	private String sMAKE_USER_ID = "";
	private String sMAKE_USER_NM = "";
	private String sMAKE_DT = "";
	private String sMAKE_YN = "";
	private String sFILE_NM = "";
	private String sIMG_URL = "";

	public String getsTASK_ID() {
		return sTASK_ID;
	}
	
	public void setsTASK_ID(String sTASK_ID) {
		this.sTASK_ID = sTASK_ID;
	}
	
	public String getsTASK_NM() {
		return sTASK_NM;
	}
	
	public void setsTASK_NM(String sTASK_NM) {
		this.sTASK_NM = sTASK_NM;
	}
	
	public String getsOUTPUT_ID() {
		return sOUTPUT_ID;
	}
	
	public void setsOUTPUT_ID(String sOUTPUT_ID) {
		this.sOUTPUT_ID = sOUTPUT_ID;
	}
	
	public String getsOUTPUT_NM() {
		return sOUTPUT_NM;
	}
	
	public void setsOUTPUT_NM(String sOUTPUT_NM) {
		this.sOUTPUT_NM = sOUTPUT_NM;
	}
	
	public String getsOUTPUT_VER() {
		return sOUTPUT_VER;
	}
	
	public void setsOUTPUT_VER(String sOUTPUT_VER) {
		this.sOUTPUT_VER = sOUTPUT_VER;
	}
	
	public String getsMAKE_USER_ID() {
		return sMAKE_USER_ID;
	}
	
	public void setsMAKE_USER_ID(String sMAKE_USER_ID) {
		this.sMAKE_USER_ID = sMAKE_USER_ID;
	}
	
	public String getsMAKE_USER_NM() {
		return sMAKE_USER_NM;
	}
	
	public void setsMAKE_USER_NM(String sMAKE_USER_NM) {
		this.sMAKE_USER_NM = sMAKE_USER_NM;
	}
	
	public String getsMAKE_DT() {
		return sMAKE_DT;
	}
	
	public void setsMAKE_DT(String sMAKE_DT) {
		this.sMAKE_DT = sMAKE_DT;
	}
	
	public String getsMAKE_YN() {
		return sMAKE_YN;
	}
	
	public void setsMAKE_YN(String sMAKE_YN) {
		this.sMAKE_YN = sMAKE_YN;
	}
	
	public String getsFILE_NM() {
		return sFILE_NM;
	}
	
	public void setsFILE_NM(String sFILE_NM) {
		this.sFILE_NM = sFILE_NM;
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
