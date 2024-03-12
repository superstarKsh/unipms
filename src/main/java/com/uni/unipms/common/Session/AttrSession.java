package com.uni.unipms.common.Session;

import javax.servlet.http.HttpSession;

public class AttrSession {
	
	public static void CreateSession(HttpSession session, String fileName) {
		try {
			session.setAttribute("uploadFileName", fileName);
        }catch(Exception e){
            e.printStackTrace();
        }
	}
	
	
	public static String FindSession(HttpSession session) {
		
		String result = (String) session.getAttribute("uploadFileName");
		
		System.out.println("result : " + result);

		return result;
	}

}
