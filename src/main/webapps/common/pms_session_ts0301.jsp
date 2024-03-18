<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	String sSEARCH_YN     = request.getParameter("sSEARCH_YN");
	
	if ("Y".equals(sSEARCH_YN)) {
		session.setAttribute("sSEARCH_YN"         ,	sSEARCH_YN);
		session.setAttribute("sSEARCH_TASK_ID"    ,	request.getParameter("sSEARCH_TASK_ID"));
		session.setAttribute("sSEARCH_SEG_ID"     ,	request.getParameter("sSEARCH_SEG_ID"));
		session.setAttribute("sSEARCH_SEG_SUB_ID" ,	request.getParameter("sSEARCH_SEG_SUB_ID"));
		session.setAttribute("sSEARCH_PRG_ID"     , request.getParameter("sSEARCH_PRG_ID"));
	}
	else {
		session.setAttribute("sSEARCH_YN"         , "N");
		session.setAttribute("sSEARCH_TASK_ID"    , "");
		session.setAttribute("sSEARCH_SEG_ID"     , "");
		session.setAttribute("sSEARCH_SEG_SUB_ID" , "");
		session.setAttribute("sSEARCH_PRG_ID"     , "");
	}
%>