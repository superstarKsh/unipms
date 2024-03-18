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
	$("#sDEV_STAGE").val("<%=(String) session.getAttribute("sDEV_STAGE")%>");

	fn_InitLoad();
};

function fn_InitLoad() {

	$('input:radio[name=searchDevCmpl]:input[value=0]').prop("checked", true);

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sDEV_STAGE").val()
	};

	fn_AjaxSend(sendData, "DV040101", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var selPgmType = '<option value="">선 택</option>';
	$.each(result.prjPgmType,function(key, value) {
		selPgmType = selPgmType + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#searchPrgmType").empty().append(selPgmType);
	});

	fn_InitGrid();
	fn_SelectInitTask();
};
	
function fn_InitGrid() {
	var caption = "TASK ID^프로그램 ID^프로그램 명^프로그램 종류^구분^중요도^개발일정^개발일정^개발일정^개발일정^선행프로그램^후행프로그램^단위테스트^단위테스트^단위테스트^단위테스트^담당자^PM확인^고객확인^구분ID^중요도ID^담당자ID^진행율(%)^TASK ID^SEG ID^SUB SEG ID|TASK ID^프로그램 ID^프로그램 명^프로그램 종류^구분^중요도^계획시작일자^계획종료일자^시작일자^종료일자^선행프로그램^후행프로그램^계획시작일자^계획종료일자^시작일자^종료일자^담당자^PM확인^고객확인^구분ID^중요도ID^담당자ID^진행율(%)^TASK ID^SEG ID^SUB SEG ID";
	var colWidth = "10%,10%,15%,10%,10%,10%,10%,10%,12%,12%,12%,12%,12%,12%,12%,12%,12%,12%,12%,12%,10%,8%,8%,10%,10%,10%,8%";
	
	objGridInitInfo = fn_InitSBGrid("prjtDevInfo", "objSBGrid", caption, colWidth, "400px", "resultData", true, 3);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						fn_SetSBGridCol("00", "output"    , "sACTIVITY_ID"        , "center", null, false),
						fn_SetSBGridCol("01", "output"    , "sPRG_ID"             , "center", null, false),
						fn_SetSBGridCol("02", "output"    , "sPRG_NM"             , "left"  , null, false),
						fn_SetSBGridCol("03", "output"    , "sPRG_EXTN"           , "center", null, false),
						fn_SetSBGridCol("04", "output"    , "sPRG_TYPE_NM"        , "center", null, false),
						fn_SetSBGridCol("05", "output"    , "sIMP_RT_NM"          , "center", null, false),
						fn_SetSBGridCol("06", "output"    , "sPRJ_PLAN_STRT_DT"   , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("07", "output"    , "sPRJ_PLAN_END_DT"    , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("08", "inputdate" , "sPRJ_DEV_STRT_DT"    , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("09", "inputdate" , "sPRJ_DEV_END_DT"     , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("10", "output"    , "sBEFORE_PGM"         , "left"  , null, false),
						fn_SetSBGridCol("11", "output"    , "sAFTER_PGM"          , "left"  , null, false),
						fn_SetSBGridCol("12", "output"    , "sTEST_PLAN_STRT_DT"  , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("13", "output"    , "sTEST_PLAN_END_DT"   , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("14", "inputdate" , "sTEST_DEV_STRT_DT"   , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("15", "inputdate" , "sTEST_DEV_END_DT"    , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("16", "output"    , "sDEV_USER_NM"        , "center", null, false),
						fn_SetSBGridCol("17", "combo"     , "sPM_CNFM"            , "center", ["yesNo_YN", "label", "value"], false),
						fn_SetSBGridCol("18", "combo"     , "sCUS_CNFM"           , "center", ["yesNo_YN", "label", "label"], false),
						fn_SetSBGridCol("19", "output"    , "sPRG_TYPE"           , "center", null, true),
						fn_SetSBGridCol("20", "output"    , "sIMP_RT"             , "center", null, true),
						fn_SetSBGridCol("21", "output"    , "sDEV_USER_ID"        , "center", null, true),
						fn_SetSBGridCol("22", "input"     , "sPROGRESS_RT"        , "center", null, true),
						fn_SetSBGridCol("23", "output"    , "sTASK_ID"            , "center", null, true),
						fn_SetSBGridCol("24", "output"    , "sSEG_ID"             , "center", null, true),
						fn_SetSBGridCol("25", "output"    , "sSEG_SUB_ID"         , "center", null, true)
					];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onvaluechanged","fn_objSBGridStageChangeGrid","","");

	caption = "총건수^완료건수^지연건수^금주진행건수^차주진행건수^진행율(%)";
	colWidth = "20%,15%,15%,15%,15%,20%";
	
	objGridInitInfoStat = fn_InitSBGrid("prjtDevStatus", "objSBGridStat", caption, colWidth, "53px", "resultDataStat", true, null);
	objSBGridStat = createSBDataGrid(objGridInitInfoStat);

	objColumnsInfoStat = [
						fn_SetSBGridCol("00", "output"    , "sTOT_CNT"        , "center", "#,###", false),
						fn_SetSBGridCol("01", "output"    , "sCOMPLETE_CNT"   , "center", "#,###", false),
						fn_SetSBGridCol("02", "output"    , "sDELAY_CNT"      , "center", "#,###", false),
						fn_SetSBGridCol("03", "output"    , "sCUR_WEEK_CNT"   , "center", "#,###", false),
						fn_SetSBGridCol("04", "output"    , "sNEXT_WEEK_CNT"  , "center", "#,###", false),
						fn_SetSBGridCol("05", "output"    , "sPROGRESS_RT"    , "center", null, false)
	                ];

	objSBGridStat.createColumns(objColumnsInfoStat);
	
	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "DV040101.jsp";
};

function fn_SelectInitTask(){

	$("#searchTaksInfo").empty();
	$("#searchSegInfo").empty();
	$("#searchSegSubInfo").empty();
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sDEV_STAGE").val()
	};

	fn_AjaxSend(sendData, "DV040181", fn_SetDataSelectInitTask, null);
};

function fn_SetDataSelectInitTask(result) {
	var selTaskInfo = '<option value="">선 택</option>';
	$.each(result.prjTaskInfo,function(key, value) {
		selTaskInfo = selTaskInfo + '<option value="' + value.sTASK_ID + '">' + value.sTASK_NM + '</option>';
		$("#searchTaksInfo").empty().append(selTaskInfo);
	});
};

function fn_SelectInitSegment(){

	$("#searchSegInfo").empty();
	$("#searchSegSubInfo").empty();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sDEV_STAGE").val(),
		sTASK_ID : $("#searchTaksInfo option:selected").val()
	};
	
	fn_AjaxSend(sendData, "DV040182", fn_SetDataSelectInitSegment, null);
};

function fn_SetDataSelectInitSegment(result) {
	var selSegInfo = '<option value="">선 택</option>';
	$.each(result.prjSegInfo,function(key, value) {
		selSegInfo = selSegInfo + '<option value="' + value.sSEG_ID + '">' + value.sSEG_NM + '</option>';
		$("#searchSegInfo").empty().append(selSegInfo);
	});
};

function fn_SelectInitSegmentSub(){

	$("#searchSegSubInfo").empty();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sDEV_STAGE").val(),
		sTASK_ID : $("#searchTaksInfo option:selected").val(),
		sSEG_ID : $("#searchSegInfo option:selected").val()
	};
	
	fn_AjaxSend(sendData, "DV040183", fn_SetDataSelectInitSegmentSub, null);
};

function fn_SetDataSelectInitSegmentSub(result) {
	var selSegSubInfo = '<option value="">선 택</option>';
	$.each(result.prjSegSubInfo,function(key, value) {
		selSegSubInfo = selSegSubInfo + '<option value="' + value.sSEG_SUB_ID + '">' + value.sSEG_SUB_NM + '</option>';
		$("#searchSegSubInfo").empty().append(selSegSubInfo);
	});
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sDEV_STAGE").val(),
		sDEV_CMPL_TYPE : $("#searchDevCmpl:checked").val(),
		sTASK_ID : $("#searchTaksInfo option:selected").val(),
		sSEG_ID : $("#searchSegInfo option:selected").val(),
		sSEG_SUB_ID : $("#searchSegSubInfo option:selected").val(),
		sPRG_TYPE : $("#searchPrgmType option:selected").val(),
		sDEV_USER_ID : $("#searchUserID").val()
	};	

	fn_AjaxSend(sendData, "DV040111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.prjtPrgmInfo;
	resultDataStat = result.prjtPrgmStatus;

	objSBGrid.rebuild();
    objSBGridStat.rebuild();
};

function fn_ModifyPrjt() {

	var updateInfo = objSBGrid.getUpdateData();

	if(updateInfo){
		var arrUpdateInfo = JSON.parse(updateInfo);
		var nUpdateLen = arrUpdateInfo.length;

		var arrMap = new Map();
		var arrlist = new Array();

		arrMap.put("sPRJT_ID"    , $("#searchPrjtID").val());
		arrMap.put("sPRJT_STAGE" , $("#sDEV_STAGE").val());
		
		for (var i=0; i<nUpdateLen; i++) {

			var taskMap = new Map();
			var nRowNum = eval(arrUpdateInfo[i].rownum);

			taskMap.put("sTASK_ID"         	, objSBGrid.getTextMatrix(nRowNum,23));
			taskMap.put("sSEG_ID"          	, objSBGrid.getTextMatrix(nRowNum,24));
			taskMap.put("sSEG_SUB_ID"       , objSBGrid.getTextMatrix(nRowNum,25));
			taskMap.put("sPRG_ID"           , objSBGrid.getTextMatrix(nRowNum,1));
			taskMap.put("sPRJ_DEV_STRT_DT"  , objSBGrid.getTextMatrix(nRowNum,8));
			taskMap.put("sPRJ_DEV_END_DT"   , objSBGrid.getTextMatrix(nRowNum,9));
			taskMap.put("sTEST_DEV_STRT_DT" , objSBGrid.getTextMatrix(nRowNum,14));
			taskMap.put("sTEST_DEV_END_DT"  , objSBGrid.getTextMatrix(nRowNum,15));
			taskMap.put("sPM_CNFM"          , objSBGrid.getTextMatrix(nRowNum,17));
			taskMap.put("sCUS_CNFM"         , objSBGrid.getTextMatrix(nRowNum,18));
			taskMap.put("sPROGRESS_RT"      , objSBGrid.getTextMatrix(nRowNum,22));
			
			arrlist[i] = taskMap;
		}
		
		arrMap.putMapList("sPRG_INFO", arrlist);
		
		var sendData = arrMap.jsonParse();
		fn_AjaxSend(sendData, "DV040131", fn_SelectPrjtInfo, PMS_PROC_INSERT);
	}
};

function fn_objSBGridStageChangeGrid(event) {
	var nRow = objSBGrid.row;
	var nCol = objSBGrid.col;
	objSBGrid.setCellStyle("background-color", nRow, nCol, nRow, nCol, "#F3F781");
};

function fn_ExcelDownload() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};
	
	fn_AjaxSend(sendData, "DV040154", fn_ProcDataExcelDownload, null);
};

function fn_ProcDataExcelDownload(result) {
	var fileName = result.fileName;
	fn_FileDownload(fileName);
};

function fn_FileDownload(args) {
	var downloadFile= args;
	fn_DownloadFile("DV04", downloadFile);
};

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
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
			<jsp:include page="../common/layout_left_dv.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[DV04] 개발일정관리</h2>
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
    		                    <div style="display:none">
    		                    <ul>
    		                        <li class="name"><span>진행단계</span></li>
    		                        <li>구현</li>
    		                    </ul>
    		                    </div>
    		                    <ul>
    		                        <li class="name"><span>완료구분</span></li>
    		                        <li><input type="radio" class="radiobox" id="searchDevCmpl" name="searchDevCmpl" value="0" checked/> 전체</li>
    		                        <li><input type="radio" class="radiobox" id="searchDevCmpl" name="searchDevCmpl" value="1" checked/> 개발 완료</li>
    		                        <li><input type="radio" class="radiobox" id="searchDevCmpl" name="searchDevCmpl" value="2" checked/> 테스트 완료</li>
    		                    </ul>
    		                    <ul>
    		                        <li class="name"><span>TASK</span></li>
    		                        <li><select class="selectbox w300" id="searchTaksInfo" name="searchTaksInfo" onChange="javascript:fn_SelectInitSegment();"></select></li>
    		                    </ul>
    		                    <ul>
    		                        <li class="name"><span>SEG</span></li>
    		                        <li><select class="selectbox w300" id="searchSegInfo" name="searchSegInfo" onChange="javascript:fn_SelectInitSegmentSub();"></select></li>
    		                    </ul>
    		                    <ul>
    		                        <li class="name">SEG SUB 구분</li>
    		                        <li><select class="selectbox w300" id="searchSegSubInfo" name="searchSegSubInfo"></select></li>
    		                    </ul>
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        <div class="section">
                        <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                     	</ul>
                    </div>
    		    	<!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtDevStatus">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    			<!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtDevInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		
    		        <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		            	<li><a href="javascript:fn_ExcelDownload();" class="btnimg03">EXCEL</a></li>
    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div>
    		        <!-- END : button section -->
    		        <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sDEV_STAGE" name="sDEV_STAGE"/>
					</div>
					</div>
				</div><!--//pixbox-->
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