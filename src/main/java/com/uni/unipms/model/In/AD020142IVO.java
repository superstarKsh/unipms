package com.uni.unipms.model.In;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class AD020142IVO extends CommonInVO {

	private String sUSER_ID = "";
	public List<AD020142IVO_SUB> sCARR_INFO = null;

	public String getsUSER_ID() {
		return sUSER_ID;
	}

	public void setsUSER_ID(String sUSER_ID) {
		this.sUSER_ID = sUSER_ID;
	}
	
	public List<AD020142IVO_SUB> getsCARR_INFO() {
		return sCARR_INFO;
	}

	public void setsCARR_INFO(List<AD020142IVO_SUB> sCARR_INFO) {
		this.sCARR_INFO = sCARR_INFO;
	}
	
	public static class AD020142IVO_SUB {
		
		private String sSEQ_NO = "";
		private String sCORP_NM = "";
		private String sCORP_JOIN_DT = "";
		private String sCORP_RTRE_DT = "";
		private String sLAST_PSTN = "";
		private String sASSGN_BIZ = "";

		public String getsSEQ_NO() {
			return sSEQ_NO;
		}
	
		public void setsSEQ_NO(String sSEQ_NO) {
			this.sSEQ_NO = sSEQ_NO;
		}
	
		public String getsCORP_NM() {
			return sCORP_NM;
		}
	
		public void setsCORP_NM(String sCORP_NM) {
			this.sCORP_NM = sCORP_NM;
		}
	
		public String getsCORP_JOIN_DT() {
			return sCORP_JOIN_DT;
		}
	
		public void setsCORP_JOIN_DT(String sCORP_JOIN_DT) {
			this.sCORP_JOIN_DT = sCORP_JOIN_DT;
		}
	
		public String getsCORP_RTRE_DT() {
			return sCORP_RTRE_DT;
		}
	
		public void setsCORP_RTRE_DT(String sCORP_RTRE_DT) {
			this.sCORP_RTRE_DT = sCORP_RTRE_DT;
		}
	
		public String getsLAST_PSTN() {
			return sLAST_PSTN;
		}
	
		public void setsLAST_PSTN(String sLAST_PSTN) {
			this.sLAST_PSTN = sLAST_PSTN;
		}
	
		public String getsASSGN_BIZ() {
			return sASSGN_BIZ;
		}
	
		public void setsASSGN_BIZ(String sASSGN_BIZ) {
			this.sASSGN_BIZ = sASSGN_BIZ;
		}
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
