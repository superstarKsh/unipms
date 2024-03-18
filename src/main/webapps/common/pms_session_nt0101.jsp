<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String sSEARCH_YN     = request.getParameter("sSEARCH_YN");
	
	if ("Y".equals(sSEARCH_YN)) {
		String sSEQ_NO     = request.getParameter("sSEARCH_SEQ_NO" );

		session.setAttribute("sSEARCH_YN"      , sSEARCH_YN  );
		session.setAttribute("sSEARCH_SEQ_NO"  , sSEQ_NO     );
	} else {
		session.setAttribute("sSEARCH_YN"      , "N" );
		session.setAttribute("sSEARCH_SEQ_NO"  , ""  );
	}
%>