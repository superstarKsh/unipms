package com.uni.unipms.model.In;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class PJ020102IVO extends CommonInVO {
	
	private List<PJ020102IVO_SUB>  sPART_USER = null;

	public List<PJ020102IVO_SUB> getsPART_USER() {
		return sPART_USER;
	}
	
	public void setsPART_USER(List<PJ020102IVO_SUB> sPART_USER) {
		this.sPART_USER = sPART_USER;
	}
	
	public static class PJ020102IVO_SUB {
		
		private String sPRJT_SUB_PART_ID = "";
		private String sUSER_ID = "";
		private String sPRJT_ROLE = "";
		private String sSTRT_DT = "";
		private String sEND_DT = "";
		private String sPRJT_TASK = "";
		private String sPROC_RATIO = "";
		private String sPROC_MM = "";

		public String getsPRJT_SUB_PART_ID() {
			return sPRJT_SUB_PART_ID;
		}
		
		public void setsPRJT_SUB_PART_ID(String sPRJT_SUB_PART_ID) {
			this.sPRJT_SUB_PART_ID = sPRJT_SUB_PART_ID;
		}
		
		public String getsUSER_ID() {
			return sUSER_ID;
		}
		
		public void setsUSER_ID(String sUSER_ID) {
			this.sUSER_ID = sUSER_ID;
		}
		
		public String getsPRJT_ROLE() {
			return sPRJT_ROLE;
		}
		
		public void setsPRJT_ROLE(String sPRJT_ROLE) {
			this.sPRJT_ROLE = sPRJT_ROLE;
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
		
		public void setsEND_ID(String sEND_DT) {
			this.sEND_DT = sEND_DT;
		}
		
		public String getsPRJT_TASK() {
			return sPRJT_TASK;
		}
		
		public void setsPRJT_TASK(String sPRJT_TASK) {
			this.sPRJT_TASK = sPRJT_TASK;
		}
		
		public String getsPROC_RATIO() {
			return sPROC_RATIO;
		}
		
		public void setsPROC_RATIO(String sPROC_RATIO) {
			this.sPROC_RATIO = sPROC_RATIO;
		}
		
		public String getsPROC_MM() {
			return sPROC_MM;
		}
		
		public void setsPROC_MM(String sPROC_MM) {
			this.sPROC_MM = sPROC_MM;
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
