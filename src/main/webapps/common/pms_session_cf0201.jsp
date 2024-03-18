<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	String sSEARCH_YN = request.getParameter("sSEARCH_YN");

	if ("Y".equals(sSEARCH_YN)) {

		String sPROCD_NO     = request.getParameter("sPROCD_NO"    );
		
		session.setAttribute("sSEARCH_YN"  , sSEARCH_YN    );
		session.setAttribute("sPROCD_NO"   , sPROCD_NO     );

	} else  {

		session.setAttribute("sSEARCH_YN"  , "N" );
		session.setAttribute("sPROCD_NO"   , ""  );

	}
%>