package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonOutVO;

public class MN010101OVO extends CommonOutVO {
	
	private String sCURR_STAGE = "";
	private String sCURR_STAGE_NM = "";
	private String sBIZ_QUARTER = "";
	private String sBIZ_QUARTER_NM = "";
	private String sCUS_CD = "";
	private String sCUS_NM = "";
	private String sMAIN_BIZ_PART_CD = "";
	private String sMAIN_BIZ_PART_NM = "";
	private String sPRJT_STRT_DT = "";
	private String sPRJT_END_DT = "";
	private String sPRJT_MANG_ID = "";
	private String sPRJT_MANG_NM = "";
	private String sMAN_MONTH = "";
	private String sPRJT_TYPE = "";
	private String sDEV_STAGE = "";
    private String sTEST_STAGE = "";
    private String sPROGRESS_RT = "";
    private String sDELAY_YN = "";

	public String getsCURR_STAGE() {
		return sCURR_STAGE;
	}
	
	public void setsCURR_STAGE(String sCURR_STAGE) {
		this.sCURR_STAGE = sCURR_STAGE;
	}
	
	public String getsCURR_STAGE_NM() {
		return sCURR_STAGE_NM;
	}
	
	public void setsCURR_STAGE_NM(String sCURR_STAGE_NM) {
		this.sCURR_STAGE_NM = sCURR_STAGE_NM;
	}
	
	public String getsBIZ_QUARTER() {
		return sBIZ_QUARTER;
	}
	
	public void setsBIZ_QUARTER(String sBIZ_QUARTER) {
		this.sBIZ_QUARTER = sBIZ_QUARTER;
	}
	
	public String getsBIZ_QUARTER_NM() {
		return sBIZ_QUARTER_NM;
	}
	
	public void setsBIZ_QUARTER_NM(String sBIZ_QUARTER_NM) {
		this.sBIZ_QUARTER_NM = sBIZ_QUARTER_NM;
	}
	
	public String getsCUS_CD() {
		return sCUS_CD;
	}
	
	public void setsCUS_CD(String sCUS_CD) {
		this.sCUS_CD = sCUS_CD;
	}
	
	public String getsCUS_NM() {
		return sCUS_NM;
	}
	
	public void setsCUS_NM(String sCUS_NM) {
		this.sCUS_NM = sCUS_NM;
	}
	
	public String getsMAIN_BIZ_PART_CD() {
		return sMAIN_BIZ_PART_CD;
	}
	
	public void setsMAIN_BIZ_PART_CD(String sMAIN_BIZ_PART_CD) {
		this.sMAIN_BIZ_PART_CD = sMAIN_BIZ_PART_CD;
	}
	
	public String getsMAIN_BIZ_PART_NM() {
		return sMAIN_BIZ_PART_NM;
	}
	
	public void setsMAIN_BIZ_PART_NM(String sMAIN_BIZ_PART_NM) {
		this.sMAIN_BIZ_PART_NM = sMAIN_BIZ_PART_NM;
	}
	
	public String getsPRJT_STRT_DT() {
		return sPRJT_STRT_DT;
	}
	
	public void setsPRJT_STRT_DT(String sPRJT_STRT_DT) {
		this.sPRJT_STRT_DT = sPRJT_STRT_DT;
	}
	
	public String getsPRJT_END_DT() {
		return sPRJT_END_DT;
	}
	
	public void setsPRJT_END_DT(String sPRJT_END_DT) {
		this.sPRJT_END_DT = sPRJT_END_DT;
	}
	
	public String getsPRJT_MANG_ID() {
		return sPRJT_MANG_ID;
	}
	
	public void setsPRJT_MANG_ID(String sPRJT_MANG_ID) {
		this.sPRJT_MANG_ID = sPRJT_MANG_ID;
	}
	
	public String getsPRJT_MANG_NM() {
		return sPRJT_MANG_NM;
	}
	
	public void setsPRJT_MANG_NM(String sPRJT_MANG_NM) {
		this.sPRJT_MANG_NM = sPRJT_MANG_NM;
	}
	
	public String getsMAN_MONTH() {
		return sMAN_MONTH;
	}
	
	public void setsMAN_MONTH(String sMAN_MONTH) {
		this.sMAN_MONTH = sMAN_MONTH;
	}
	
	public String getsPRJT_TYPE() {
		return sPRJT_TYPE;
	}
	
	public void setsPRJT_TYPE(String sPRJT_TYPE) {
		this.sPRJT_TYPE = sPRJT_TYPE;
	}
	
	public String getsDEV_STAGE() {
		return sDEV_STAGE;
	}
	
	public void setsDEV_STAGE(String sDEV_STAGE) {
		this.sDEV_STAGE = sDEV_STAGE;
	}
	
	public String getsTEST_STAGE() {
		return sTEST_STAGE;
	}
	
	public void setsTEST_STAGE(String sTEST_STAGE) {
		this.sTEST_STAGE = sTEST_STAGE;
	}

    public String getsPROGRESS_RT() {
		return sPROGRESS_RT;
	}

	public void setsPROGRESS_RT(String sPROGRESS_RT) {
		this.sPROGRESS_RT = sPROGRESS_RT;
	}
	
	public String getsDELAY_YN() {
		return sDELAY_YN;
	}

	public void setsDELAY_YN(String sDELAY_YN) {
		this.sDELAY_YN = sDELAY_YN;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
