package com.uni.unipms.common.Cache;

public class GetSharedCache {
	
	public static String getCacheServiceInfo (String inputName) {
		return getCacheInfo(inputName);
	}
	
	private static String getCacheInfo(String inputName) {
		String result = "";

		UniSharedCache.getInstance();
		result = UniSharedCache.get(inputName);

		return result;
	}

}
