package com.uni.unipms.common.service;

import java.util.Enumeration;
import java.util.Properties;

import com.uni.unipms.common.Cache.UniSharedCache;
import com.uni.unipms.common.Message.ConstantMessage;

public class AllocServiceInfo {

	private static Properties props = null;
	
	public void SetServiceInfo() {
		
		UniSharedCache.getInstance();
		
		try {
			if (props == null) {
				props = new Properties();
	            props.load(getClass().getClassLoader().getResourceAsStream("env.properties"));
			}
			
			for(Enumeration en = props.propertyNames(); en.hasMoreElements();) {
				String key = (String)en.nextElement();
				String value = new String(props.getProperty(key).getBytes("ISO-8859-1"), "UTF-8").replaceAll("\"", "");

				UniSharedCache.put(key, value);
			}
			
		} catch (Exception e) {
		}
		
	}
}
