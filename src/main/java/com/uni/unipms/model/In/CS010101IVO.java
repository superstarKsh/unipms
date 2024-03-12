package com.uni.unipms.model.In;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class CS010101IVO extends CommonInVO {

	private String sCSR_ID = "";
	private String sREQ_DT = "";
	private String sREQ_COOP_ID = "";
	private String sREQ_PART_ID = "";
	private String sREQ_PART_NM = "";
	private String sREQ_USER_ID = "";
	private String sREQ_END_DT = "";
	private String sSTRT_DT = "";
	private String sEND_DT = "";
	private String sSYS_TYPE = "";
	private String sDEV_USER_ID = "";
	private String sTEST_USER_ID = "";
	private String sPROC_TYPE = "";
	private String sTITLE = "";
	private String sCONTENTS = "";
	private String sFILE_NM = "";

	public String getsCSR_ID() {
		return sCSR_ID;
	}

	public void setsCSR_ID(String sCSR_ID) {
		this.sCSR_ID = sCSR_ID;
	}

	public String getsREQ_DT() {
		return sREQ_DT;
	}

	public void setsREQ_DT(String sREQ_DT) {
		this.sREQ_DT = sREQ_DT;
	}

	public String getsREQ_COOP_ID() {
		return sREQ_COOP_ID;
	}

	public void setsREQ_COOP_ID(String sREQ_COOP_ID) {
		this.sREQ_COOP_ID = sREQ_COOP_ID;
	}

	public String getsREQ_PART_ID() {
		return sREQ_PART_ID;
	}

	public void setsREQ_PART_ID(String sREQ_PART_ID) {
		this.sREQ_PART_ID = sREQ_PART_ID;
	}
	
	public String getsREQ_PART_NM() {
		return sREQ_PART_NM;
	}

	public void setsREQ_PART_NM(String sREQ_PART_NM) {
		this.sREQ_PART_NM = sREQ_PART_NM;
	}

	public String getsREQ_USER_ID() {
		return sREQ_USER_ID;
	}

	public void setsREQ_USER_ID(String sREQ_USER_ID) {
		this.sREQ_USER_ID = sREQ_USER_ID;
	}

	public String getsLUNAR_DIV() {
		return sREQ_END_DT;
	}

	public void setsREQ_END_DT(String sREQ_END_DT) {
		this.sREQ_END_DT = sREQ_END_DT;
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

	public String getsSYS_TYPE() {
		return sSYS_TYPE;
	}

	public void setsSYS_TYPE(String sSYS_TYPE) {
		this.sSYS_TYPE = sSYS_TYPE;
	}

	public String getsDEV_USER_ID() {
		return sDEV_USER_ID;
	}

	public void setsDEV_USER_ID(String sDEV_USER_ID) {
		this.sDEV_USER_ID = sDEV_USER_ID;
	}

	public String getsTEST_USER_ID() {
		return sTEST_USER_ID;
	}

	public void setsTEST_USER_ID(String sTEST_USER_ID) {
		this.sTEST_USER_ID = sTEST_USER_ID;
	}

	public String getsPROC_TYPE() {
		return sPROC_TYPE;
	}

	public void setsPROC_TYPE(String sPROC_TYPE) {
		this.sPROC_TYPE = sPROC_TYPE;
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

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
