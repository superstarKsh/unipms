package com.uni.unipms.common.Model;

public class ServiceInfoVO {
	
	private String sDomainId = "";
	private String sDomainName = "";
	private String sCommonCodeType = "";
	private String sFileBasePath = "";

	public String getsDomainId() {
		return sDomainId;
	}
	
	public void setsDomainId(String sDomainId) {
		this.sDomainId = sDomainId;
	}
	
	public String getsDomainName() {
		return sDomainName;
	}
	
	public void setsDomainName(String sDomainName) {
		this.sDomainName = sDomainName;
	}
	
	public String getsCommonCodeType() {
		return sCommonCodeType;
	}
	
	public void setsCommonCodeType(String sCommonCodeType) {
		this.sCommonCodeType = sCommonCodeType;
	}

	public String getsFileBasePath() {
		return sFileBasePath;
	}
	
	public void setsFileBasePath(String sFileBasePath) {
		this.sFileBasePath = sFileBasePath;
	}
}
