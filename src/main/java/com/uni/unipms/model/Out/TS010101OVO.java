package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonTaskOutVO;

public class TS010101OVO extends CommonTaskOutVO {
	private String sTEST_SCN_ID = "";
	private String sTEST_SCN_NM = "";
	private String sREG_USER_ID = "";
	private String sREG_USER_NM = "";
	private String sTEST_STRT_DT = "";
	private String sTEST_END_DT = "";
	private String sCNFM_TYPE = "";
	private String sCNFM_DT = "";
	private String sCNFM_USER_ID = "";
	private String sCNFM_USER_NM = "";
	private String sCNFM_DESC = "";
	private String sFILE_NM = "";

	public String getsTEST_SCN_ID() {
		return sTEST_SCN_ID;
	}
	
	public void setsTEST_SCN_ID(String sTEST_SCN_ID) {
		this.sTEST_SCN_ID = sTEST_SCN_ID;
	}
	
	public String getsTEST_SCN_NM() {
		return sTEST_SCN_NM;
	}
	
	public void setsTEST_SCN_NM(String sTEST_SCN_NM) {
		this.sTEST_SCN_NM = sTEST_SCN_NM;
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
	
	public String getsTEST_STRT_DT() {
		return sTEST_STRT_DT;
	}
	
	public void setsTEST_STRT_DT(String sTEST_STRT_DT) {
		this.sTEST_STRT_DT = sTEST_STRT_DT;
	}
	
	public String getsTEST_END_DT() {
		return sTEST_END_DT;
	}
	
	public void setsTEST_END_DT(String sTEST_END_DT) {
		this.sTEST_END_DT = sTEST_END_DT;
	}
	
	public String getsCNFM_TYPE() {
		return sCNFM_TYPE;
	}
	
	public void setsCNFM_TYPE(String sCNFM_TYPE) {
		this.sCNFM_TYPE = sCNFM_TYPE;
	}
	
	public String getsCNFM_DT() {
		return sCNFM_DT;
	}
	
	public void setsCNFM_DT(String sCNFM_DT) {
		this.sCNFM_DT = sCNFM_DT;
	}
	
	public String getsCNFM_USER_ID() {
		return sCNFM_USER_ID;
	}
	
	public void setsCNFM_USER_ID(String sCNFM_USER_ID) {
		this.sCNFM_USER_ID = sCNFM_USER_ID;
	}
	
	public String getsCNFM_USER_NM() {
		return sCNFM_USER_NM;
	}
	
	public void setsCNFM_USER_NM(String sCNFM_USER_NM) {
		this.sCNFM_USER_NM = sCNFM_USER_NM;
	}
	
	public String getsCNFM_DESC() {
		return sCNFM_DESC;
	}
	
	public void setsCNFM_DESC(String sCNFM_DESC) {
		this.sCNFM_DESC = sCNFM_DESC;
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
