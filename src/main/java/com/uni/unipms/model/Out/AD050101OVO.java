package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonOutVO;

public class AD050101OVO extends CommonOutVO {

	private String sCODE_TYPE = "";
	private String sCODE = "";
	private String sCODE_NAME = "";
	private String sCODE_DESC = "";
	private String sUSE_YN = "";
	private String sUSE_ORDER = "";
	private String sRPLC_CODE = "";

	public String getsCODE_TYPE() {
		return sCODE_TYPE;
	}

	public void setsCODE_TYPE(String sCODE_TYPE) {
		this.sCODE_TYPE = sCODE_TYPE;
	}

	public String getsCODE() {
		return sCODE;
	}

	public void setsCODE(String sCODE) {
		this.sCODE = sCODE;
	}

	public String getsCODE_NAME() {
		return sCODE_NAME;
	}

	public void setsCODE_NAME(String sCODE_NAME) {
		this.sCODE_NAME = sCODE_NAME;
	}

	public String getsCODE_DESC() {
		return sCODE_DESC;
	}

	public void setsCODE_DESC(String sCODE_DESC) {
		this.sCODE_DESC = sCODE_DESC;
	}

	public String getsUSE_YN() {
		return sUSE_YN;
	}

	public void setsUSE_YN(String sUSE_YN) {
		this.sUSE_YN = sUSE_YN;
	}

	public String getsUSE_ORDER() {
		return sUSE_ORDER;
	}

	public void setsUSE_ORDER(String sUSE_ORDER) {
		this.sUSE_ORDER = sUSE_ORDER;
	}

	public String getsRPLC_CODE() {
		return sRPLC_CODE;
	}

	public void setsRPLC_CODE(String sRPLC_CODE) {
		this.sRPLC_CODE = sRPLC_CODE;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
