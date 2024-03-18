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
<script type="text/javascript">

function fn_Init() {
	$("#container input[type=text], #container select, #container textarea").val("");

	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");
	$("#sTEST_STAGE").val("<%=(String) session.getAttribute("sTEST_STAGE")%>");

	fn_InitLoad();
};

function fn_InitLoad() {
	fn_InitGrid();
};

function fn_InitGrid() {
	var caption = "TASK ID^테스트시나리오ID^테스트시나리오 명^테스트기간^테스트기간^등록자^등록자ID^TASKID^SEG_ID^SEG_SUB_ID|TASK ID^테스트시나리오ID^테스트시나리오 명^시작일자^종료일자^등록자^등록자ID^TASKID^SEG_ID^SEG_SUB_ID";
	var colWidth = "12%,15%,33%,15%,15%,10%,10%,10%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtTestScnrInfo", "objSBGrid", caption, colWidth, "200px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						fn_SetSBGridCol("00", "output" , "sACTIVITY_ID"  , "center", null, false),
						fn_SetSBGridCol("01", "output" , "sTEST_SCN_ID"  , "center", null, false),
						fn_SetSBGridCol("02", "output" , "sTEST_SCN_NM"  , "left"  , null, false),
						fn_SetSBGridCol("03", "output" , "sTEST_STRT_DT" , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("04", "output" , "sTEST_END_DT"  , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("05", "output" , "sREG_USER_NM"  , "center", null, false),
						fn_SetSBGridCol("06", "output" , "sREG_USER_ID"  , "center", null, true),
						fn_SetSBGridCol("07", "output" , "sTASK_ID"      , "center", null, true),
						fn_SetSBGridCol("08", "output" , "sSEG_ID"       , "center", null, true),
						fn_SetSBGridCol("09", "output" , "sSEG_SUB_ID"   , "center", null, true)
	                ];

	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");

	caption = "테스트케이스 ID^테스트케이스 명^테스트담당자^테스트담당자^테스트케이스 설명^입력데이터^예상결과^테스트담당자ID";
	colWidth = "12%,20%,10%,3%,30%,25%,20%,10%";
	
	objGridInitInfoDetail = fn_InitSBGrid("prjtTestScnrDetailInfo", "objSBGridDetail", caption, colWidth, "300px", "resultDataDetail", true, null);
	objSBGridDetail = createSBDataGrid(objGridInitInfoDetail);

	objColumnsInfoDetail = [
						fn_SetSBGridCol("00", "input" , "sTEST_CASE_ID"    , "center", null, false),
						fn_SetSBGridCol("01", "input" , "sTEST_CASE_NM"    , "left"  , null, false),
						fn_SetSBGridCol("02", "input" , "sTEST_USER_NM"    , "center", null, false),
						fn_SetSBGridCol("03", "imageS", ""                 , "center", null, false),
						fn_SetSBGridCol("04", "input" , "sTEST_CASE_DESC"  , "left"  , null, false),
						fn_SetSBGridCol("05", "input" , "sTEST_INPUT_DATA" , "left"  , null, false),
						fn_SetSBGridCol("06", "input" , "sTEST_RSLT"       , "left"  , null, false),
						fn_SetSBGridCol("07", "input" , "sTEST_USER_ID"    , "center", null, true),
						fn_SetSBGridCol("08", "input" , "sTEST_SCN_ID"     , "center", null, true)
	                ];

	objSBGridDetail.createColumns(objColumnsInfoDetail);
	objSBGridDetail.addEventListener("onclick", "fn_SelectListInfoDetail", "","");

	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "TS010201.jsp";
};

function fn_Init_Data() {
	$("#section input[type=text]:not([id=sTEST_SCN_ID]), #section select, #section textarea").val("");
	fn_SelectInitID();
	fn_File_Clear();
};

function fn_File_Clear() {
	$("#fileSection input[type=text], #fileSection select, #fileSection textarea").val("");
	
	if (brswType == 1) {
		document.getElementById("uploadFile").select();
		document.selection.clear();
	} else {
		$("#uploadFile").val("");
	}
};

function fn_SelectInitID() {
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTEST_SCN_ID : $("#sTEST_SCN_ID").val()
	};

	fn_AjaxSend(sendData, "TS010202", fn_SetDataSelectInitID, null);
};

function fn_SetDataSelectInitID(result) {
	var prjtTestDetailInfo = result.prjtTestDetailInfo;
	$("#sTEST_CASE_ID").val(prjtTestDetailInfo.sTEST_CASE_ID);
};

function fn_SelectPrjtInfo() {

	fn_Init_Data();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sTEST_STAGE").val()
	};

	fn_AjaxSend(sendData, "TS010211", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.prjtTestScnrInfo;
    objSBGrid.rebuild();
};

function fn_SelectPrjtInfoDetail() {
	
	fn_Init_Data();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sTEST_STAGE").val(),
		sTEST_SCN_ID : $("#sTEST_SCN_ID").val()
	};

	fn_AjaxSend(sendData, "TS010212", fn_SetDataSelectPrjtInfoDetail, null);
};

function fn_SetDataSelectPrjtInfoDetail(result) {
	resultDataDetail = result.prjtTestDetailInfo;
    objSBGridDetail.rebuild();
};

function fn_InsertPrjt() {

	if($("#sTEST_SCN_ID").val() == ""){
		alert(SELECT_TEST_SCN_ID);
		return;
	} else if($("#sTEST_CASE_ID").val() == "" ){
		alert(INSERT_TEST_CASE_ID);
		return;
	}

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTEST_SCN_ID : $("#sTEST_SCN_ID").val(),
		sTEST_CASE_ID : $("#sTEST_CASE_ID").val(),
		sTEST_CASE_NM : $("#sTEST_CASE_NM").val(),
		sTEST_CASE_DESC : $("#sTEST_CASE_DESC").val(),
		sTEST_INPUT_DATA : $("#sTEST_INPUT_DATA").val(),
		sTEST_RSLT : $("#sTEST_RSLT").val(),
		sTEST_USER_ID : $("#sTEST_USER_ID").val()
	};

	fn_AjaxSend(sendData, "TS010221", fn_SelectPrjtInfoDetail, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTEST_SCN_ID : $("#sTEST_SCN_ID").val()
	};
	
	fn_AjaxSend(sendData, "TS010241", fn_SelectPrjtInfoDetail, PMS_PROC_DELETE);
};

function fn_ModifyPrjt() {

	if($("#sTEST_SCN_ID").val() == ""){
		alert(SELECT_TEST_SCN_ID);
		return;
	}

	var arrMap = new Map();
	var arrlist = new Array(objSBGridDetail.rows - 1);

	arrMap.put("sPRJT_ID"	  , $("#searchPrjtID").val());
	arrMap.put("sTEST_SCN_ID" , $("#sTEST_SCN_ID").val());

	for (var i=1; i<objSBGridDetail.rows; i++) {

		var taskMap = new Map();

		taskMap.put("sTEST_CASE_ID"    , objSBGridDetail.getTextMatrix(i,0));
		taskMap.put("sTEST_CASE_NM"    , objSBGridDetail.getTextMatrix(i,1));
		taskMap.put("sTEST_CASE_DESC"  , objSBGridDetail.getTextMatrix(i,4));
		taskMap.put("sTEST_INPUT_DATA" , objSBGridDetail.getTextMatrix(i,5));
		taskMap.put("sTEST_RSLT"       , objSBGridDetail.getTextMatrix(i,6));
		taskMap.put("sTEST_USER_ID"    , objSBGridDetail.getTextMatrix(i,7));
		taskMap.put("sTEST_USER_NM"    , objSBGridDetail.getTextMatrix(i,2));

		arrlist[i-1] = taskMap;
	}

	arrMap.putMapList("sTEST_DETAIL", arrlist);
		
	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "TS010222", fn_SelectPrjtInfoDetail, PMS_PROC_INSERT);
};

function fn_SelectListInfo() {

	var nClickedRow = objSBGrid.getRow();
	
	if (nClickedRow <= 0 )
		return;
	
	fn_Init_Data();

	$("#sTEST_SCN_ID").val(objSBGrid.getTextMatrix(nClickedRow,1));
	$("#sTEST_STRT_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRow,3), "."));
	$("#sTEST_END_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRow,4), "."));

	fn_SelectInitID();
	fn_SelectPrjtInfoDetail();
};

function fn_SelectListInfoDetail() {

	var nClickedRow = objSBGridDetail.getRow();
	var nClickedCol = objSBGridDetail.getCol();
	
	if (nClickedRow <= 0 )
		return;
	
	$("#sTEST_CASE_ID").val(objSBGridDetail.getTextMatrix(nClickedRow,0));
	$("#sTEST_CASE_NM").val(objSBGridDetail.getTextMatrix(nClickedRow,1));
	$("#sTEST_CASE_DESC").val(objSBGridDetail.getTextMatrix(nClickedRow,4));
	$("#sTEST_INPUT_DATA").val(objSBGridDetail.getTextMatrix(nClickedRow,5));
	$("#sTEST_RSLT").val(objSBGridDetail.getTextMatrix(nClickedRow,6));
	$("#sTEST_USER_ID").val(objSBGridDetail.getTextMatrix(nClickedRow,7));
	$("#sTEST_USER_NM").val(objSBGridDetail.getTextMatrix(nClickedRow,2));
	
	if (nClickedCol==3) {
		var popupUrl = "PU010112.jsp?nSelRow="+nClickedRow+"&TS010201=sTEST_USER_ID_GRID";
		window.open(popupUrl,"",popupStyle);
	}
};

function fn_InsertPrjtFile() {
	
	if ($("#sFILE_NM").val() == "") {
		alert(SELECT_MODIFY_FILE);
		return;
	}
	
	fn_InsertUploadFile("TS0102", fn_ExcelDataLoad);
};

function fn_ExcelDataLoad() {
	var sendData = {
		sFILE_NM : fn_GetFileName($("#sFILE_NM").val())
	};
	
	fn_AjaxSend(sendData, "TS010253", fn_SetDataExcelDataLoad, null);
};

function fn_SetDataExcelDataLoad(result) {
	resultDataDetail = result.prjtTestDetailInfo;
	objSBGridDetail.rebuild();
};

function fn_FileDownload() {
	var downloadFile= "uni_pms_integration_test.xls";
	fn_DownloadFile("TS0102", downloadFile);
};

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
};

function fn_SearchUser(args) {
	var popUpUrl = "PU010112.jsp?TS010201="+args; 
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
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
	    		    <div class="fixbox">
						<!-- START : title -->
	    		        <h2>[TS01] 통합테스트 시나리오 테스트케이스 등록</h2>
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
	    		        <div class="section">
	                        <ul class="btnbox right">
	                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
	                     	</ul>
	                    </div>
	                    <!-- START : grid section -->
		    		    <div class="section">
		    		        <div id="prjtTestScnrInfo">
							</div>
		    		    </div>
		    		    <br/>
		    		    <!-- END : grid section -->
		    		    <!-- START : input table section -->
	    		        <div id="section" class="section">
	    		        	<h3>테스트케이스</h3>
	    		            <table class="table01" border="0" cellspacing="0" summary="">
	    		                <tbody>
	    		                    <tr>
	    		                        <th class="w150"><pk>*</pk> 테스트시나리오 ID</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" name="sTEST_SCN_ID" id="sTEST_SCN_ID" />
	    		                        </td>
	    		                        <th class="w150"><pk>*</pk> 테스트케이스 ID</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" name="sTEST_CASE_ID" id="sTEST_CASE_ID" />
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">테스트케이스 명</th>
	    		                        <td colspan="3">
	    		                        	<input type="text" class="txtinp wp99" name="sTEST_CASE_NM" id="sTEST_CASE_NM"/>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">테스트케이스 설명</th>
	    		                        <td colspan="3">
	    		                        	<textarea class="txtinp wp99" cols="100" rows="5" name="sTEST_CASE_DESC" id="sTEST_CASE_DESC" ></textarea>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">입력 데이터</th>
	    		                        <td colspan="3">
	    		                        	<textarea class="txtinp wp99" cols="100" rows="7" name="sTEST_INPUT_DATA" id="sTEST_INPUT_DATA" ></textarea>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">예상결과</th>
	    		                        <td colspan="3">
	    		                        	<textarea class="txtinp wp99" cols="100" rows="5" name="sTEST_RSLT" id="sTEST_RSLT" ></textarea>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                    	<th class="w150">테스트담당자</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" name="sTEST_USER_NM" id="sTEST_USER_NM" readOnly/>
	    		                        	<input type="hidden" class="txtinp w100" name="sTEST_USER_ID" id="sTEST_USER_ID"/>
											<a href="javascript:fn_SearchUser('sTEST_USER_ID');" class="btn01">검 색</a>
	    		                        </td>
	    		                        <th class="w150" style="display:none">테스트일자</th>
	    		                        <td style="display:none">
	    		                        	<input type="text" class="txtinp w100" name="sTEST_STRT_DT" id="sTEST_STRT_DT" readOnly/> ~ 
	    		                        	<input type="text" class="txtinp w100" name="sTEST_END_DT" id="sTEST_END_DT" readOnly/>
	    		                        </td>
	    		                    </tr>
					 			</tbody>
	    		            </table>
	    		        </div><!--//section-->
	    		        <!-- END : input table section -->

	    		        <!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
	    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
	    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
	    		            </ul>
	    		        </div><!--//section-->
	    		        <!-- START : grid section -->
		    		    <div class="section">
		    		        <div id="prjtTestScnrDetailInfo">
							</div>
		    		    </div>
		    		    <div id="fileSection" class="section">
							<table class="table01" border="0" cellspacing="0" summary="">
								<tr>
									<th>일괄등록</th>
									<td>
										<div class="inputfileMR">
											<input type="text" class="txtinp w400" id="sFILE_NM" name="sFILE_NM" readOnly/>
											<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
			    		                </div>
									</td>
									<td>
										<ul class="tase right">
											<li><a href="javascript:fn_FileDownload()" class="btn01">양식  Download</a></li>
											<li><a href="javascript:fn_InsertPrjtFile();" class="btn01">양식 Upload</a></li>
										</ul>
									</td>
								</tr> 	
							</table>      					
						</div>
		    		    <!-- END : grid section -->
		    		    <!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
	    		            </ul>
	    		        </div><!--//section-->
					</div><!--//pixbox-->
	    		    <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sTEST_STAGE" name="sTEST_STAGE"/>
					</div>
				</form>
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