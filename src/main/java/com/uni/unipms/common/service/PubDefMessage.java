package com.uni.unipms.common.service;

import javax.servlet.http.HttpServletRequest;

public class PubDefMessage {
	
	public void SetCommonCodeType (HttpServletRequest request) {
		if (request.getHeader("REFERER").indexOf("wise") != -1) {
			
		}
	}

}
