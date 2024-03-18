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

<script type="text/javascript">

function fn_Init() {
	
	if(fn_GetCookie('sUSER_ID').length > 1) {
		document.getElementById("cookieID").checked = true;
		$("#sUSER_ID").val(fn_GetCookie('sUSER_ID'));
		$('#sUSER_PW').focus();
	}else{
		document.getElementById("cookieID").checked = false;
		$("#sUSER_ID").val('');
		$('#sUSER_ID').focus();
	}
};

function fn_SessionCreate(content, currPrjt, prjtCnt) {
	fn_AjaxSendSesUrlParam(content, "pms_common_session.jsp", null, fn_ProcDataSessionCreate, currPrjt, prjtCnt, null);
};

function fn_ProcDataSessionCreate(currPrjt, args1, args2) {

	if (currPrjt == "00000000" || currPrjt == "") {
		window.location = "MN010101.jsp";
	} else if (currPrjt == "99999999") {
		window.location = "MN010102.jsp";
	} else {
		window.location = "MN020101.jsp";
	}

/*
	if (eval(args1) > 1) {
		window.location = "MN010101.jsp";
	}else {
		window.location = "MN020101.jsp";
	}
*/
};

function fn_Login(){
	
	if( document.getElementById("cookieID").checked){
		fn_SetCookie('sUSER_ID',$("#sUSER_ID").val(),1);
	}else{
		fn_DelCookie('sUSER_ID');
	}
	
	if( $("#sUSER_ID").val() == null || $("#sUSER_ID").val() == "" || 
		$("#sUSER_PW").val() == null || $("#sUSER_PW").val() == "" ){
		alert('로그인 정보를 입력하여 주십시오.');
		return false;
	}
	
	var sendData = {
		sUSER_ID : $("#sUSER_ID").val(),
		sUSER_PW : $("#sUSER_PW").val()
	};
	
	fn_AjaxSend(sendData, "CM000101", fn_ProcDataLogin, null);
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
		content +="sPRJT_CNT=" + userInfo.sPRJT_CNT;
		content +="&";
		content +="sCURR_STAGE=" + userInfo.sCURR_STAGE;
		content +="&";
		content +="sPRJT_TYPE=" + userInfo.sPRJT_TYPE;
		content +="&";
		content +="sDEV_STAGE=" + userInfo.sDEV_STAGE;
		content +="&";
		content +="sTEST_STAGE=" + userInfo.sTEST_STAGE;
		
		fn_SessionCreate(content, userInfo.sCURR_PRJT_ID, userInfo.sPRJT_CNT);

	} else {
		alert("회원 정보가 없습니다. 입력한 아이디와 비밀번호가 일치하지 않거나 회원 가입을 하여주시기 바랍니다.");
		return;
	}
};

function fn_CookieIDCheck(){
	if( document.getElementById("cookieID").checked){
		fn_SetCookie('sUSER_ID', $("#sUSER_ID").val(),1);
	}else{
		fn_DelCookie('sUSER_ID');
	} 
};

function fn_GetCookie( arg ){ 
  	var nameOfCookie = arg + '='; 
  	var x = 0;
  	
	while( x <= document.cookie.length ) { 
		var y = (x+nameOfCookie.length); 
		
		if(document.cookie.substring( x, y ) == nameOfCookie ) { 
			if((endOfCookie=document.cookie.indexOf( ';', y )) == -1 ) 
				endOfCookie = document.cookie.length; 
				return unescape( document.cookie.substring( y, endOfCookie ) ); 
		} 
 		
		x = document.cookie.indexOf( ' ', x ) + 1; 
    	
		if ( x == 0 ) 
    		break; 
     	} 
    return ''; 
};

function fn_DelCookie(cKey) {
    document.cookie = cKey + "=;expires=Thu, 01-Jan-1970 00:00:01 GMT";
};

function fn_SetCookie( name, value, expiredays ) {
	var todayDate = new Date(); 
	todayDate.setDate( todayDate.getDate() + expiredays ); 
	document.cookie = name + '=' + escape( value ) + '; path=/; expires=' + todayDate.toGMTString() + ';';
};

</script>
</head>

<body class="loginpage" onload="fn_Init();" oncontextmenu="return false">
    <div id="wrap">
       <div class="login">
            <p class="save">
            	<input type="checkbox" id="cookieID" name="cookieID" class="checkbox" checked="checked" onclick="fn_CookieIDCheck();"/>
            	<label for="check1" class="rlabal" >아이디 저장하기</label>
            </p>
            <ul>
                <li><span>아이디</span><input type="text" id="sUSER_ID" name="sUSER_ID"/></li>
                <li><span>비밀번호</span><input type="password" id="sUSER_PW" name="sUSER_PW" onkeydown="javascript:if(event.keyCode==13){fn_Login();}" /></li>
            </ul>
            <a href="javascript:fn_Login();" class="btn_login">로그인</a>
       </div>
    </div>
</body>
</html>