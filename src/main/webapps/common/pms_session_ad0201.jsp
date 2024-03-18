<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String sSEARCH_YN     = request.getParameter("sSEARCH_YN");
	
	if ("Y".equals(sSEARCH_YN)) {
		String sSEARCH_USER_ID   = request.getParameter("sSEARCH_USER_ID"   );
		String sSEARCH_USER_NM   = request.getParameter("sSEARCH_USER_NM"   );
		String sSEARCH_PARAM     = request.getParameter("sSEARCH_PARAM"   );
	
		session.setAttribute("sSEARCH_YN"      , sSEARCH_YN      );
		session.setAttribute("sSEARCH_USER_ID" , sSEARCH_USER_ID );
		session.setAttribute("sSEARCH_USER_NM" , sSEARCH_USER_NM );
		session.setAttribute("sSEARCH_PARAM"   , sSEARCH_PARAM   );
	} else {
		session.setAttribute("sSEARCH_YN"      , "N" );
		session.setAttribute("sSEARCH_USER_ID" , ""  );
		session.setAttribute("sSEARCH_USER_NM" , ""  );
		session.setAttribute("sSEARCH_PARAM"   , ""  );
	}

%>