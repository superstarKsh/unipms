package com.uni.unipms.model.In;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class NT020102IVO extends CommonInVO {
	private String sSEQ_NO = "";
	private String sBRD_SEQ_NO = "";
	private String sCOMMENTS = "";
	private String sREG_DT = "";
	private String sREG_TIME = "";
	private String sREG_USER_ID = "";

	public String getsSEQ_NO() {
		return sSEQ_NO;
	}
	
	public void setsSEQ_NO(String sSEQ_NO) {
		this.sSEQ_NO = sSEQ_NO;
	}
	
	public String getsBRD_SEQ_NO() {
		return sBRD_SEQ_NO;
	}
	
	public void setsBRD_SEQ_NO(String sBRD_SEQ_NO) {
		this.sBRD_SEQ_NO = sBRD_SEQ_NO;
	}
	
	public String getsCOMMENTS() {
		return sCOMMENTS;
	}
	
	public void setsCOMMENTS(String sCOMMENTS) {
		this.sCOMMENTS = sCOMMENTS;
	}
	
	public String getsREG_DT() {
		return sREG_DT;
	}
	
	public void setsREG_DT(String sREG_DT) {
		this.sREG_DT = sREG_DT;
	}
	
	public String getsREG_TIME() {
		return sREG_TIME;
	}
	
	public void setsREG_TIME(String sREG_TIME) {
		this.sREG_TIME = sREG_TIME;
	}
	
	public String getsREG_USER_ID() {
		return sREG_USER_ID;
	}
	
	public void setsREG_USER_ID(String sREG_USER_ID) {
		this.sREG_USER_ID = sREG_USER_ID;
	}
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
