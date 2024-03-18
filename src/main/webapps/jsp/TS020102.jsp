<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="../editor/js/HuskyEZCreator.js"></script>
<script type="text/javascript">

function fn_Init() {
	$("#container input[type=text], #container select, #container textarea").val("");

	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");
	$("#sTEST_STAGE").val("<%=(String) session.getAttribute("sTEST_STAGE")%>");
	$("#sUSER_ID").val("<%=(String) session.getAttribute("sUSER_ID")%>");

	var sSEARCH_YN = '<%=(String) session.getAttribute("sSEARCH_YN")%>';

	if (sSEARCH_YN != null && sSEARCH_YN=='Y') {
		$("#sSEARCH_YN").val(sSEARCH_YN);
		$("#sSEARCH_TEST_ID").val("<%=(String) session.getAttribute("sSEARCH_TEST_ID")%>");
		$("#sHISTORY_BACK").val("<%=(String) session.getAttribute("sHISTORY_BACK")%>");
	}

	fn_InitLoad();
};

function fn_InitLoad() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "TS020101", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var selTestSvrt = '<option value="">선 택</option>';
	var selTestConfrm = '<option value="">선 택</option>';
		  	
	$.each(result.prjtTestSvrt,function(key, value) {
		selTestSvrt = selTestSvrt + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sTEST_SVRT").empty().append(selTestSvrt);
	});
			
	$.each(yesNo_YN,function(key, value) {
		selTestConfrm = selTestConfrm + '<option value="' + value.value + '">' + value.label + '</option>';
		$("#sTEST_CONFRM").empty().append(selTestConfrm);
	});

	if ($("#sSEARCH_YN").val() == "Y") {
		$("#sTEST_ID").val($("#sSEARCH_TEST_ID").val());
	} else {
		fn_SelectInitID();
	}

	fn_SessionCheck();
};

function fn_Init_Clear() {
	var historyBack = $("#sHISTORY_BACK").val();
	if (historyBack == "")
		window.location = "TS020102.jsp";
	else
		window.location = historyBack + ".jsp";
};

function fn_SessionCheck() {
	if ($("#sSEARCH_YN").val() == 'Y') {
		$("#sSEARCH_YN").val("");
		
		var content = "";
		content += "sSEARCH_YN=N";

		fn_AjaxSendSesUrl(content, "pms_session_ts0201.jsp", null, fn_SelectPrjtInfo);
	} else {
		fn_SelectInitTask("00", "", "");
	}
};

function fn_SelectInitID() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sTEST_STAGE").val()
	};
	
	fn_AjaxSend(sendData, "TS020102", fn_SetDataSelectInitID, null);
};

function fn_SetDataSelectInitID(result) {
	var prjtTestInfo = result.prjtTestInfo;
	$("#sTEST_ID").val(prjtTestInfo.sTEST_ID);
};

function fn_SelectInitTask(taskId, segId, segSubId){
	$("#sTASK_ID").empty();
	$("#sSEG_ID").empty();
	$("#sSEG_SUB_ID").empty();
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sTEST_STAGE").val()
	};

	fn_AjaxSendParam(sendData, "TS020181", fn_SetDataSelectInitTask, null, taskId, segId, segSubId);
};

function fn_SetDataSelectInitTask(result, taskId, segId, segSubId) {
	var selTaskInfo = '<option value="">선 택</option>';
	$.each(result.prjTaskInfo,function(key, value) {
		selTaskInfo = selTaskInfo + '<option value="' + value.sTASK_ID + '">' + value.sTASK_NM + '</option>';
		$("#sTASK_ID").empty().append(selTaskInfo);
	});
			
	if (taskId == "00") {
	} else {
		$("#sTASK_ID").val(taskId);
		fn_SelectInitSegment(taskId, segId, segSubId);
	}
};

function fn_SelectInitSegment(taskId, segId, segSubId){
	$("#sSEG_ID").empty();
	$("#sSEG_SUB_ID").empty();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sTEST_STAGE").val(),
		sTASK_ID : $("#sTASK_ID option:selected").val()
	};

	fn_AjaxSendParam(sendData, "TS020182", fn_SetDataSelectInitSegment, null, taskId, segId, segSubId);
};

function fn_SetDataSelectInitSegment(result, taskId, segId, segSubId) {
	var selSegInfo = '<option value="">선 택</option>';
	$.each(result.prjSegInfo,function(key, value) {
		selSegInfo = selSegInfo + '<option value="' + value.sSEG_ID + '">' + value.sSEG_NM + '</option>';
		$("#sSEG_ID").empty().append(selSegInfo);
	});
			
	if (taskId == "00") {
	} else {
		$("#sSEG_ID").val(segId);
		fn_SelectInitSegmentSub(taskId, segId, segSubId);
	}
};

function fn_SelectInitSegmentSub(taskId, segId, segSubId){
	$("#sSEG_SUB_ID").empty();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sTEST_STAGE").val(),
		sTASK_ID : $("#sTASK_ID option:selected").val(),
		sSEG_ID : $("#sSEG_ID option:selected").val()
	};

	fn_AjaxSendParam(sendData, "TS020183", fn_SetDataSelectInitSegmentSub, null, taskId, segId, segSubId);
};

function fn_SetDataSelectInitSegmentSub(result, taskId, segId, segSubId) {
	var selSegSubInfo = '<option value="">선 택</option>';
	$.each(result.prjSegSubInfo,function(key, value) {
		selSegSubInfo = selSegSubInfo + '<option value="' + value.sSEG_SUB_ID + '">' + value.sSEG_SUB_NM + '</option>';
		$("#sSEG_SUB_ID").empty().append(selSegSubInfo);
	});
			
	if (taskId == "00") {
	} else {
		$("#sSEG_SUB_ID").val(segSubId);
	}
};

function fn_SelectPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTEST_ID : $("#sTEST_ID").val()
	};

	fn_AjaxSend(sendData, "TS020113", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	if (result.prjtTestInfo != null && result.prjtTestInfo != 'undefined') {
		var prjtTestInfo = result.prjtTestInfo;
		
		if (prjtTestInfo.sTEST_DT != null && $("#sUSER_ID").val() != prjtTestInfo.sTEST_USER_ID) {
			document.getElementById("tTEST_ID").innerHTML = fn_GetInputInnerHtml("sTEST_ID", null);
			document.getElementById("tTEST_DT").innerHTML = fn_GetInputInnerHtml("sTEST_DT", null);
			document.getElementById("tTEST_USER_ID").innerHTML = fn_GetInputInnerHtml("sTEST_USER_NM", "sTEST_USER_ID");
			document.getElementById("tTEST_CONFRM").innerHTML = fn_GetInputInnerHtml("sTEST_CONFRM", null);
			document.getElementById("tTEST_SVRT").innerHTML = fn_GetInputInnerHtml("sTEST_SVRT_NM", "sTEST_SVRT");
			document.getElementById("tTEST_TITLE").innerHTML = fn_GetInputInnerHtml("sTEST_TITLE", null);
			document.getElementById("tTEST_DESC").innerHTML = fn_GetInnerHtml("sTEST_DESC", prjtTestInfo.sTEST_DESC);
			document.getElementById("tTASK_ID").innerHTML = fn_GetInputInnerHtml("sTASK_NM", "sTASK_ID");
			document.getElementById("tSEG_ID").innerHTML = fn_GetInputInnerHtml("sSEG_NM", "sSEG_ID");
			document.getElementById("tSEG_SUB_ID").innerHTML = fn_GetInputInnerHtml("sSEG_SUB_NM", "sSEG_SUB_ID");
		}

		$("#sTEST_ID").val(prjtTestInfo.sTEST_ID);
		$("#sTEST_DT").val(fn_SetDateType(prjtTestInfo.sTEST_DT));
		$("#sTEST_USER_ID").val(prjtTestInfo.sTEST_USER_ID);
		$("#sTEST_USER_NM").val(prjtTestInfo.sTEST_USER_NM);
		$("#sTEST_CONFRM").val(prjtTestInfo.sTEST_CONFRM);
		$("#sTEST_SVRT").val(prjtTestInfo.sTEST_SVRT);
		$("#sTEST_SVRT_NM").val(prjtTestInfo.sTEST_SVRT_NM);
		$("#sTEST_TITLE").val(prjtTestInfo.sTEST_TITLE);
		$("#sTEST_DESC").val(prjtTestInfo.sTEST_DESC);

		if (prjtTestInfo.sDEV_USER_ID != "" && prjtTestInfo.sDEV_USER_ID != "" && $("#sUSER_ID").val() != prjtTestInfo.sDEV_USER_ID) {
			document.getElementById("tDEV_USER_ID").innerHTML = fn_GetInputInnerHtml("sDEV_USER_NM", "sDEV_USER_ID");
			document.getElementById("tCORRT_SCHD_DT").innerHTML = fn_GetInputInnerHtml("sCORRT_SCHD_DT", null);
			document.getElementById("tCORRT_DT").innerHTML = fn_GetInputInnerHtml("sCORRT_DT", null);
			document.getElementById("tCORRT_DESC").innerHTML = fn_GetInputInnerHtml("sCORRT_DESC", null);
			document.getElementById("tCORRT_DESC").innerHTML = fn_GetInnerHtml("sCORRT_DESC", prjtTestInfo.sCORRT_DESC);
		}

		$("#sDEV_USER_ID").val(prjtTestInfo.sDEV_USER_ID);
		$("#sDEV_USER_NM").val(prjtTestInfo.sDEV_USER_NM);
		$("#sCORRT_SCHD_DT").val(fn_SetDateType(prjtTestInfo.sCORRT_SCHD_DT));
		$("#sCORRT_DT").val(fn_SetDateType(prjtTestInfo.sCORRT_DT));
		$("#sCORRT_DESC").val(prjtTestInfo.sCORRT_DESC);
				
		var taskId = prjtTestInfo.sTASK_ID;
		var segId = prjtTestInfo.sSEG_ID;
		var segSubId = prjtTestInfo.sSEG_SUB_ID;

		if (prjtTestInfo.sTEST_DT != null && prjtTestInfo.sTEST_USER_ID != "" && $("#sUSER_ID").val() != prjtTestInfo.sTEST_USER_ID) {
			$("#sTASK_ID").val(prjtTestInfo.sTASK_ID);
			$("#sTASK_NM").val("[" + prjtTestInfo.sTASK_ID + "] " + prjtTestInfo.sTASK_NM);
			if (prjtTestInfo.sSEG_ID != "00") {
				$("#sSEG_ID").val(prjtTestInfo.sSEG_ID);
				$("#sSEG_NM").val("[" + prjtTestInfo.sSEG_ID + "] " + prjtTestInfo.sSEG_NM);
			}
			if (prjtTestInfo.sSEG_SUB_ID != "00") {
				$("#sSEG_SUB_ID").val(prjtTestInfo.sSEG_SUB_ID);
				$("#sSEG_SUB_NM").val("[" + prjtTestInfo.sSEG_SUB_ID + "] " + prjtTestInfo.sSEG_SUB_NM);
			}
		} else {
			fn_SelectInitTask(taskId, segId, segSubId);
		}
		
		if (prjtTestInfo.sDEV_USER_ID != null && $("#sUSER_ID").val() != prjtTestInfo.sDEV_USER_ID && 
			prjtTestInfo.sTEST_USER_ID != null && $("#sUSER_ID").val() != prjtTestInfo.sTEST_USER_ID) {
			document.getElementById("btnInitClear").setAttribute("style", "display:none");
			document.getElementById("btnModifyPrjt").setAttribute("style", "display:none");
			document.getElementById("btnDeletePrjt").setAttribute("style", "display:none");
		}
	}
};

function fn_ModifyPrjt() {
	try {
		oEditors.getById["sTEST_DESC"].exec("UPDATE_CONTENTS_FIELD", []);
	} catch (exception) {	
	}
	try {
		oEditors.getById["sCORRT_DESC"].exec("UPDATE_CONTENTS_FIELD", []);
	} catch (exception) {	
	}

	var taskId = $("#sTASK_ID option:selected").val();
	
	if (taskId == undefined)
		taskId = $("#sTASK_ID").val();
	
	var segId = $("#sSEG_ID option:selected").val();
	if (segId == "" || segId == null)
		segId = "00";
	else if (segId == undefined)
		segId = $("#sSEG_ID").val();
	
	var segSubId = $("#sSEG_SUB_ID option:selected").val();
	if (segSubId == "" || segSubId == null)
		segSubId = "00";
	else if (segSubId == undefined)
		segSubId = $("#sSEG_SUB_ID").val();
	
	var testConfrm = $("#sTEST_CONFRM option:selected").val();
	if (testConfrm == undefined)
		testConfrm = $("#sTEST_CONFRM").val();
	
	var testSvrt = $("#sTEST_SVRT option:selected").val();
	if (testSvrt == undefined)
		testSvrt = $("#sTEST_SVRT").val();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTEST_ID : $("#sTEST_ID").val(),
		sTASK_ID : taskId,
		sSEG_ID : segId,
		sSEG_SUB_ID : segSubId,
		sTEST_DT : $("#sTEST_DT").val(),
		sTEST_USER_ID : $("#sTEST_USER_ID").val(),
		sTEST_CONFRM : testConfrm,
		sTEST_SVRT : testSvrt,
		sTEST_TITLE : $("#sTEST_TITLE").val(),
		sTEST_DESC : $("#sTEST_DESC").val(),
		sTEST_IMG_URL : $("#sTEST_IMG_URL").val(),
		sDEV_USER_ID : $("#sDEV_USER_ID").val(),
		sCORRT_SCHD_DT : $("#sCORRT_SCHD_DT").val(),
		sCORRT_DT : $("#sCORRT_DT").val(),
		sCORRT_DESC : $("#sCORRT_DESC").val()
	};

	fn_AjaxSend(sendData, "TS020121", fn_Init_Clear, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTEST_ID : $("#sTEST_ID").val()
	};

	fn_AjaxSend(sendData, "TS020141", fn_Init_Clear, PMS_PROC_DELETE);
};

$(function() {
    $( "#sTEST_DT" ).datepicker(setCalendar);
});

function fn_MoveToList() {
	window.location = "TS020101.jsp";
};

function pasteHTML(args){
	var sHTML = '<span><img src="../editor/uploadImg/'+args+'"></span>'; 
    oEditors.getById["sTEST_DESC"].exec("PASTE_HTML", [sHTML]); 
};

$(function() {
	$( "#sCORRT_SCHD_DT" ).datepicker(setCalendar);
	$( "#sCORRT_DT" ).datepicker(setCalendar);
});

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
};

function fn_SearchUser(args) {
	var popUpUrl = "PU010112.jsp?TS020102="+args; 
	window.open(popUpUrl,"",popupStyle);
};

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div id="wrap">
	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header.jsp" flush="true" />
	</div>
	<!-- END : include -->
	<div id="container">
		<div id="leftWrap">
			<jsp:include page="../common/layout_left_ts.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[TS02] 건별테스트결과등록</h2>
    		        <!-- END : title -->
					<!-- START : search section -->
    		        <div class="section">
    		            <div class="search">
    		                <div class="box">
    		                    <ul>
    		                        <li class="name"><span>프로젝트ID</span></li>
    		                        <li><input type="text" class="txtinp w100" id="searchPrjtID" name="searchPrjtID" readOnly/></li>
    		                        <li><input type="text" class="txtinp w300" id="searchPrjtNM"  name="searchPrjtNM" readOnly/></li>
    		                        <li><a href="javascript:fn_SearchPrjtInfo();" class="btn01">검색</a></li>
    		                    </ul>
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        <!-- END : search section -->
    		        <div class="section">
	                    <ul class="btnbox right">
	                       	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
	                   	</ul>
	                </div>
    		        <!-- START : input table section -->
    		        <div id="testSection" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100"><pk>*</pk> 테스트 ID</th>
    		                        <td id="tTEST_ID" colspan="3">
    		                        	<input type="text" class="txtinp w100" id="sTEST_ID" name="sTEST_ID"/>
    		                        </td>
								</tr>
    		                    <tr>
	    		                <th class="w100">TASK ID</th>
	    		                <td id="tTASK_ID" colspan="3">
	    		                    <select class="selectbox wp99" name="selectbox" id="sTASK_ID" name="sTASK_ID" onChange="javascript:fn_SelectInitSegment('00', '', '');">
									</select>
	    		                </td>
	    		                </tr>
	    		                <tr>
	    		                    <th class="w100">SEG ID</th>
	    		                    <td id="tSEG_ID" colspan="3">
	    		                        <select class="selectbox wp99" name="selectbox" id="sSEG_ID" name="sSEG_ID" onChange="javascript:fn_SelectInitSegmentSub('00', '', '');">
										</select>
	    		                    </td>
	    		                </tr>
	    		                <tr id="selsSEG_SUB_ID">
	    		                    <th class="w100">SEG SUB ID</th>
	    		                    <td id="tSEG_SUB_ID" colspan="3">
	    		                        <select class="selectbox wp99" name="selectbox" id="sSEG_SUB_ID" name="sSEG_SUB_ID">
										</select>
	    		                    </td>
	    		                </tr>
    		                    <tr>
    		                        <th class="w100">테스트일자</th>
    		                        <td id="tTEST_DT">
    		                        	<input type="text" class="txtinp w100" id="sTEST_DT" name="sTEST_DT"/>
    		                        </td>
    		                        <th class="w100">등록자</th>
    		                        <td id="tTEST_USER_ID">
    		                        	<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sTEST_USER_NM" name="sTEST_USER_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser('sTEST_USER_ID');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" class="txtinp w100" id="sTEST_USER_ID" name="sTEST_USER_ID"/></li>
										</ul>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w100">테스트결과</th>
    		                        <td id="tTEST_CONFRM">
    		                        	<select class="selectbox" id="sTEST_CONFRM" name="sTEST_CONFRM">
										</select>
    		                        </td>
    		                        <th class="w100">심각도</th>
    		                        <td id="tTEST_SVRT">
    		                        	<select class="selectbox" id="sTEST_SVRT" name="sTEST_SVRT">
										</select>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w100">제목</th>
    		                        <td id="tTEST_TITLE" colspan="3">
    		                        	<input type="text" class="txtinp wp99" id="sTEST_TITLE" name="sTEST_TITLE"/>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w100">내용</th>
    		                        <td id="tTEST_DESC" colspan="3">
    		                        	<textarea id="sTEST_DESC" class="txtinp wp99" cols="100" rows="5"  name="sTEST_DESC" style="height:300px; display: none;" ></textarea>
	    		                        <script type="text/javascript">
												var oEditors = [];
												nhn.husky.EZCreator.createInIFrame({
												oAppRef: oEditors,
												elPlaceHolder: "sTEST_DESC",
												sSkinURI: "../editor/SmartEditor2Skin.html",
												fCreator: "createSEditor2",
												htParams: {fOnBeforeUnload : function(){}}
												});
										</script>
    		                        </td>
								</tr>
							</tbody>
    		            </table>
    		        </div><!--//section-->
					<div id="testSection" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		            	<tbody>
    		                    <tr>
    		                        <th class="w100">담당자</th>
    		                        <td id="tDEV_USER_ID" colspan="3">
    		                        	<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sDEV_USER_NM" name="sDEV_USER_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser('sDEV_USER_ID');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" class="txtinp w100" id="sDEV_USER_ID" name="sDEV_USER_ID"/></li>
										</ul>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w100">수정예정일자</th>
    		                        <td id="tCORRT_SCHD_DT">
                                        <input type="text" class="txtinp w100" name="sCORRT_SCHD_DT" id="sCORRT_SCHD_DT"/>
                                    </td>
                                    <th class="w100">수정완료일자</th>
    		                        <td id="tCORRT_DT">
    		                        	<input type="text" class="txtinp w100" name="sCORRT_DT" id="sCORRT_DT"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">담당자의견</th>
    		                        <td id="tCORRT_DESC" colspan="3">
    		                        	<textarea id="sCORRT_DESC" class="txtinp wp99" cols="100" rows="5"  name="sCORRT_DESC" style="height:300px; display: none;"></textarea>
	    		                        <script type="text/javascript">
		    		                        var oEditors2 = [];
		    								nhn.husky.EZCreator.createInIFrame({
		    								oAppRef: oEditors,
		    								elPlaceHolder: "sCORRT_DESC",
		    								sSkinURI: "../editor/SmartEditor3Skin.html",
		    								fCreator: "createSEditor2",
		    								htParams: {fOnBeforeUnload : function(){}}
		    								});
										</script>
    		                        </td>
								</tr>
							</tbody>
    		            </table>
    		        </div><!--//section-->
    		        <!-- END : input table section -->
    		        <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_MoveToList();" class="btnimg03">목록</a></li>
    		                <li id="btnInitClear"><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
    		                <li id="btnModifyPrjt"><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
    		                <li id="btnDeletePrjt"><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
				</div><!--//pixbox-->
    		   	<div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sTEST_STAGE" name="sTEST_STAGE"/>
					<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
					<input type="hidden" class="inputType" id="sSEARCH_TEST_ID" name="sSEARCH_TEST_ID"/>
					<input type="hidden" class="inputType" id="sHISTORY_BACK" name="sHISTORY_BACK"/>
					<input type="hidden" class="inputType" id="sUSER_ID" name="sUSER_ID"/>
				</div>
    		</div><!--//cont-->
		</div><!--//content-->
    </div><!--//container-->
	<div>
		<iframe id="dnjsp" name="dnjsp" frameborder="0" width="0" height="0"></iframe>
	</div>
</div><!--//wrap-->
<!--footer-->
<div id="footer">
	<jsp:include page="../common/layout_footer.jsp" flush="true" />
</div><!--//footer-->
</body>
</html>