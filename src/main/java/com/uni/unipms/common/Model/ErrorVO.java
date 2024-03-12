package com.uni.unipms.common.Model;


import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class ErrorVO {

	private String sERROR_CODE;
	private String sERROR_MSG;

	public String getsERROR_CODE() {
		return sERROR_CODE;
	}
	
	public void setsERROR_CODE(String sERROR_CODE) {
		this.sERROR_CODE = sERROR_CODE;
	}

	public String getsERROR_MSG() {
		return sERROR_MSG;
	}
	
	public void setsERROR_MSG(String sERROR_MSG) {
		this.sERROR_MSG = sERROR_MSG;
	}
	
	@Override
	public String toString() {
		return ReflectionToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}
}
