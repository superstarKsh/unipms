package com.uni.unipms.model.In;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class DV021101IVO extends CommonInVO {
	
	private String sFILE_NM = "";
	
	public String getsFILE_NM() {
		return sFILE_NM;
	}

	public void setsFILE_NM(String sFILE_NM) {
		this.sFILE_NM = sFILE_NM;
	}
	
	private List<DV021101IVO_SUB> sPRJT_TASK_INFO = null;
	
	public List<DV021101IVO_SUB> getsPRJT_TASK_INFO() {
		return sPRJT_TASK_INFO;
	}

	public void setsPRJT_TASK_INFO(List<DV021101IVO_SUB> sPRJT_TASK_INFO) {
		this.sPRJT_TASK_INFO = sPRJT_TASK_INFO;
	}

	public static class DV021101IVO_SUB {

		private String sTASK_ID = "";
		private String sSEG_ID = "";
		private String sSEG_SUB_ID = "";
		private String sACTIVITY_ID = "";
		private String sTASK_NM = "";
		private String sTASK_DESC = "";
		private String sSTRT_DT = "";
		private String sEND_DT = "";
		private String sCORP_MNG_ID = "";
		private String sCORP_MNG_NM = "";
		private String sDEF_YN = "";

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
	
		public String getsSEG_SUB_ID() {
			return sSEG_SUB_ID;
		}
	
		public void setsSEG_SUB_ID(String sSEG_SUB_ID) {
			this.sSEG_SUB_ID = sSEG_SUB_ID;
		}

		public String getsACTIVITY_ID() {
			return sACTIVITY_ID;
		}
	
		public void setsACTIVITY_ID(String sACTIVITY_ID) {
			this.sACTIVITY_ID = sACTIVITY_ID;
		}
		
		public String getsTASK_NM() {
			return sTASK_NM;
		}
	
		public void setsTASK_NM(String sTASK_NM) {
			this.sTASK_NM = sTASK_NM;
		}
	
		public String getsTASK_DESC() {
			return sTASK_DESC;
		}
	
		public void setsTASK_DESC(String sTASK_DESC) {
			this.sTASK_DESC = sTASK_DESC;
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

	}
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
