package com.uni.unipms.model;

import com.uni.unipms.common.Cache.GetSharedCache;
import com.uni.unipms.common.Message.ConstantMessage;

public class CommonVO {

	private String sDOMAIN_ID = "00000000";
	private String sPRJT_ID = "";
	private String sPRJT_STAGE = "";
	private String sCODE_SETTING = "";
	private String sRSLT_CODE = "";
	private String sRSLT_MSG = "";
	
	public String getsDOMAIN_ID() {
		sDOMAIN_ID = GetSharedCache.getCacheServiceInfo(ConstantMessage.SERVICE_DOMAIN_ID);
		return sDOMAIN_ID;
	}
	
	public void setsDOMAIN_ID(String sDOMAIN_ID) {
		this.sDOMAIN_ID = sDOMAIN_ID;
	}
	
	public String getsPRJT_ID() {
		return sPRJT_ID;
	}
	
	public void setsPRJT_ID(String sPRJT_ID) {
		this.sPRJT_ID = sPRJT_ID;
	}

	public String getsPRJT_STAGE() {
		return sPRJT_STAGE;
	}
	
	public void setsPRJT_STAGE(String sPRJT_STAGE) {
		this.sPRJT_STAGE = sPRJT_STAGE;
	}
	
	public String getsCODE_SETTING() {
		sCODE_SETTING = GetSharedCache.getCacheServiceInfo(ConstantMessage.COMMON_CODE_TYPE);
		return sCODE_SETTING;
	}
	
	public void setsCODE_SETTING(String sCODE_SETTING) {
		this.sCODE_SETTING = sCODE_SETTING;
	}
	
	public String getsRSLT_CODE() {
		return sRSLT_CODE;
	}
	
	public void setsRSLT_CODE(String sRSLT_CODE) {
		this.sRSLT_CODE = sRSLT_CODE;
	}

	public String getsRSLT_MSG() {
		return sRSLT_MSG;
	}
	
	public void setsRSLT_MSG(String sRSLT_MSG) {
		this.sRSLT_MSG = sRSLT_MSG;
	}
	
}
