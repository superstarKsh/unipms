package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.common.Message.ConstantMessage;
import com.uni.unipms.model.CommonOutVO;

public class NT010101OVO extends CommonOutVO {
	private String sSEQ_NO = "";
	private String sTITLE = "";
	private String sCONTENTS = "";
	private String sFILE_NM = "";
	private String sREG_DT = "";
	private String sREG_USER_ID = "";
	private String sREG_USER_NM = "";
	private String sIMG_URL = "";
	private String sPRINT_TOP_YN = "";
	private String sPRINT_ST_DTTM = "";
	private String sPRINT_EN_DTTM = "";
	private String sROW_NO = "";

	public String getsSEQ_NO() {
		return sSEQ_NO;
	}
	
	public void setsSEQ_NO(String sSEQ_NO) {
		this.sSEQ_NO = sSEQ_NO;
	}
	
	public String getsTITLE() {
		return sTITLE;
	}
	
	public void setsTITLE(String sTITLE) {
		this.sTITLE = sTITLE;
	}
	
	public String getsCONTENTS() {
		return sCONTENTS;
	}
	
	public void setsCONTENTS(String sCONTENTS) {
		this.sCONTENTS = sCONTENTS;
	}
	
	public String getsFILE_NM() {
		return sFILE_NM;
	}
	
	public void setsFILE_NM(String sFILE_NM) {
		this.sFILE_NM = sFILE_NM;
	}
	
	public String getsREG_DT() {
		return sREG_DT;
	}
	
	public void setsREG_DT(String sREG_DT) {
		this.sREG_DT = sREG_DT;
	}
	
	public String getsREG_USER_ID() {
		return sREG_USER_ID;
	}
	
	public void setsREG_USER_ID(String sREG_USER_ID) {
		this.sREG_USER_ID = sREG_USER_ID;
	}
	
	public String getsREG_USER_NM() {
		return sREG_USER_NM;
	}
	
	public void setsREG_USER_NM(String sREG_USER_NM) {
		this.sREG_USER_NM = sREG_USER_NM;
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

	public String getsPRINT_TOP_YN() {
		return sPRINT_TOP_YN;
	}

	public void setsPRINT_TOP_YN(String sPRINT_TOP_YN) {
		this.sPRINT_TOP_YN = sPRINT_TOP_YN;
	}
	
	public String getsPRINT_ST_DTTM() {
		return sPRINT_ST_DTTM;
	}

	public void setsPRINT_ST_DTTM(String sPRINT_ST_DTTM) {
		this.sPRINT_ST_DTTM = sPRINT_ST_DTTM;
	}

	public String getsPRINT_EN_DTTM() {
		return sPRINT_EN_DTTM;
	}

	public void setsPRINT_EN_DTTM(String sPRINT_EN_DTTM) {
		this.sPRINT_EN_DTTM = sPRINT_EN_DTTM;
	}

	public String getsROW_NO() {
		return sROW_NO;
	}

	public void setsROW_NO(String sROW_NO) {
		this.sROW_NO = sROW_NO;
	}
	
}
