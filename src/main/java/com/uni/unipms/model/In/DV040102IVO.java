package com.uni.unipms.model.In;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class DV040102IVO extends CommonInVO {
	
	List<DV040102IVO_SUB> sPRG_INFO = null;

	public List<DV040102IVO_SUB> getsPRG_INFO() {
		return sPRG_INFO;
	}
	
	public void setsPRG_INFO(List<DV040102IVO_SUB> sPRG_INFO) {
		this.sPRG_INFO = sPRG_INFO;
	}
	
	public static class DV040102IVO_SUB {
		
		private String sTASK_ID = "";
		private String sSEG_ID = "";
		private String sSEG_SUB_ID = "";
		private String sPRG_ID = "";
		private String sPRJ_DEV_STRT_DT = "";
		private String sPRJ_DEV_END_DT = "";
		private String sTEST_DEV_STRT_DT = "";
		private String sTEST_DEV_END_DT = "";
		private String sPM_CNFM = "";
		private String sCUS_CNFM = "";
		private String sPROGRESS_RT="";
		
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

		public String getsPRG_ID() {
			return sPRG_ID;
		}
		
		public void setsPRG_ID(String sPRG_ID) {
			this.sPRG_ID = sPRG_ID;
		}
		
		public String getsPRJ_DEV_STRT_DT() {
			return sPRJ_DEV_STRT_DT;
		}
		
		public void setsPRJ_DEV_STRT_DT(String sPRJ_DEV_STRT_DT) {
			this.sPRJ_DEV_STRT_DT = sPRJ_DEV_STRT_DT;
		}
		
		public String getsPRJ_DEV_END_DT() {
			return sPRJ_DEV_END_DT;
		}
		
		public void setsPRJ_DEV_END_DT(String sPRJ_DEV_END_DT) {
			this.sPRJ_DEV_END_DT = sPRJ_DEV_END_DT;
		}
		
		public String getsTEST_DEV_STRT_DT() {
			return sTEST_DEV_STRT_DT;
		}
		
		public void setsTEST_DEV_STRT_DT(String sTEST_DEV_STRT_DT) {
			this.sTEST_DEV_STRT_DT = sTEST_DEV_STRT_DT;
		}
		
		public String getsTEST_DEV_END_DT() {
			return sTEST_DEV_END_DT;
		}
		
		public void setsTEST_DEV_END_DT(String sTEST_DEV_END_DT) {
			this.sTEST_DEV_END_DT = sTEST_DEV_END_DT;
		}
		
		public String getsPM_CNFM() {
			return sPM_CNFM;
		}
		
		public void setsPM_CNFM(String sPM_CNFM) {
			this.sPM_CNFM = sPM_CNFM;
		}
		
		public String getsCUS_CNFM() {
			return sCUS_CNFM;
		}
		
		public void setsCUS_CNFM(String sCUS_CNFM) {
			this.sCUS_CNFM = sCUS_CNFM;
		}
		
		public String getsPROGRESS_RT() {
			return sPROGRESS_RT;
		}

		public void setsPROGRESS_RT(String sPROGRESS_RT) {
			this.sPROGRESS_RT = sPROGRESS_RT;
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
