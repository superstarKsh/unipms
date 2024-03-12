package com.uni.unipms.model.In;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.uni.unipms.model.CommonTaskInVO;

public class CM003101IVO extends CommonTaskInVO {
	public CM003101IVO() {
	}
	
	public CM003101IVO(CommonTaskInVO commonTaskInVO) {
		super.setsDOMAIN_ID(commonTaskInVO.getsDOMAIN_ID());
		super.setsPRJT_ID(commonTaskInVO.getsPRJT_ID());
		super.setsPRJT_STAGE(commonTaskInVO.getsPRJT_STAGE());
		super.setsTASK_ID(commonTaskInVO.getsTASK_ID());
		super.setsSEG_ID(commonTaskInVO.getsSEG_ID());
		super.setsSEG_SUB_ID(commonTaskInVO.getsSEG_SUB_ID());
		super.setsCODE_SETTING(commonTaskInVO.getsSEG_SUB_ID());
		super.setsRSLT_CODE(commonTaskInVO.getsRSLT_CODE());
		super.setsRSLT_MSG(commonTaskInVO.getsRSLT_MSG());
	}
	
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

}
