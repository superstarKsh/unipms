<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title></title>

<jsp:include page="../common/inc_common.jsp" flush="true" />
<%
	String referer = request.getHeader("referer");
	
	if (referer == null || !referer.startsWith("http://km.wise.co.kr/WiseIntranet") ) {
		out.println("<script>alert('잘못된 접근입니다.')</script>");
		return;
	}
%>

<script type="text/javascript">

function fn_SessionCreate(content, currPrjt) {
	fn_AjaxSendSesUrlParam(content, "pms_common_session.jsp", null, fn_ProcDataSessionCreate, currPrjt, null, null);
};

function fn_ProcDataSessionCreate(currPrjt, args1, args2) {
	if (currPrjt == "00000000" || currPrjt == "") {
		window.location = "MN010101.jsp";
	} else if (currPrjt == "99999999") {
		window.location = "MN010102.jsp";
	} else {
		window.location = "MN020101.jsp";
	}
};

function fn_ProcDataLogin(result) {
	if (result.errInfo != null && result.errInfo != 'undefined') {
		fn_ServiceErrorAlert(result.errInfo);
		return;
	}

	var userInfo = result.userInfo;
	if (userInfo == null) {
		alert(NOTICE_USER_INFO);
		return;
	}

	if (userInfo.sUSER_ID != null && userInfo.sUSER_ID != "null") {

		var content = "";

		content +="sPARAM=LOGIN";
		content +="&"; 
		content +="sUSER_ID=" + userInfo.sUSER_ID;
		content +="&"; 
		content +="sUSER_NO=" + userInfo.sUSER_NO;
		content +="&";
		content +="sUSER_NM=" + userInfo.sUSER_NM;
		content +="&";
		content +="sUSER_PSTN=" + userInfo.sUSER_PSTN;
		content +="&";
		content +="sCURR_PRJT_ID=" + userInfo.sCURR_PRJT_ID;
		content +="&";
		content +="sPMS_AUTH=" + userInfo.sPMS_AUTH;
		content +="&";
		content +="sPRJT_ID=" + userInfo.sPRJT_ID;
		content +="&";
		content +="sPRJT_NM=" + userInfo.sPRJT_NM;
		content +="&";
		content +="sCURR_STAGE=" + userInfo.sCURR_STAGE;
		content +="&";
		content +="sPRJT_TYPE=" + userInfo.sPRJT_TYPE;
		content +="&";
		content +="sDEV_STAGE=" + userInfo.sDEV_STAGE;
		content +="&";
		content +="sTEST_STAGE=" + userInfo.sTEST_STAGE;
		
		fn_SessionCreate(content, userInfo.sCURR_PRJT_ID);

	} else {
		alert(NOTICE_USER_INFO);
		return;
	}
};

var userNo = getParameter("userNo");

var sendData = {
	sUSER_NO : userNo
};

fn_AjaxSend(sendData, "WSCM000101", fn_ProcDataLogin, null);

</script>
</head>

<body>
</body>
</html>