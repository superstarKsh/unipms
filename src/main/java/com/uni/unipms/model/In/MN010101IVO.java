package com.uni.unipms.model.In;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class MN010101IVO extends CommonInVO {
	
	private String sPRJT_NM = "";
	private String sCURR_DT = "";
	private String sUSER_ID = "";
	
	public String getsPRJT_NM() {
		return sPRJT_NM;
	}
	
	public void setsPRJT_NM(String sPRJT_NM) {
		this.sPRJT_NM = sPRJT_NM;
	}
	
	public String getsCURR_DT() {
		return sCURR_DT;
	}
	
	public void setsCURR_DT(String sCURR_DT) {
		this.sCURR_DT = sCURR_DT;
	}
	
	public String getsUSER_ID() {
		return sUSER_ID;
	}
	
	public void setsUSER_ID(String sUSER_ID) {
		this.sUSER_ID = sUSER_ID;
	}
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
