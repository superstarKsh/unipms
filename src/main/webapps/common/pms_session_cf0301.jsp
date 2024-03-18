<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String sSEARCH_YN     = request.getParameter("sSEARCH_YN");
	
	if ("Y".equals(sSEARCH_YN)) {
		String sSEARCH_PRJT_STAGE  = request.getParameter("sSEARCH_PRJT_STAGE" );
		String sSEARCH_TASK_ID     = request.getParameter("sSEARCH_TASK_ID"    );
		String sSEARCH_ISSUE_ID    = request.getParameter("sSEARCH_ISSUE_ID"   );

		session.setAttribute("sSEARCH_YN"           , sSEARCH_YN   );
		session.setAttribute("sSEARCH_PRJT_STAGE"   , sSEARCH_PRJT_STAGE  );
		session.setAttribute("sSEARCH_TASK_ID"      , sSEARCH_TASK_ID     );
		session.setAttribute("sSEARCH_ISSUE_ID"     , sSEARCH_ISSUE_ID    );
	} 
	else {
		session.setAttribute("sSEARCH_YN"    , "N" );
		session.setAttribute("sSEARCH_PRJT_STAGE"   , ""  );
		session.setAttribute("sSEARCH_TASK_ID"      , ""  );
		session.setAttribute("sSEARCH_ISSUE_ID"     , ""  );
	}
%>