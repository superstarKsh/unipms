package com.uni.unipms.common.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.UnknownHostException;

import com.uni.unipms.common.Cache.UniSharedCache;
import com.uni.unipms.common.Message.ConstantMessage;

public class AllocHostInfo {
	
	public void SetHostInfo() {
		
		UniSharedCache.getInstance();
		
		String output = null;
		String hostID = null;
		String hostNm = null;
		String osName = null;
		String userName = null;
		
		try {
			Process p;
			
			osName = System.getProperty("os.name");
			userName = System.getProperty("user.name");

			if (osName.indexOf("Windows") >= 0) {
				p = Runtime.getRuntime().exec("net config rdr");
		        BufferedReader stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));

		        while ((output = stdInput.readLine()) != null) {
		            if (output.indexOf("NetBT_Tcpip") >= 0) {
		            	hostID = output.substring(output.length() - 13, output.length() - 1); 
		            }
		        }
			} else {
				p = Runtime.getRuntime().exec("hostid");
		        BufferedReader stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));

		        while ((output = stdInput.readLine()) != null) {
		        	hostID = output;
		        }
			}

			hostNm = (InetAddress.getLocalHost().getHostAddress());

		} catch (UnknownHostException e) {
		} catch (IOException e1) {
		}

		UniSharedCache.put(ConstantMessage.HOST_ID, hostID);
		UniSharedCache.put(ConstantMessage.HOST_NAME, hostNm);
		UniSharedCache.put(ConstantMessage.OS_NAME, osName);
		UniSharedCache.put(ConstantMessage.USER_NAME, userName);
		
	}
}
