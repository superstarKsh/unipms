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
	
	var sSEARCH_YN = '<%=(String) session.getAttribute("sSEARCH_YN")%>';
		
	if (sSEARCH_YN != null && sSEARCH_YN=='Y') {
		var sSEARCH_PRJT_STAGE = '<%=(String) session.getAttribute("sSEARCH_PRJT_STAGE")%>';
		var sSEARCH_TASK_ID 	= '<%=(String) session.getAttribute("sSEARCH_TASK_ID")%>';
		var sSEARCH_ISSUE_ID 	= '<%=(String) session.getAttribute("sSEARCH_ISSUE_ID")%>';

		$("#sSEARCH_YN").val(sSEARCH_YN);
		$("#sSEARCH_PRJT_STAGE").val(sSEARCH_PRJT_STAGE);
		$("#sSEARCH_TASK_ID").val(sSEARCH_TASK_ID);
		$("#sSEARCH_ISSUE_ID").val(sSEARCH_ISSUE_ID);
	}

	fn_InitLoad();
};

function fn_InitLoad() {
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "CF030182", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var issueID = result.issueID;
	$("#sISSUE_ID").val(issueID.sISSUE_ID);

	var selPrjtStage = '<option value="">선 택</option>';
	var selIssueType = '<option value="">선 택</option>';
	var selIssueImpt = '<option value="">선 택</option>';
	var selProcStage = '<option value="">선 택</option>';
			
	$.each(result.prjtStage,function(key, value) {
		selPrjtStage = selPrjtStage + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sPRJT_STAGE").empty().append(selPrjtStage);
	});
	$.each(result.issueType,function(key, value) {
		selIssueType = selIssueType + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sISSUE_TYPE").empty().append(selIssueType);
	});
	$.each(result.issueImpt,function(key, value) {
		selIssueImpt = selIssueImpt + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sISSUE_IMPT").empty().append(selIssueImpt);
    });
	$.each(result.issueProc,function(key, value) {
		selProcStage = selProcStage + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sPROC_STAGE").empty().append(selProcStage);
    });

	fn_SessionCheck();
};

function fn_SessionCheck() {
	
	if ($("#sSEARCH_YN").val() == 'Y') {
		$("#sSEARCH_YN").val("");
		$("#sPRJT_STAGE").val($("#sSEARCH_PRJT_STAGE").val());
		$("#sISSUE_ID").val($("#sSEARCH_ISSUE_ID").val());
				
		var content = "";
		content += "sSEARCH_YN=N";

		fn_AjaxSendSesUrl(content, "pms_session_cf0301.jsp", null, fn_ProcDataSessionCheck);
	}
};

function fn_ProcDataSessionCheck() {
	$("#sSEARCH_YN").val("");
	fn_SelectInitTask("SC");
};

function fn_Init_Clear() {
	window.location = "CF030102.jsp";
};

function fn_Init_Data() {
	$("#section input[type=text], #section select, #section textarea").val("");
	fn_File_Clear();
};

function fn_File_Clear() {
	if (brswType == 1) {
		document.getElementById("uploadFile").select();
		document.selection.clear();
	} else {
		$("#uploadFile").val("");
	}
};

function fn_SelectInitTask(args){
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sPRJT_STAGE option:selected").val()
	};

	fn_AjaxSendParam(sendData, "CF030181", fn_SetDataSelectInitTask, null, args, null, null);
};

function fn_SetDataSelectInitTask(result, args1, args2, args3) {
	var selTaksInfo = '<option value="">선 택</option>';
	$.each(result.prjTaskInfo,function(key, value) {
		selTaksInfo = selTaksInfo + '<option value="' + value.sTASK_ID + '">' + value.sTASK_NM + '</option>';
		$("#sTASK_ID").empty().append(selTaksInfo);
	});

	if (args1=="SC") {
		$("#sTASK_ID").val($("#sSEARCH_TASK_ID").val());
	    fn_SelectPrjtInfo();
	}
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sPRJT_STAGE option:selected").val(),
		sTASK_ID : $("#sTASK_ID option:selected").val(),
		sISSUE_ID : $("#sISSUE_ID").val()
	};

	fn_AjaxSend(sendData, "CF030113", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {

	var prjtIssueInfo = result.prjtIssueInfo;

	$("#sPRJT_STAGE").val(prjtIssueInfo.sPRJT_STAGE);
	$("#sTASK_ID").val(prjtIssueInfo.sTASK_ID);
	$("#sTASK_NM").val(prjtIssueInfo.sTASK_NM);
	$("#sISSUE_ID").val(prjtIssueInfo.sISSUE_ID);
	$("#sTITLE").val(prjtIssueInfo.sTITLE);
	$("#sISSUE_TYPE").val(prjtIssueInfo.sISSUE_TYPE);
	$("#sISSUE_IMPT").val(prjtIssueInfo.sISSUE_IMPT);
	$("#sREG_USER_ID").val(prjtIssueInfo.sREG_USER_ID);
	$("#sREG_USER_NM").val(prjtIssueInfo.sREG_USER_NM);
	$("#sREG_DT").val(fn_SetDateType(prjtIssueInfo.sREG_DT));
	$("#sCHRG_USER_ID").val(prjtIssueInfo.sCHRG_USER_ID);
	$("#sCHRG_USER_NM").val(prjtIssueInfo.sCHRG_USER_NM);
	$("#sAPPR_DT").val(fn_SetDateType(prjtIssueInfo.sAPPR_DT));
	$("#sCOMPL_DT").val(fn_SetDateType(prjtIssueInfo.sCOMPL_DT));
	$("#sPROC_STAGE").val(prjtIssueInfo.sPROC_STAGE);
	$("#sCONTENTS").val(prjtIssueInfo.sCONTENTS);
	$("#sISSUE_SOLTN").val(prjtIssueInfo.sISSUE_SOLTN);
	$("#sCORRT_DESC").val(prjtIssueInfo.sCORRT_DESC);
	$("#sFILE_NM").val(prjtIssueInfo.sFILE_NM);
};

function fn_InsertPrjt() {
	oEditors.getById["sCONTENTS"].exec("UPDATE_CONTENTS_FIELD", []);
	oEditors2.getById["sISSUE_SOLTN"].exec("UPDATE_CONTENTS_FIELD", []);
	oEditors3.getById["sCORRT_DESC"].exec("UPDATE_CONTENTS_FIELD", []);

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sPRJT_STAGE option:selected").val(),
		sTASK_ID : $("#sTASK_ID option:selected").val(),
		sISSUE_ID : $("#sISSUE_ID").val(),
		sTITLE : $("#sTITLE").val(),
		sISSUE_TYPE : $("#sISSUE_TYPE option:selected").val(),
		sISSUE_IMPT : $("#sISSUE_IMPT option:selected").val(),
		sREG_USER_ID : $("#sREG_USER_ID").val(),
		sREG_DT : $("#sREG_DT").val(),
		sCHRG_USER_ID : $("#sCHRG_USER_ID").val(),
		sAPPR_DT : $("#sAPPR_DT").val(),
		sCOMPL_DT : $("#sCOMPL_DT").val(),
		sPROC_STAGE : $("#sPROC_STAGE option:selected").val(),
		sCONTENTS : $("#sCONTENTS").val(),
		sISSUE_SOLTN : $("#sISSUE_SOLTN").val(),
		sCORRT_DESC : $("#sCORRT_DESC").val(),
		sFILE_NM : fn_GetFileName($("#sFILE_NM").val())
	};
	
	fn_AjaxSend(sendData, "CF030121", fn_MoveToList, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sPRJT_STAGE option:selected").val(),
		sTASK_ID : $("#sTASK_ID option:selected").val(),
		sISSUE_ID : $("#sISSUE_ID").val()
	};

	fn_AjaxSend(sendData, "CF030141", fn_MoveToList, PMS_PROC_DELETE);
};

function fn_InsertPrjtFile() {
	fn_InsertUploadFile("CF03", fn_InsertPrjt);
};

$(function() {
    $( "#sREG_DT" ).datepicker(setCalendar);
    $( "#sAPPR_DT" ).datepicker(setCalendar);
    $( "#sCOMPL_DT" ).datepicker(setCalendar);
});

function fn_MoveToList() {
	window.location = "CF030101.jsp";
};

function pasteHTML(args){
	var sHTML = '<span><img src="../editor/uploadImg/'+args+'"></span>'; 
    oEditors.getById["sCONTENTS"].exec("PASTE_HTML", [sHTML]); 
};

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
};

function fn_SearchUser(args) {
	var popUpUrl = "PU010112.jsp?CF030102="+args; 
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
			<jsp:include page="../common/layout_left_cf.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[CF03] 이슈/리스크등록</h2>
    		        <!-- END : title -->

					<!-- START : search section -->
    		        <div id="searchSection" class="section">
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
    		        <div id="section" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
								<tr>
									<th class="w100">진행단계</th>
									<td colspan="3">
										<select class="selectbox wp100" id="sPRJT_STAGE" name="sPRJT_STAGE"  onChange="javascript:fn_SelectInitTask('');">
										</select>
									</td>
								</tr>
								
								<tr>
									<th>TASK ID/명</th>
									<td colspan="3">
										<ul>
		    		                        <li><select class="selectbox wp100" id="sTASK_ID" name="sTASK_ID"></select></li>
		    		                    </ul>
									</td>
								</tr>
								<tr>
									<th><pk>*</pk> 이슈/리스크 ID</th>
									<td colspan="3">
										<input type="text" class="txtinp w100" id="sISSUE_ID" name="sISSUE_ID"/>
									</td>
								</tr>
								<tr>
									<th>구분</th>
									<td >
										<select class="selectbox" id="sISSUE_TYPE" name="sISSUE_TYPE">
										</select>
									</td>
									<th>중요도</th>
									<td >
										<select class="selectbox" id="sISSUE_IMPT" name="sISSUE_IMPT">
										</select>
									</td>
								</tr>
								<tr>
									<th>등록일자</th>
									<td >
										<input type="text" class="txtinp w100" id="sREG_DT" name="sREG_DT"/>
									</td>
									<th>등록자</th>
									<td >
										<input type="text" class="txtinp w100" id="sREG_USER_NM" name="sREG_USER_NM" readOnly/>
										<input type="hidden" id="sREG_USER_ID" name="sREG_USER_ID"/>
										<a href="javascript:fn_SearchUser('sREG_USER_ID');" class="btn01">검 색</a>
									</td>
								</tr>
								<tr>
									<th>조치예정일자</th>
									<td >
										<input type="text" class="txtinp w100" id="sAPPR_DT" name="sAPPR_DT"/>
									</td>
									<th>담당자</th>
									<td >
										<input type="text" class="txtinp w100" id="sCHRG_USER_NM" name="sCHRG_USER_NM" readOnly/>
										<input type="hidden" id="sCHRG_USER_ID" name="sCHRG_USER_ID"/>
										<a href="javascript:fn_SearchUser('sCHRG_USER_ID');" class="btn01">검 색</a>
									</td>
								</tr>
								<tr>
									<th>진행상태</th>
									<td >
										<select class="selectbox" id="sPROC_STAGE" name="sPROC_STAGE">
										</select>
									</td>
									<th>조치완료일자</th>
									<td >
										<input type="text" class="txtinp w100" id="sCOMPL_DT" name="sCOMPL_DT"/>
									</td>
								</tr>
								<tr>
									<th>제목</th>
									<td colspan="3">
										<input type="text" class="txtinp w700" id="sTITLE" name="sTITLE"/>
									</td>
								</tr>
								<tr>
									<th>내용</th>
									<td colspan="3">
										<textarea id="sCONTENTS" class="txtinp w700" cols="100" rows="5"  name="sCONTENTS" style="height:300px" ></textarea>
										<script type="text/javascript">
												var oEditors = [];
												nhn.husky.EZCreator.createInIFrame({
												oAppRef: oEditors,
												elPlaceHolder: "sCONTENTS",
												sSkinURI: "../editor/SmartEditor3Skin.html",
												fCreator: "createSEditor2",
												htParams: {fOnBeforeUnload : function(){}}
												});
										</script>
									</td>	
								</tr>
								<tr>
									<th>해결방안</th>
									<td colspan="3">
										<textarea id="sISSUE_SOLTN" class="txtinp w700" cols="100" rows="5"  name="sISSUE_SOLTN" style="height:300px" ></textarea>
										<script type="text/javascript">
												var oEditors2 = [];
												nhn.husky.EZCreator.createInIFrame({
												oAppRef: oEditors2,
												elPlaceHolder: "sISSUE_SOLTN",
												sSkinURI: "../editor/SmartEditor3Skin.html",
												fCreator: "createSEditor2",
												htParams: {fOnBeforeUnload : function(){}}
												});
										</script>
									</td>
								</tr>
								<tr>
									<th>조치내용</th>
									<td colspan="3">
										<textarea id="sCORRT_DESC" class="txtinp w700" cols="100" rows="5"  name="sCORRT_DESC" style="height:300px;" ></textarea>
										<script type="text/javascript">
												var oEditors3 = [];
												nhn.husky.EZCreator.createInIFrame({
												oAppRef: oEditors3,
												elPlaceHolder: "sCORRT_DESC",
												sSkinURI: "../editor/SmartEditor3Skin.html",
												fCreator: "createSEditor2",
												htParams: {fOnBeforeUnload : function(){}}
												});
										</script>
									</td>
								</tr>
								<tr>
									<th>첨부파일</th>
									<td colspan="3">
										<div class="inputfile">
											<input type="text" class="txtinp w590" id="sFILE_NM" name="sFILE_NM" readOnly/>
											<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
										</div>
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
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        
				</div><!--//pixbox-->
    		    <div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
					<input type="hidden" class="inputType" id="sSEARCH_PRJT_STAGE" name="sSEARCH_PRJT_STAGE"/>
					<input type="hidden" class="inputType" id="sSEARCH_TASK_ID" name="sSEARCH_TASK_ID"/>
					<input type="hidden" class="inputType" id="sSEARCH_ISSUE_ID" name="sSEARCH_ISSUE_ID"/>
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