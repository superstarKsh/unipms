package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.common.Message.ConstantMessage;
import com.uni.unipms.model.CommonOutVO;

public class MG110102OVO extends CommonOutVO {
	
	public String sMNG_STAGE  = "";
	public String sACTIVITY_ID  = "";
	public String sACTIVITY_NM  = "";
	public String sACTIVITY_BIT  = "";
	public String sACTIVITY_DESC  = "";
	public String sCMPL_DT  = "";
	public String sCMPL_YN  = "";
	public String sDEF_FILE_NM  = "";
	public String sCMPL_FILE_NM  = "";
	public String sCMPL_FILE_VER  = "";
	public String sIMG_URL  = "";
	
	public String getsMNG_STAGE() {
		return sMNG_STAGE;
	}

	public void setsMNG_STAGE(String sMNG_STAGE) {
		this.sMNG_STAGE = sMNG_STAGE;
	}

	public String getsACTIVITY_ID() {
		return sACTIVITY_ID;
	}

	public void setsACTIVITY_ID(String sACTIVITY_ID) {
		this.sACTIVITY_ID = sACTIVITY_ID;
	}

	public String getsACTIVITY_NM() {
		return sACTIVITY_NM;
	}

	public void setsACTIVITY_NM(String sACTIVITY_NM) {
		this.sACTIVITY_NM = sACTIVITY_NM;
	}

	public String getsACTIVITY_BIT() {
		return sACTIVITY_BIT;
	}

	public void setsACTIVITY_BIT(String sACTIVITY_BIT) {
		this.sACTIVITY_BIT = sACTIVITY_BIT;
	}

	public String getsACTIVITY_DESC() {
		return sACTIVITY_DESC;
	}

	public void setsACTIVITY_DESC(String sACTIVITY_DESC) {
		this.sACTIVITY_DESC = sACTIVITY_DESC;
	}

	public String getsCMPL_DT() {
		return sCMPL_DT;
	}

	public void setsCMPL_DT(String sCMPL_DT) {
		this.sCMPL_DT = sCMPL_DT;
	}

	public String getsCMPL_YN() {
		return sCMPL_YN;
	}

	public void setsCMPL_YN(String sCMPL_YN) {
		this.sCMPL_YN = sCMPL_YN;
	}

	public String getsDEF_FILE_NM() {
		return sDEF_FILE_NM;
	}

	public void setsDEF_FILE_NM(String sDEF_FILE_NM) {
		this.sDEF_FILE_NM = sDEF_FILE_NM;
	}

	public String getsCMPL_FILE_NM() {
		return sCMPL_FILE_NM;
	}

	public void setsCMPL_FILE_NM(String sCMPL_FILE_NM) {
		this.sCMPL_FILE_NM = sCMPL_FILE_NM;
	}

	public String getsCMPL_FILE_VER() {
		return sCMPL_FILE_VER;
	}

	public void setsCMPL_FILE_VER(String sCMPL_FILE_VER) {
		this.sCMPL_FILE_VER = sCMPL_FILE_VER;
	}
	
    public String getsIMG_URL() {
    	if (!sDEF_FILE_NM.equals("")) 
    		sIMG_URL = ConstantMessage.EXCEL_ICON_IMAGE_URL;

    	return sIMG_URL;
    }

	public void setsIMG_URL(String sIMG_URL) {
		this.sIMG_URL = sIMG_URL;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
