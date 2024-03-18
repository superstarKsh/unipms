<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	String sSEARCH_YN   = request.getParameter("sSEARCH_YN");
	
	if ("Y".equals(sSEARCH_YN)) {
		String sCURR_DT     = request.getParameter("sCURR_DT");
		String sSEQ_NO     = request.getParameter("sSEQ_NO" );

		session.setAttribute("sSEARCH_YN" , sSEARCH_YN  );
		session.setAttribute("sCURR_DT"   , sCURR_DT    );
		session.setAttribute("sSEQ_NO"    , sSEQ_NO     );
	} else {
		session.setAttribute("sSEARCH_YN" , "N" );
		session.setAttribute("sCURR_DT"   , ""  );
		session.setAttribute("sSEQ_NO"    , ""  );
	}

%>