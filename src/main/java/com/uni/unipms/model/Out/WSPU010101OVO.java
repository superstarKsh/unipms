package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonOutVO;

public class WSPU010101OVO extends CommonOutVO {
	
	private String sCURR_STAGE = "";
    private String sPRJT_MANG_NM = "";
    private String sUSER_PSTN = "";
    private String sPRJT_STRT_DT = "";
    private String sPRJT_END_DT = "";    
    private String sCONT_NO = "";
    private String sCONT_AMT = "";
    private String sCONT_DT = "";
    private String sCONT_TYP = "";
    private String sACTIVE_TYP = "";
    private String sLIVE_ED_DT = "";
    private String sESTI_ED_DT = "";
    private String sOUTSRC_AMT = "";
    private String sFIXD_AMT = "";
    private String sCIRC_AMT = "";

	public String getsCURR_STAGE() {
		return sCURR_STAGE;
	}

	public void setsCURR_STAGE(String sCURR_STAGE) {
		this.sCURR_STAGE = sCURR_STAGE;
	}

	public String getsPRJT_MANG_NM() {
		return sPRJT_MANG_NM;
	}

	public void setsPRJT_MANG_NM(String sPRJT_MANG_NM) {
		this.sPRJT_MANG_NM = sPRJT_MANG_NM;
	}
	
	public String getsUSER_PSTN() {
		return sUSER_PSTN;
	}

	public void setsUSER_PSTN(String sUSER_PSTN) {
		this.sUSER_PSTN = sUSER_PSTN;
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

	public String getsCONT_NO() {
		return sCONT_NO;
	}

	public void setsCONT_NO(String sCONT_NO) {
		this.sCONT_NO = sCONT_NO;
	}

	public String getsCONT_AMT() {
		return sCONT_AMT;
	}

	public void setsCONT_AMT(String sCONT_AMT) {
		this.sCONT_AMT = sCONT_AMT;
	}

	public String getsCONT_DT() {
		return sCONT_DT;
	}

	public void setsCONT_DT(String sCONT_DT) {
		this.sCONT_DT = sCONT_DT;
	}

	public String getsCONT_TYP() {
		return sCONT_TYP;
	}

	public void setsCONT_TYP(String sCONT_TYP) {
		this.sCONT_TYP = sCONT_TYP;
	}

	public String getsACTIVE_TYP() {
		return sACTIVE_TYP;
	}

	public void setsACTIVE_TYP(String sACTIVE_TYP) {
		this.sACTIVE_TYP = sACTIVE_TYP;
	}

	public String getsLIVE_ED_DT() {
		return sLIVE_ED_DT;
	}

	public void setsLIVE_ED_DT(String sLIVE_ED_DT) {
		this.sLIVE_ED_DT = sLIVE_ED_DT;
	}

	public String getsESTI_ED_DT() {
		return sESTI_ED_DT;
	}

	public void setsESTI_ED_DT(String sESTI_ED_DT) {
		this.sESTI_ED_DT = sESTI_ED_DT;
	}

	public String getsOUTSRC_AMT() {
		return sOUTSRC_AMT;
	}

	public void setsOUTSRC_AMT(String sOUTSRC_AMT) {
		this.sOUTSRC_AMT = sOUTSRC_AMT;
	}

	public String getsFIXD_AMT() {
		return sFIXD_AMT;
	}

	public void setsFIXD_AMT(String sFIXD_AMT) {
		this.sFIXD_AMT = sFIXD_AMT;
	}

	public String getsCIRC_AMT() {
		return sCIRC_AMT;
	}

	public void setsCIRC_AMT(String sCIRC_AMT) {
		this.sCIRC_AMT = sCIRC_AMT;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
