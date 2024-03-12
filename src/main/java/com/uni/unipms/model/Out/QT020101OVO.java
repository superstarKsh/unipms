package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonOutVO;

public class QT020101OVO extends CommonOutVO {
	private String sQULTY_ID = "";
	private String sQULTY_TITLE = "";
	private String sQULTY_CNTL_ID = "";
	private String sTITLE = "";
	private String sCNTL_DESC = "";
	private String sISSUE_DESC = "";
	private String sCNTL_DT = "";
	private String sCNTL_USER_ID = "";
	private String sCNTL_USER_NM = "";
	private String sDEV_USER_ID = "";
	private String sDEV_USER_NM = "";
	private String sCORRT_DESC = "";
	private String sCORRT_SCHD_DT = "";
	private String sCORRT_DT = "";
	private String sCONFRM_YN = "";
	private String sCONFRM_DT = "";
	private String sFILE_NM = "";

	public String getsQULTY_ID() {
		return sQULTY_ID;
	}
	
	public void setsQULTY_ID(String sQULTY_ID) {
		this.sQULTY_ID = sQULTY_ID;
	}
	
	public String getsQULTY_TITLE() {
		return sQULTY_TITLE;
	}
	
	public void setsQULTY_TITLE(String sQULTY_TITLE) {
		this.sQULTY_TITLE = sQULTY_TITLE;
	}
	
	public String getsQULTY_CNTL_ID() {
		return sQULTY_CNTL_ID;
	}
	
	public void setsQULTY_CNTL_ID(String sQULTY_CNTL_ID) {
		this.sQULTY_CNTL_ID = sQULTY_CNTL_ID;
	}

	public String getsTITLE() {
		return sTITLE;
	}
	
	public void setsTITLE(String sTITLE) {
		this.sTITLE = sTITLE;
	}
	
	public String getsCNTL_DESC() {
		return sCNTL_DESC;
	}
	
	public void setsCNTL_DESC(String sCNTL_DESC) {
		this.sCNTL_DESC = sCNTL_DESC;
	}
	
	public String getsISSUE_DESC() {
		return sISSUE_DESC;
	}
	
	public void setsISSUE_DESC(String sISSUE_DESC) {
		this.sISSUE_DESC = sISSUE_DESC;
	}
	
	public String getsCNTL_DT() {
		return sCNTL_DT;
	}
	
	public void setsCNTL_DT(String sCNTL_DT) {
		this.sCNTL_DT = sCNTL_DT;
	}
	
	public String getsCNTL_USER_ID() {
		return sCNTL_USER_ID;
	}
	
	public void setsCNTL_USER_ID(String sCNTL_USER_ID) {
		this.sCNTL_USER_ID = sCNTL_USER_ID;
	}
	
	public String getsCNTL_USER_NM() {
		return sCNTL_USER_NM;
	}
	
	public void setsCNTL_USER_NM(String sCNTL_USER_NM) {
		this.sCNTL_USER_NM = sCNTL_USER_NM;
	}
	
	public String getsDEV_USER_ID() {
		return sDEV_USER_ID;
	}
	
	public void setsDEV_USER_ID(String sDEV_USER_ID) {
		this.sDEV_USER_ID = sDEV_USER_ID;
	}
	
	public String getsDEV_USER_NM() {
		return sDEV_USER_NM;
	}
	
	public void setsDEV_USER_NM(String sDEV_USER_NM) {
		this.sDEV_USER_NM = sDEV_USER_NM;
	}
	
	public String getsCORRT_DESC() {
		return sCORRT_DESC;
	}
	
	public void setsCORRT_DESC(String sCORRT_DESC) {
		this.sCORRT_DESC = sCORRT_DESC;
	}
	
	public String getsCORRT_SCHD_DT() {
		return sCORRT_SCHD_DT;
	}
	
	public void setsCORRT_SCHD_DT(String sCORRT_SCHD_DT) {
		this.sCORRT_SCHD_DT = sCORRT_SCHD_DT;
	}
	
	public String getsCORRT_DT() {
		return sCORRT_DT;
	}
	
	public void setsCORRT_DT(String sCORRT_DT) {
		this.sCORRT_DT = sCORRT_DT;
	}
	
	public String getsCONFRM_YN() {
		return sCONFRM_YN;
	}
	
	public void setsCONFRM_YN(String sCONFRM_YN) {
		this.sCONFRM_YN = sCONFRM_YN;
	}
	
	public String getsCONFRM_DT() {
		return sCONFRM_DT;
	}
	
	public void setsCONFRM_DT(String sCONFRM_DT) {
		this.sCONFRM_DT = sCONFRM_DT;
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
