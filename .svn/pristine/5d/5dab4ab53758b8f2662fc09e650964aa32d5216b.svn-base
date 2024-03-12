package com.uni.unipms.common.Cache;

import java.util.HashMap;

public class GetSharedCacheObj {
	
	public static String getCacheServiceInfoObj (String inputObjName, String inputName) {
		return getCacheInfo(inputObjName, inputName);
	}
	
	@SuppressWarnings("unchecked")
	public static String getCacheInfo (String inputObjName, String inputName) {
		String result = "";
		HashMap<String, String> headerMap = new HashMap<String, String>();
		
		UniSharedCacheObj.getInstance();
		headerMap = (HashMap<String, String>) UniSharedCacheObj.get(inputObjName);
		
		result = headerMap.get(inputName);

		return result;
	}

}
