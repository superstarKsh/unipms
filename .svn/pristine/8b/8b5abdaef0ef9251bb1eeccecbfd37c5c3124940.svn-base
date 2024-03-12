package com.uni.unipms.common.service;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Properties;

import com.uni.unipms.common.Cache.UniSharedCacheObj;

public class AllocExcelHeaderInfo {
	
	private static Properties props = null;
	
	public void SetExcelHeaderInfo() {
		
		UniSharedCacheObj.getInstance();
		
		try {
			if (props == null) {
				props = new Properties();
				props.load(getClass().getClassLoader().getResourceAsStream("excelheader.properties"));
			}
			
			HashMap<String, String> headerMap = new HashMap<String, String>();
			
			for(Enumeration en = props.propertyNames(); en.hasMoreElements();) {
				String key = (String)en.nextElement();
				String value = new String(props.getProperty(key).getBytes("ISO-8859-1"), "UTF-8");
				
				headerMap.put(key, value);
			}
			
			UniSharedCacheObj.put("EXCEL_HEADER", headerMap);

		} catch (Exception e) {
		}
		
	}

}
