package com.uni.unipms.model.In;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class CF020101IVO extends CommonInVO {
	private String sPROCD_NO = "";
	private String sPROCD_DT = "";
	private String sPROCD_TIME = "";
	private String sPROCD_PLACE = "";
	private String sTITLE = "";
	private String sATT_USER = "";
	private String sCONTENTS = "";
	private String sFILE_NM1 = "";
	private String sFILE_NM2 = "";
	private String sFILE_NM3 = "";

	public String getsPROCD_NO() {
		return sPROCD_NO;
	}
	
	public void setsPROCD_NO(String sPROCD_NO) {
		this.sPROCD_NO = sPROCD_NO;
	}
	
	public String getsPROCD_DT() {
		return sPROCD_DT;
	}
	
	public void setsPROCD_DT(String sPROCD_DT) {
		this.sPROCD_DT = sPROCD_DT;
	}
	
	public String getsPROCD_TIME() {
		return sPROCD_TIME;
	}
	
	public void setsPROCD_TIME(String sPROCD_TIME) {
		this.sPROCD_TIME = sPROCD_TIME;
	}
	
	public String getsPROCD_PLACE() {
		return sPROCD_PLACE;
	}
	
	public void setsPROCD_PLACE(String sPROCD_PLACE) {
		this.sPROCD_PLACE = sPROCD_PLACE;
	}
	
	public String getsTITLE() {
		return sTITLE;
	}
	
	public void setsTITLE(String sTITLE) {
		this.sTITLE = sTITLE;
	}
	
	public String getsATT_USER() {
		return sATT_USER;
	}
	
	public void setsATT_USER(String sATT_USER) {
		this.sATT_USER = sATT_USER;
	}
	
	public String getsCONTENTS() {
		return sCONTENTS;
	}
	
	public void setsCONTENTS(String sCONTENTS) {
		this.sCONTENTS = sCONTENTS;
	}
	
	public String getsFILE_NM1() {
		return sFILE_NM1;
	}
	
	public void setsFILE_NM1(String sFILE_NM1) {
		this.sFILE_NM1 = sFILE_NM1;
	}
	
	public String getsFILE_NM2() {
		return sFILE_NM2;
	}
	
	public void setsFILE_NM2(String sFILE_NM2) {
		this.sFILE_NM2 = sFILE_NM2;
	}
	
	public String getsFILE_NM3() {
		return sFILE_NM3;
	}
	
	public void setsFILE_NM3(String sFILE_NM3) {
		this.sFILE_NM3 = sFILE_NM3;
	}
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
