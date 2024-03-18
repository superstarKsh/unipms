<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- start : meta -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<!-- end : meta -->

<title></title>

<!-- start : include common -->
<jsp:include page="../common/inc_common.jsp" flush="true" />
<!-- end : include common -->

<script type="text/javascript">

function fn_Init() {

	$("#container input[type=text], #container select, #container textarea").val("");
	
	$("#searchUserID").val('<%=(String) session.getAttribute("sSEARCH_USER_ID")%>');
	$("#searchUserNM").val('<%=(String) session.getAttribute("sSEARCH_USER_NM")%>');
	$("#sSEARCH_YN").val('<%=(String) session.getAttribute("sSEARCH_YN")%>');
	$("#sSEARCH_PARAM").val('<%=(String) session.getAttribute("sSEARCH_PARAM")%>');
	
	fn_InitLoad();
};

var sDUP_YN = "N";

function fn_InitLoad() {

	sDUP_YN = "N";

	if ($("#sSEARCH_PARAM").val() == "H") {
		var searchSection = document.getElementById("searchSection");
		searchSection.setAttribute("style", "display:none");
		var searchBSection = document.getElementById("searchBSection");
		searchBSection.setAttribute("style", "display:none");
		var searchBSection = document.getElementById("btnMoveList");
		searchBSection.setAttribute("style", "display:none");
	}
	
	var sendData = {
	};
	
	fn_AjaxSend(sendData, "AD020101", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var selBizQuarterInfo = '<option value="99">선 택</option>';
	var selPstnInfo = '<option value="99">선 택</option>';
	var selEmpInfo = '<option value="99">선 택</option>';
	var selPmsAuthInfo = '<option value="99">선 택</option>';
	var htmlstr="";

	$.each(result.lunaInfo,function(key, value) {
		htmlstr = htmlstr+"<input type='radio' class='radiobox ml10' id='sLUNAR_DIV' name='sLUNAR_DIV' value='"+value.sCODE+"' checked/>"+value.sCODE_NM;				
	});

	$("#lunarRadio").html(htmlstr);
			
	$.each(result.bizQuarterInfo,function(key, value) {			
		selBizQuarterInfo = selBizQuarterInfo + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sBIZ_QUARTER").empty().append(selBizQuarterInfo);
	});
	$.each(result.pstnInfo,function(key, value) {
		selPstnInfo = selPstnInfo + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sUSER_PSTN").empty().append(selPstnInfo);
	});
	$.each(result.empInfo,function(key, value) {
		selEmpInfo = selEmpInfo + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sEMP_TYPE").empty().append(selEmpInfo);
	});
	$.each(result.pmsAuthInfo,function(key, value) {
		selPmsAuthInfo = selPmsAuthInfo + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sPMS_AUTH").empty().append(selPmsAuthInfo);
	});
	
	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "AD020111.jsp";
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sUSER_ID : $("#searchUserID").val()
	};

	fn_AjaxSend(sendData, "AD020113", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {

	var memInfo = result.memInfo;

	if (memInfo == null){
		$("#picImg").attr("src", "../images/common/noimg.png");
		return;
	} else if (memInfo.sPHOTO == null || memInfo.sPHOTO == "") {
		$("#picImg").attr("src", "../images/common/noimg.png");
	} else {
		if (memInfo.sPHOTO == "")
			$("#picImg").attr("src", "../images/common/noimg.png");
		else
			$("#picImg").attr("src", "../upload/image/" + memInfo.sPHOTO);				
	}
			
	$("#searchUserID").val(memInfo.sUSER_ID);
	$("#searchUserNM").val(memInfo.sUSER_NM);			
	$("#sUSER_ID").val(memInfo.sUSER_ID);
	$("#sUSER_NM").val(memInfo.sUSER_NM);
	$("#sUSER_PW").val(memInfo.sUSER_PW);
	$("#sPSNL_NO").val(memInfo.sPSNL_NO);
	$("#sBRTH").val(memInfo.sBRTH);			
	$("input:radio[name=sLUNAR_DIV]:input[value="+ memInfo.sLUNAR_DIV +"]").prop("checked", true);			
	$("#sJOIN_DT").val(memInfo.sJOIN_DT);
	$("#sRTRE_DT").val(memInfo.sRTRE_DT);
	$("#sCARR_YY").val(memInfo.sCARR_YY);
	$("#sCARR_MM").val(memInfo.sCARR_MM);
	$("#sZIP_CD_JI").val(memInfo.sZIP_CD_JI);
	$("#sADDR_JI").val(memInfo.sADDR_JI);
	$("#sZIP_CD_DO").val(memInfo.sZIP_CD_DO);
	$("#sADDR_DO").val(memInfo.sADDR_DO);
	$("#sOFFICE_NUM").val(memInfo.sOFFICE_NUM);
	$("#sPHONE_NUM").val(memInfo.sPHONE_NUM);
	$("#sEMAIL").val(memInfo.sEMAIL);
	$("#sPHOTO").val(memInfo.sPHOTO);
	$("#sCOOP_ID").val(memInfo.sCOOP_ID);
	$("#sCOOP_NM").val(memInfo.sCOOP_NM);
	$("#sBIZ_QUARTER").val(memInfo.sBIZ_QUARTER);
	$("#sUSER_PSTN").val(memInfo.sUSER_PSTN);
	$("#sEMP_TYPE").val(memInfo.sEMP_TYPE);
	$("#sPMS_AUTH").val(memInfo.sPMS_AUTH);
	$("#sCURR_PRJT_ID").val(memInfo.sCURR_PRJT_ID);
	$("#sCURR_PRJT_NM").val(memInfo.sCURR_PRJT_NM);

	sDUP_YN = "N";
};

function fn_InsertPrjt() {
	
	if(sDUP_YN == "Y"){
		alert(PMS_USED_ID);
		return;
	}
	
	var strCurrPrjtId = '';
	if ($("#sCURR_PRJT_NM").val() == '')
		strCurrPrjtId = '00000000';
	else
		strCurrPrjtId = $("#sCURR_PRJT_ID").val();
		
	var sendData = {
		sUSER_ID : $("#sUSER_ID").val(),
		sUSER_NM : $("#sUSER_NM").val(),
		sUSER_PW : $("#sUSER_PW").val(),
		sPSNL_NO : $("#sPSNL_NO").val(),
		sBRTH : $("#sBRTH").val(),
		sLUNAR_DIV : $("#sLUNAR_DIV:checked").val(),
		sJOIN_DT : $("#sJOIN_DT").val(),
		sRTRE_DT : $("#sRTRE_DT").val(),
		sCARR_YY : $("#sCARR_YY").val(),
		sCARR_MM : $("#sCARR_MM").val(),
		sZIP_CD_JI : $("#sZIP_CD_JI").val(),
		sADDR_JI : $("#sADDR_JI").val(),
		sZIP_CD_DO : $("#sZIP_CD_DO").val(),
		sADDR_DO : $("#sADDR_DO").val(),
		sOFFICE_NUM : $("#sOFFICE_NUM").val(),
		sPHONE_NUM : $("#sPHONE_NUM").val(),
		sEMAIL : $("#sEMAIL").val(),
		sPHOTO : fn_GetFileName($("#sPHOTO").val()),
		sCOOP_ID : $("#sCOOP_ID").val(),
		sBIZ_QUARTER : $("#sBIZ_QUARTER").val(),
		sUSER_PSTN : $("#sUSER_PSTN").val(),
		sEMP_TYPE : $("#sEMP_TYPE").val(),
		sCURR_PRJT_ID : strCurrPrjtId,
		sPMS_AUTH : $("#sPMS_AUTH").val()
	};
	
	fn_AjaxSend(sendData, "AD020121", fn_Init_Clear, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {

	var sendData = {
		sUSER_ID : $("#sUSER_ID").val()
	};

	fn_AjaxSend(sendData, "AD020141", fn_Init_Clear, PMS_PROC_DELETE);
};

function fn_InsertPrjtFile() {
	fn_ImageUploadFile("AD02", fn_InsertPrjt);
};

function fn_CheckDupId(){

	var sendData = {
		sUSER_ID : $("#sUSER_ID").val()
	};
	
	fn_AjaxSend(sendData, "AD020115", fn_SetDataCheckDupId, null);
};

function fn_SetDataCheckDupId(result){

	var dupInfo = result.dupInfo;
	sDUP_YN = dupInfo.sDUP_YN ;

	if(dupInfo.sDUP_YN == "Y"){
		sDUP_YN = "Y";
		alert("이미 사용중인 아이디입니다.");
		return;
	} else {
		sDUP_YN = "N";
		return;
	}
 };

$(function() {
    $("#sJOIN_DT").datepicker(setCalendar);
    $("#sRTRE_DT").datepicker(setCalendar);
});

function fn_MovePage(args) {

	var content = "";
	content += "sSEARCH_YN=Y";
	content += "&";
	content += "sSEARCH_USER_ID=" + $("#searchUserID").val();
	content += "&";
	content += "sSEARCH_USER_NM=" + $("#searchUserNM").val();
	content += "&";
	content += "sSEARCH_PARAM=L";
	
	fn_AjaxSendSesUrl(content, "pms_session_ad0201.jsp", args + "?p=" + paramP, null);
};

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
};

function fn_SearchUser() {
	window.open("PU010111.jsp","",popupStyle);
};

function fn_SearchCoop() {
	window.open("PU010121.jsp","",popupStyle);
};

function fn_MoveToList() {
	var content = "";
	content += "sSEARCH_YN=N";
	
	fn_AjaxSendSesUrl(content, "pms_session_ad0201.jsp", "AD020101.jsp", null);
};

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div id="wrap">

	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header_admin.jsp" flush="true" />
	</div>
	<!-- END : include -->

	<div id="container">

		<div id="leftWrap">
			<jsp:include page="../common/layout_left_ad.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
    			<!-- Form -->
    			<form id="contentsForm" name="contentsForm" action="../common/pms_upload.jsp" method="post" enctype="multipart/form-data" onSubmit="return false;">	
    				<div class="fixbox">
	
						<!-- START : title -->
	    		        <h2>[AD02] 인력정보 등록</h2>
	    		        <!-- END : title -->
	
						<!-- START : search section -->
	    		        <div id="searchSection" class="section">
	    		            <div class="search">
	    		                <div class="box">
	    		                    <ul>
	    		                        <li class="name"><span>아이디/이름</span></li>
	    		                        <li><input type="text" class="txtinp w100" id="searchUserID" name="searchUserID" readOnly/></li>
	    		                        <li><input type="text" class="txtinp w200" id="searchUserNM"  name="searchUserNM" readOnly/></li>
	    		                        <li><a href="javascript:fn_SearchUser();" class="btn01">검색</a></li>
	    		                    </ul>
	    		                </div>
	    		            </div><!--//search-->
	    		        </div><!--//section-->
	    		        <div id="searchBSection" class="section">
	                        <ul class="btnbox right">
	                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
	                     	</ul>
	                    </div>
	    		        <!-- END : search section -->
	
						<!-- START : input table section -->
	    		        <div id="section" class="section">
							<ul class="tab">
								<li class="on"><a href="javascript:fn_MovePage('AD020111.jsp')">기본정보</a></li>
								<li><a href="javascript:fn_MovePage('AD020121.jsp')">학력</a></li>
								<li><a href="javascript:fn_MovePage('AD020131.jsp')">자격증</a></li>
								<li><a href="javascript:fn_MovePage('AD020141.jsp')">교육이수</a></li>
								<li><a href="javascript:fn_MovePage('AD020151.jsp')">경력</a></li>
								<li><a href="javascript:fn_MovePage('AD020161.jsp')">프로젝트경력</a></li>
							</ul><!--//tab-->
	    		            <table class="table01" border="0" cellspacing="0" summary="">
	    		                <tbody>
	    		                	<tr>
	    		                        <th class="w100">사진</th>
	    		                        <td>
	    		                        	<img id="picImg" class="picImg" src="" alt="이미지 사진을 등록하세요."/>
	    		                        	<div class="inputfileL last">
												<input type="hidden" id="sPHOTO" name="sPHOTO" readOnly/>
												<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sPHOTO').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
									        </div>
	    		                        </td>
	    		                        <th class="w100">
	    		                        	<div>이름</div>
	    		                        	<div>생년월일</div>
	    		                        	<div>입사일자</div>
	    		                        	<div>퇴사일자</div>
	    		                        	<div class='last'>이메일</div>
	    		                        </th>
	    		                        <td>
	    		                        	<div><input type="text" class="txtinp w100" id="sUSER_NM" name="sUSER_NM"/></div>
	    		                        	<div><input type="text" class="txtinp w80" id="sPSNL_NO" name="sPSNL_NO"/>    		                        	
											<span id="lunarRadio"></span></div>	    		                        	
	    		                        	<div><input type="text" class="txtinp w100" id="sJOIN_DT" name="sJOIN_DT" onkeydown="javascript:fn_SetDateType();" /></div>
	    		                        	<div><input type="text" class="txtinp w100" id="sRTRE_DT" name="sRTRE_DT"/></div>
	    		                        	<div class='last'><input type="text" class="txtinp w200" id="sEMAIL" name="sEMAIL"/></div>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">아이디</th>
	    		                        <td>
	    		                        	<ul class="tase">
		    		                        	<li><input type="text" class="txtinp w100" id="sUSER_ID" name="sUSER_ID" /></li>
		    		                        	<li><a href="javascript:fn_CheckDupId();" class="btn01">중복</a></li>
		    		                        </ul>
	    		                        </td>
	    		                        <th class="w100">비밀번호</th>
	    		                        <td>
	                                        <input type="text" class="txtinp w100" id="sUSER_PW" name="sUSER_PW"/>
	                                    </td>
	    		                    </tr>   		                    
	    		                    <tr>
	    		                        <th class="w100">경력</th>
	    		                        <td colspan="3">
	                                        <input type="text" class="txtinp w40" id="sCARR_YY" name="sCARR_YY"/> 년
	                                        <input type="text" class="txtinp w40" id="sCARR_MM" name="sCARR_MM"/> 개월
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">소속사</th>
	    		                        <td>
	                                        <ul class="tase">
		    		                        	<li><input type="text" class="txtinp w100" id="sCOOP_NM" name="sCOOP_NM" readOnly/></li>
		    		                            <li><a href="javascript:fn_SearchCoop();" class="btn01">검색</a></li>
		    		                            <li><input type="hidden" id="sCOOP_ID" name="sCOOP_ID"/></li>
											</ul>
	                                    </td>
	                                    <th class="w100">부서</th>
	    		                        <td>
	    		                        	<select class="selectbox" name="selectbox" id="sBIZ_QUARTER" name="sBIZ_QUARTER">
											</select>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">직급</th>
	    		                        <td>
	    		                        	<select class="selectbox" name="selectbox" id="sUSER_PSTN" name="sUSER_PSTN">
											</select>
	                                    </td>
	                                    <th class="w100">고용형태</th>
	    		                        <td>
	    		                        	<select class="selectbox" name="selectbox" id="sEMP_TYPE" name="sEMP_TYPE">
											</select>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">현재프로젝트</th>
	    		                        <td>
	                                        <ul class="tase">
		    		                        	<li><input type="text" class="txtinp w100" id="sCURR_PRJT_NM" name="sCURR_PRJT_NM"/></li>
		    		                        	<li><a href="javascript:fn_SearchPrjtInfo();" class="btn01">검색</a></li>
			    		                        <li><input type="hidden" id="sCURR_PRJT_ID" name="sCURR_PRJT_ID"/></li>
			    		                    </ul>    
	                                    </td>
	                                    <th class="w100">PMS 사용권한</th>
	    		                        <td>
	    		                        	<select class="selectbox" name="selectbox" id="sPMS_AUTH" name="sPMS_AUTH">
											</select>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">전화번호</th>
	    		                        <td>
	                                        <input type="text" class="txtinp w100" id="sOFFICE_NUM" name="sOFFICE_NUM"/>
	                                    </td>
	                                    <th class="w100">핸드폰번호</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" id="sPHONE_NUM" name="sPHONE_NUM"/>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">지번주소</th>
	    		                        <td colspan="3">
	                                        <input type="text" class="txtinp w100" id="sZIP_CD_JI" name="sZIP_CD_JI"/>
	                                        <input type="text" class="txtinp w500" id="sADDR_JI" name="sADDR_JI"/>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">도로명주소</th>
	    		                        <td colspan="3">
	                                        <input type="text" class="txtinp w100" id="sZIP_CD_DO" name="sZIP_CD_DO"/>
	                                        <input type="text" class="txtinp w500" id="sADDR_DO" name="sADDR_DO"/>
	                                    </td>
	    		                    </tr>
	    		                </tbody>
	    		            </table>
	    		        </div><!--//section-->
	    		        <!-- END : input table section -->
	
						<!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
								<li id="btnMoveList"><a href="javascript:fn_MoveToList();" class="btnimg03">목록</a></li>
	    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
	    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
	    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
	    		            </ul>
	    		        </div><!--//section-->
	    		    </div><!--//pixbox-->   
	    		    <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
						<input type="hidden" class="inputType" id="sSEARCH_PARAM" name="sSEARCH_PARAM"/>
					</div> 		    
    		    </form>
    		</div><!--//cont-->
		</div><!--//content-->
    </div><!--//container-->
</div><!--//wrap-->
<!--footer-->
<div id="footer">
	<jsp:include page="../common/layout_footer.jsp" flush="true" />
</div><!--//footer-->
</body>
</html>