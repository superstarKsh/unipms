<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	String sSEARCH_YN     = request.getParameter("sSEARCH_YN");
	
	if ("Y".equals(sSEARCH_YN)) {

		String sSEARCH_COOP_ID     = request.getParameter("sSEARCH_COOP_ID"    );
		String sSEARCH_COOP_NM     = request.getParameter("sSEARCH_COOP_NM"    );

		session.setAttribute("sSEARCH_YN"      , sSEARCH_YN   );
		session.setAttribute("sSEARCH_COOP_ID" , sSEARCH_COOP_ID     );
		session.setAttribute("sSEARCH_COOP_NM" , sSEARCH_COOP_NM     );
	} else {
		session.setAttribute("sSEARCH_YN"      , "N" );
		session.setAttribute("sSEARCH_COOP_ID" , ""  );
		session.setAttribute("sSEARCH_COOP_NM" , ""  );
	}

%>