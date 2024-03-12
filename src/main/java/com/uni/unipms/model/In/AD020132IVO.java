package com.uni.unipms.model.In;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonInVO;

public class AD020132IVO extends CommonInVO {

	private String sUSER_ID = "";
	public List<AD020132IVO_SUB> sEDUT_INFO = null;
	
	public String getsUSER_ID() {
		return sUSER_ID;
	}

	public void setsUSER_ID(String sUSER_ID) {
		this.sUSER_ID = sUSER_ID;
	}
	
	public List<AD020132IVO_SUB> getsEDUT_INFO() {
		return sEDUT_INFO;
	}

	public void setsEDUT_INFO(List<AD020132IVO_SUB> sEDUT_INFO) {
		this.sEDUT_INFO = sEDUT_INFO;
	}

	public static class AD020132IVO_SUB {
		
		private String sSEQ_NO = "";
		private String sEDUT_NM = "";
		private String sEDUT_STRT_DT = "";
		private String sEDUT_END_DT = "";
		private String sEDUT_ORG_NM = "";

		public String getsSEQ_NO() {
			return sSEQ_NO;
		}
	
		public void setsSEQ_NO(String sSEQ_NO) {
			this.sSEQ_NO = sSEQ_NO;
		}
	
		public String getsEDUT_NM() {
			return sEDUT_NM;
		}
	
		public void setsEDUT_NM(String sEDUT_NM) {
			this.sEDUT_NM = sEDUT_NM;
		}
	
		public String getsEDUT_STRT_DT() {
			return sEDUT_STRT_DT;
		}
	
		public void setsEDUT_STRT_DT(String sEDUT_STRT_DT) {
			this.sEDUT_STRT_DT = sEDUT_STRT_DT;
		}
	
		public String getsEDUT_END_DT() {
			return sEDUT_END_DT;
		}
	
		public void setsEDUT_END_DT(String sEDUT_END_DT) {
			this.sEDUT_END_DT = sEDUT_END_DT;
		}
	
		public String getsEDUT_ORG_NM() {
			return sEDUT_ORG_NM;
		}
	
		public void setsEDUT_ORG_NM(String sEDUT_ORG_NM) {
			this.sEDUT_ORG_NM = sEDUT_ORG_NM;
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
