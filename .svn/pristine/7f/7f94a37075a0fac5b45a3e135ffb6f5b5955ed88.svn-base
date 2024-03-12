package com.uni.unipms.model.In;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class PJ010112IVO extends CommonInVO {
	
	private List<PJ010102IVO_SUB> sPRJT_MMONTH = null;

	public List<PJ010102IVO_SUB> getsPRJT_MMONTH() {
		return sPRJT_MMONTH;
	}
	
	public void setsPRJT_MMONTHO(List<PJ010102IVO_SUB> sPRJT_MMONTH) {
		this.sPRJT_MMONTH = sPRJT_MMONTH;
	}
	
    public static class PJ010102IVO_SUB {

    	private String sYYYYMM = "";
	    private String sMAN_MONTH = "";
	    
		public String getsYYYYMM() {
			return sYYYYMM;
		}
		
		public void setsYYYYMM(String sYYYYMM) {
			this.sYYYYMM = sYYYYMM;
		}
		
		public String getsMAN_MONTH() {
			if ("".equals(sMAN_MONTH))
				sMAN_MONTH = "0";
			return sMAN_MONTH;
		}
		
		public void setsMAN_MONTH(String sMAN_MONTH) {
			this.sMAN_MONTH = sMAN_MONTH;
		}
		
		@Override
		public String toString() {
			return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
		}
    }

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
