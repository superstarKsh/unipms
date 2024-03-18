<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	String sSEARCH_YN     = request.getParameter("sSEARCH_YN");
	
	if ("Y".equals(sSEARCH_YN)) {
		String sSEARCH_PRJT_ID     = request.getParameter("sSEARCH_PRJT_ID");
		String sSEARCH_PRJT_NM     = request.getParameter("sSEARCH_PRJT_NM");
		String sSEARCH_ACTIVITY_ID = request.getParameter("sSEARCH_ACTIVITY_ID");
	
		session.setAttribute("sSEARCH_YN"           , sSEARCH_YN           );
		session.setAttribute("sSEARCH_PRJT_ID"      , sSEARCH_PRJT_ID      );
		session.setAttribute("sSEARCH_PRJT_NM"      , sSEARCH_PRJT_NM      );
		session.setAttribute("sSEARCH_ACTIVITY_ID"  , sSEARCH_ACTIVITY_ID  );
	} else {
		session.setAttribute("sSEARCH_YN"           , ""  );
		session.setAttribute("sSEARCH_PRJT_ID"      , ""  );
		session.setAttribute("sSEARCH_PRJT_NM"      , ""  );
		session.setAttribute("sSEARCH_ACTIVITY_ID"  , ""  );
	}

%>