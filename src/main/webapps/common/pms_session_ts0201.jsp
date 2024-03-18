<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String sSEARCH_YN     = request.getParameter("sSEARCH_YN");
	
	if ("Y".equals(sSEARCH_YN)) {
		String sSEARCH_TEST_ID = request.getParameter("sSEARCH_TEST_ID" );
		String sHISTORY_BACK   = request.getParameter("sHISTORY_BACK" );
	
		session.setAttribute("sSEARCH_YN"      , sSEARCH_YN      );
		session.setAttribute("sSEARCH_TEST_ID" , sSEARCH_TEST_ID );
		session.setAttribute("sHISTORY_BACK"   , sHISTORY_BACK   );
		
	} else {
		session.setAttribute("sSEARCH_YN"      , "N" );
		session.setAttribute("sSEARCH_TEST_ID" , ""  );
		session.setAttribute("sHISTORY_BACK"   , ""  );
	}
%>