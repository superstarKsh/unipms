<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	String sSEARCH_YN     = request.getParameter("sSEARCH_YN");
	
	if ("Y".equals(sSEARCH_YN)) {
		String sSEARCH_CSR_ID  = request.getParameter("sSEARCH_CSR_ID" );
		
		session.setAttribute("sSEARCH_YN"      , sSEARCH_YN           );
		session.setAttribute("sSEARCH_CSR_ID"  , sSEARCH_CSR_ID );
	} else {
		session.setAttribute("sSEARCH_YN"      , "N" );
		session.setAttribute("sSEARCH_CSR_ID"  , ""  );
	}
%>