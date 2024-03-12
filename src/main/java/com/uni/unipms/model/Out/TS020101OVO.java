package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonTaskOutVO;

public class TS020101OVO extends CommonTaskOutVO {

	private String sTEST_ID = "";
	private String sTEST_DT = "";
	private String sTEST_TITLE = "";
	private String sTEST_DESC = "";
	private String sTEST_CONFRM = "";
	private String sTEST_SVRT = "";
	private String sTEST_SVRT_NM = "";
	private String sTEST_IMG_URL = "";
	private String sTEST_USER_ID = "";
	private String sTEST_USER_NM = "";
	private String sCORRT_SCHD_DT = "";
	private String sCORRT_DT = "";
	private String sDEV_USER_ID = "";
	private String sDEV_USER_NM = "";
	private String sCORRT_DESC = "";

	public String getsTEST_ID() {
		return sTEST_ID;
	}
	
	public void setsTEST_ID(String sTEST_ID) {
		this.sTEST_ID = sTEST_ID;
	}

	public String getsTEST_DT() {
		return sTEST_DT;
	}
	
	public void setsTEST_DT(String sTEST_DT) {
		this.sTEST_DT = sTEST_DT;
	}
	
	public String getsTEST_TITLE() {
		return sTEST_TITLE;
	}
	
	public void setsTEST_TITLE(String sTEST_TITLE) {
		this.sTEST_TITLE = sTEST_TITLE;
	}
	
	public String getsTEST_DESC() {
		return sTEST_DESC;
	}
	
	public void setsTEST_DESC(String sTEST_DESC) {
		this.sTEST_DESC = sTEST_DESC;
	}
	
	public String getsTEST_CONFRM() {
		return sTEST_CONFRM;
	}
	
	public void setsTEST_CONFRM(String sTEST_CONFRM) {
		this.sTEST_CONFRM = sTEST_CONFRM;
	}
	
	public String getsTEST_SVRT() {
		return sTEST_SVRT;
	}
	
	public void setsTEST_SVRT(String sTEST_SVRT) {
		this.sTEST_SVRT = sTEST_SVRT;
	}
	
	public String getsTEST_SVRT_NM() {
		return sTEST_SVRT_NM;
	}
	
	public void setsTEST_SVRT_NM(String sTEST_SVRT_NM) {
		this.sTEST_SVRT_NM = sTEST_SVRT_NM;
	}
	
	public String getsTEST_IMG_URL() {
		return sTEST_IMG_URL;
	}
	
	public void setsTEST_IMG_URL(String sTEST_IMG_URL) {
		this.sTEST_IMG_URL = sTEST_IMG_URL;
	}
	
	public String getsTEST_USER_ID() {
		return sTEST_USER_ID;
	}
	
	public void setsTEST_USER_ID(String sTEST_USER_ID) {
		this.sTEST_USER_ID = sTEST_USER_ID;
	}
	
	public String getsTEST_USER_NM() {
		return sTEST_USER_NM;
	}
	
	public void setsTEST_USER_NM(String sTEST_USER_NM) {
		this.sTEST_USER_NM = sTEST_USER_NM;
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
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
