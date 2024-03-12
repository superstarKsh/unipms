package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonOutVO;

public class MN020105OVO extends CommonOutVO {
	
	private String sSEQ_NO = "";
	private String sTITLE = "";
	private String sCONTENTS = "";
	private String sFILE_NM = "";
	private String sREG_DT = "";
	private String sREG_TIME = "";
	private String sREG_USER_ID = "";
	private String sREG_USER_NM = "";

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
	
	public String getsREG_TIME() {
		return sREG_TIME;
	}
	
	public void setsREG_TIME(String sREG_TIME) {
		this.sREG_TIME = sREG_TIME;
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
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
