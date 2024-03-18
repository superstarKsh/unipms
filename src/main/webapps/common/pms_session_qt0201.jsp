<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	String sSEARCH_YN     = request.getParameter("sSEARCH_YN");
	
	if ("Y".equals(sSEARCH_YN)) {
		String sQULTY_ID       = request.getParameter("sQULTY_ID" );
		String sQULTY_TITLE    = request.getParameter("sQULTY_TITLE" );
		String sQULTY_CNTL_ID  = request.getParameter("sQULTY_CNTL_ID" );
		
		session.setAttribute("sSEARCH_YN"     , "Y" );
		session.setAttribute("sQULTY_ID"       , sQULTY_ID       );
		session.setAttribute("sQULTY_TITLE"    , sQULTY_TITLE    );
		session.setAttribute("sQULTY_CNTL_ID"  , sQULTY_CNTL_ID  );
	} else {
		session.setAttribute("sSEARCH_YN"     , "N" );
		session.setAttribute("sQULTY_ID"      , ""  );
		session.setAttribute("sQULTY_TITLE"   , ""  );
		session.setAttribute("sQULTY_CNTL_ID" , ""  );
	}

%>