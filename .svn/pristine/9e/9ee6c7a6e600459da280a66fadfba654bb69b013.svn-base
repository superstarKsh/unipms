package com.uni.unipms.model.Out;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.common.Message.ConstantMessage;
import com.uni.unipms.model.CommonOutVO;

public class AD040101OVO extends CommonOutVO {
	
	private String sOUPUT_POOL_ID = "";
	private String sOUTPUT_NM = "";
	private String sFILE_NM = "";
	private String sOUTPUT_DESC = "";
	private String sIMG_URL = "";

	public String getsOUPUT_POOL_ID() {
		return sOUPUT_POOL_ID;
	}
	
	public void setsOUPUT_POOL_ID(String sOUPUT_POOL_ID) {
		this.sOUPUT_POOL_ID = sOUPUT_POOL_ID;
	}
	
	public String getsOUTPUT_NM() {
		return sOUTPUT_NM;
	}
	
	public void setsOUTPUT_NM(String sOUTPUT_NM) {
		this.sOUTPUT_NM = sOUTPUT_NM;
	}
	
	public String getsFILE_NM() {
		return sFILE_NM;
	}
	
	public void setsFILE_NM(String sFILE_NM) {
		this.sFILE_NM = sFILE_NM;
	}

	public String getsOUTPUT_DESC() {
		return sOUTPUT_DESC;
	}
	
	public void setsOUTPUT_DESC(String sOUTPUT_DESC) {
		this.sOUTPUT_DESC = sOUTPUT_DESC;
	}
	

    public String getsIMG_URL() {
    	if (!sFILE_NM.equals(""))
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
