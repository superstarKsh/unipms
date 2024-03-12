package com.uni.unipms.model.In;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class PJ010121IVO extends CommonInVO{
	
	private String sSTRT_DT = "";
    private String sEND_DT = "";
    private String sETC_DISC = "";
    
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

	public String getsETC_DISC() {
		return sETC_DISC;
	}
	
	public void setsETC_DISC(String sETC_DISC) {
		this.sETC_DISC = sETC_DISC;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
