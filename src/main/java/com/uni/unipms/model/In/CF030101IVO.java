package com.uni.unipms.model.In;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class CF030101IVO extends CommonInVO {
	private String sTASK_ID = "";
	private String sISSUE_ID = "";
	private String sTITLE = "";
	private String sISSUE_TYPE = "";
	private String sISSUE_IMPT = "";
	private String sREG_USER_ID = "";
	private String sREG_DT = "";
	private String sCHRG_USER_ID = "";
	private String sAPPR_DT = "";
	private String sCOMPL_DT = "";
	private String sPROC_STAGE = "";
	private String sCONTENTS = "";
	private String sISSUE_SOLTN = "";
	private String sCORRT_DESC = "";
	private String sFILE_NM = "";

	public String getsTASK_ID() {
		return sTASK_ID;
	}
	
	public void setsTASK_ID(String sTASK_ID) {
		this.sTASK_ID = sTASK_ID;
	}
	
	public String getsISSUE_ID() {
		return sISSUE_ID;
	}
	
	public void setsISSUE_ID(String sISSUE_ID) {
		this.sISSUE_ID = sISSUE_ID;
	}
	
	public String getsTITLE() {
		return sTITLE;
	}
	
	public void setsTITLE(String sTITLE) {
		this.sTITLE = sTITLE;
	}
	
	public String getsISSUE_TYPE() {
		return sISSUE_TYPE;
	}
	
	public void setsISSUE_TYPE(String sISSUE_TYPE) {
		this.sISSUE_TYPE = sISSUE_TYPE;
	}
	
	public String getsISSUE_IMPT() {
		return sISSUE_IMPT;
	}
	
	public void setsISSUE_IMPT(String sISSUE_IMPT) {
		this.sISSUE_IMPT = sISSUE_IMPT;
	}
	
	public String getsREG_USER_ID() {
		return sREG_USER_ID;
	}
	
	public void setsREG_USER_ID(String sREG_USER_ID) {
		this.sREG_USER_ID = sREG_USER_ID;
	}
	
	public String getsREG_DT() {
		return sREG_DT;
	}
	
	public void setsREG_DT(String sREG_DT) {
		this.sREG_DT = sREG_DT;
	}
	
	public String getsCHRG_USER_ID() {
		return sCHRG_USER_ID;
	}
	
	public void setsCHRG_USER_ID(String sCHRG_USER_ID) {
		this.sCHRG_USER_ID = sCHRG_USER_ID;
	}
	
	public String getsAPPR_DT() {
		return sAPPR_DT;
	}
	
	public void setsAPPR_DT(String sAPPR_DT) {
		this.sAPPR_DT = sAPPR_DT;
	}
	
	public String getsCOMPL_DT() {
		return sCOMPL_DT;
	}
	
	public void setsCOMPL_DT(String sCOMPL_DT) {
		this.sCOMPL_DT = sCOMPL_DT;
	}
	
	public String getsPROC_STAGE() {
		return sPROC_STAGE;
	}
	
	public void setsPROC_STAGE(String sPROC_STAGE) {
		this.sPROC_STAGE = sPROC_STAGE;
	}
	
	public String getsCONTENTS() {
		return sCONTENTS;
	}
	
	public void setsCONTENTS(String sCONTENTS) {
		this.sCONTENTS = sCONTENTS;
	}
	
	public String getsISSUE_SOLTN() {
		return sISSUE_SOLTN;
	}
	
	public void setsISSUE_SOLTN(String sISSUE_SOLTN) {
		this.sISSUE_SOLTN = sISSUE_SOLTN;
	}
	
	public String getsCORRT_DESC() {
		return sCORRT_DESC;
	}
	
	public void setsCORRT_DESC(String sCORRT_DESC) {
		this.sCORRT_DESC = sCORRT_DESC;
	}
	
	public String getsFILE_NM() {
		return sFILE_NM;
	}
	
	public void setsFILE_NM(String sFILE_NM) {
		this.sFILE_NM = sFILE_NM;
	}
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
