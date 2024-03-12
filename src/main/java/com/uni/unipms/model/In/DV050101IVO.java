package com.uni.unipms.model.In;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class DV050101IVO extends CommonInVO {
	
	private String sTASK_ID ="";
	private String sOUTPUT_ID = "";
	private String sOUTPUT_NM = "";
	private String sOUTPUT_DESC = "";
	private String sMAKE_USER_ID = "";
	private String sMAKE_DT = "";
	private String sMAKE_YN = "";
	private String sDEF_FILE_NM = "";
	private String sCMPL_FILE_VER = "";
	private String sCMPL_FILE_NM = "";
	private String sOUPUT_POOL_ID = "";
	
	public String getsTASK_ID() {
		return sTASK_ID;
	}

	public void setsTASK_ID(String sTASK_ID) {
		this.sTASK_ID = sTASK_ID;
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
	
	public String getsOUTPUT_DESC() {
		return sOUTPUT_DESC;
	}
	
	public void setsOUTPUT_DESC(String sOUTPUT_DESC) {
		this.sOUTPUT_DESC = sOUTPUT_DESC;
	}
	
	public String getsMAKE_USER_ID() {
		return sMAKE_USER_ID;
	}
	
	public void setsMAKE_USER_ID(String sMAKE_USER_ID) {
		this.sMAKE_USER_ID = sMAKE_USER_ID;
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
	
	public String getsDEF_FILE_NM() {
		return sDEF_FILE_NM;
	}
	
	public void setsDEF_FILE_NM(String sDEF_FILE_NM) {
		this.sDEF_FILE_NM = sDEF_FILE_NM;
	}
	
	public String getsCMPL_FILE_VER() {
		return sCMPL_FILE_VER;
	}
	
	public void setsCMPL_FILE_VER(String sCMPL_FILE_VER) {
		this.sCMPL_FILE_VER = sCMPL_FILE_VER;
	}
	
	public String getsCMPL_FILE_NM() {
		return sCMPL_FILE_NM;
	}
	
	public void setsCMPL_FILE_NM(String sCMPL_FILE_NM) {
		this.sCMPL_FILE_NM = sCMPL_FILE_NM;
	}
	
	public String getsOUPUT_POOL_ID() {
		return sOUPUT_POOL_ID;
	}
	
	public void setsOUPUT_POOL_ID(String sOUPUT_POOL_ID) {
		this.sOUPUT_POOL_ID = sOUPUT_POOL_ID;
	}
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
