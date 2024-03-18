<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	String sSEARCH_YN     = request.getParameter("sSEARCH_YN");
	
	if ("Y".equals(sSEARCH_YN)) {
		String sSEARCH_RPRT_STRT_DT  = request.getParameter("sSEARCH_RPRT_STRT_DT" );
		String sSEARCH_RPRT_END_DT   = request.getParameter("sSEARCH_RPRT_END_DT"  );
		String sSEARCH_RPRT_YEAR     = request.getParameter("sSEARCH_RPRT_YEAR"    );
		
		session.setAttribute("sSEARCH_YN"            , sSEARCH_YN           );
		session.setAttribute("sSEARCH_RPRT_STRT_DT"  , sSEARCH_RPRT_STRT_DT );
		session.setAttribute("sSEARCH_RPRT_END_DT"   , sSEARCH_RPRT_END_DT  );
		session.setAttribute("sSEARCH_RPRT_YEAR"     , sSEARCH_RPRT_YEAR    );
	} else {
		session.setAttribute("sSEARCH_YN"            , "N" );
		session.setAttribute("sSEARCH_RPRT_STRT_DT"  , ""  );
		session.setAttribute("sSEARCH_RPRT_END_DT"   , ""  );
		session.setAttribute("sSEARCH_RPRT_YEAR"     , ""  );
	}
%>