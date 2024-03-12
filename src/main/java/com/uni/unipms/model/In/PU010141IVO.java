package com.uni.unipms.model.In;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class PU010141IVO extends CommonInVO {
	private String sQULTY_ID = "";
	private String sTITLE = "";
	private String sSTRT_DT = "";
	private String sEND_DT = "";
	private String sCNTL_TYPE = "";
	private String sCNTL_USER_ID = "";
	private String sTARGET_TYPE = "";
	private String sCONTENTS = "";

	public String getsQULTY_ID() {
		return sQULTY_ID;
	}
	
	public void setsQULTY_ID(String sQULTY_ID) {
		this.sQULTY_ID = sQULTY_ID;
	}
	
	public String getsTITLE() {
		return sTITLE;
	}
	
	public void setsTITLE(String sTITLE) {
		this.sTITLE = sTITLE;
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
	
	public String getsCNTL_TYPE() {
		return sCNTL_TYPE;
	}
	
	public void setsCNTL_TYPE(String sCNTL_TYPE) {
		this.sCNTL_TYPE = sCNTL_TYPE;
	}
	
	public String getsCNTL_USER_ID() {
		return sCNTL_USER_ID;
	}
	
	public void setsCNTL_USER_ID(String sCNTL_USER_ID) {
		this.sCNTL_USER_ID = sCNTL_USER_ID;
	}
	
	public String getsTARGET_TYPE() {
		return sTARGET_TYPE;
	}
	
	public void setsTARGET_TYPE(String sTARGET_TYPE) {
		this.sTARGET_TYPE = sTARGET_TYPE;
	}
	
	public String getsCONTENTS() {
		return sCONTENTS;
	}
	
	public void setsCONTENTS(String sCONTENTS) {
		this.sCONTENTS = sCONTENTS;
	}
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
