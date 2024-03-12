package com.uni.unipms.model;

import org.apache.commons.lang3.builder.ToStringStyle;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class CommonOutVO extends CommonVO {

	private String sPRJT_NM = "";
	private String sPRJT_STAGE_NM = "";
	
	public String getsPRJT_NM() { 
		return sPRJT_NM;
	}
	
	public void setsPRJT_NM(String sPRJT_NM) {
		this.sPRJT_NM = sPRJT_NM;
	}

	public String getsPRJT_STAGE_NM() {
		return sPRJT_STAGE_NM;
	}
	
	public void setsPRJT_STAGE_NM(String sPRJT_STAGE_NM) {
		this.sPRJT_STAGE_NM = sPRJT_STAGE_NM;
	}
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}
}
