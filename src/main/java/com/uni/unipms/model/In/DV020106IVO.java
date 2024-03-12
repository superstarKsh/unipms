package com.uni.unipms.model.In;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class DV020106IVO extends CommonInVO {
	
	private String sTASK_ID    = "";
	private String sSEG_ID 	   = "";
	private List<DV020106IVO_SUB> sPRJT_TASK_SEG_SUB_INFO = null;

	public String getsTASK_ID() {
		return sTASK_ID;
	}

	public void setsTASK_ID(String sTASK_ID) {
		this.sTASK_ID = sTASK_ID;
	}

	public String getsSEG_ID() {
		return sSEG_ID;
	}

	public void setsSEG_ID(String sSEG_ID) {
		this.sSEG_ID = sSEG_ID;
	}
	
	public List<DV020106IVO_SUB> getsPRJT_TASK_SEG_SUB_INFO() {
		return sPRJT_TASK_SEG_SUB_INFO;
	}

	public void setsPRJT_TASK_SEG_SUB_INFO(List<DV020106IVO_SUB> sPRJT_TASK_SEG_SUB_INFO) {
		this.sPRJT_TASK_SEG_SUB_INFO = sPRJT_TASK_SEG_SUB_INFO;
	}

	public static class DV020106IVO_SUB {

		private String sSEG_SUB_ID = "";
		private String sSEG_SUB_NM = "";
		private String sSEG_SUB_DESC = "";
		private String sSTRT_DT = "";
		private String sEND_DT = "";
		private String sCORP_MNG_ID = "";
		private String sCORP_MNG_NM = "";
		private String sDEF_YN = "";
		
		public String getsSEG_SUB_ID() {
			return sSEG_SUB_ID;
		}

		public void setsSEG_SUB_ID(String sSEG_SUB_ID) {
			this.sSEG_SUB_ID = sSEG_SUB_ID;
		}

		public String getsSEG_SUB_NM() {
			return sSEG_SUB_NM;
		}

		public void setsSEG_SUB_NM(String sSEG_SUB_NM) {
			this.sSEG_SUB_NM = sSEG_SUB_NM;
		}

		public String getsSEG_SUB_DESC() {
			return sSEG_SUB_DESC;
		}

		public void setsSEG_SUB_DESC(String sSEG_SUB_DESC) {
			this.sSEG_SUB_DESC = sSEG_SUB_DESC;
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

		public String getsCORP_MNG_ID() {
			return sCORP_MNG_ID;
		}

		public void setsCORP_MNG_ID(String sCORP_MNG_ID) {
			this.sCORP_MNG_ID = sCORP_MNG_ID;
		}
		
		public String getsCORP_MNG_NM() {
			return sCORP_MNG_NM;
		}

		public void setsCORP_MNG_NM(String sCORP_MNG_NM) {
			this.sCORP_MNG_NM = sCORP_MNG_NM;
		}

		public String getsDEF_YN() {
			return sDEF_YN;
		}

		public void setsDEF_YN(String sDEF_YN) {
			this.sDEF_YN = sDEF_YN;
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
