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

var cboPgmType = [];
var cboPgmImpt = [];
var divSelType = "0";

function fn_InitLoad() {
	var sendData = {
		sPRJT_ID 	: $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sDEV_STAGE").val()
	};

	fn_AjaxSend(sendData, "DV030101", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	cboPgmType = result.prjPgmType;
  	cboPgmImpt = result.prjPgmImpt;

	var selCboPgmType = '<option value="">선 택</option>';
	$.each(cboPgmType,function(key, value) {
		selCboPgmType = selCboPgmType + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sPRG_TYPE").empty().append(selCboPgmType);
	});

	var selCboPgmImpt = '<option value="">선 택</option>';
	$.each(cboPgmImpt,function(key, value) {
		selCboPgmImpt = selCboPgmImpt + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sIMP_RT").empty().append(selCboPgmImpt);
	});

	fn_InitGrid();
};

function fn_InitGrid() {
	
	var caption = "*Task ID^*프로그램 ID^프로그램 명^프로그램 종류^구분^중요도^개발일정^개발일정^개발일정^개발일정^선행프로그램^후행프로그램^단위테스트^단위테스트^단위테스트^단위테스트^담당자ID^담당자^담당자^sPRG_TYPE_NM^sIMP_RT_NM^진행율(%)^sTASK_ID^sSEG_ID^sSEG_SUB_ID|*Task ID^*프로그램 ID^프로그램 명^프로그램 종류^구분^중요도^계획시작일자^계획종료일자^시작일자^종료일자^선행프로그램^후행프로그램^계획시작일자^계획종료일자^시작일자^종료일자^담당자ID^담당자^담당자^sPRG_TYPE_NM^sIMP_RT_NM^진행율(%)^sTASK_ID^sSEG_ID^sSEG_SUB_ID";
	var colWidth = "10%,12%,20%,10%,10%,5%,13%,13%,13%,13%,12%,12%,13%,13%,13%,13%,10%,10%,3%,10%,10%,8%,10%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtDevInfo", "objSBGrid", caption, colWidth, "300px", "resultData", true, null);
	if(SBGrid.getGrid(objGridInitInfo.strId)){
  		objSBGrid.destroy();
  	}
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
		  				fn_SetSBGridCol("00", "output"    , "sACTIVITY_ID"       , "center", null, false),
		  				fn_SetSBGridCol("01", "input"     , "sPRG_ID"            , "center", null, false),
		  				fn_SetSBGridCol("02", "input"     , "sPRG_NM"            , "left"  , null, false),
		  				fn_SetSBGridCol("03", "input"     , "sPRG_EXTN"          , "center", null, false),
		  				fn_SetSBGridCol("04", "combo"     , "sPRG_TYPE"          , "center", ["cboPgmType", "sCODE_NM", "sCODE"], false),
		  				fn_SetSBGridCol("05", "combo"     , "sIMP_RT"            , "center", ["cboPgmImpt", "sCODE_NM", "sCODE"], false),
		  				fn_SetSBGridCol("06", "inputdate" , "sPRJ_PLAN_STRT_DT"  , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("07", "inputdate" , "sPRJ_PLAN_END_DT"   , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("08", "inputdate" , "sPRJ_DEV_STRT_DT"   , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("09", "inputdate" , "sPRJ_DEV_END_DT"    , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("10", "input"     , "sBEFORE_PGM"        , "center", null, false),
		  				fn_SetSBGridCol("11", "input"     , "sAFTER_PGM"         , "center", null, false),
		  				fn_SetSBGridCol("12", "inputdate" , "sTEST_PLAN_STRT_DT" , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("13", "inputdate" , "sTEST_PLAN_END_DT"  , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("14", "inputdate" , "sTEST_DEV_STRT_DT"  , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("15", "inputdate" , "sTEST_DEV_END_DT"   , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("16", "output"    , "sDEV_USER_ID"       , "center", null, true),
		  				fn_SetSBGridCol("17", "input"     , "sDEV_USER_NM"       , "center", null, false),
		  				fn_SetSBGridCol("18", "imageS"    , ""                   , "center", null, false),
		  				fn_SetSBGridCol("19", "input"     , "sPRG_TYPE_NM"       , "center", null, true),
		  				fn_SetSBGridCol("20", "input"     , "sIMP_RT_NM"         , "center", null, true),
		  				fn_SetSBGridCol("21", "input"     , "sPROGRESS_RT"       , "center", "###.## %", true),
		  				fn_SetSBGridCol("22", "input"     , "sTASK_ID"           , "center", null, true),
		  				fn_SetSBGridCol("23", "input"     , "sSEG_ID"            , "center", null, true),
		  				fn_SetSBGridCol("24", "input"     , "sSEG_SUB_ID"        , "center", null, true)
		  			];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
	objSBGrid.addEventListener("onvaluechanged","fn_objSBGridChangeGrid","","");
	
	divSelType = "0";
	
	fn_SelectInitTask("00");
};

function fn_ExcelInitGrid(result) {

	var caption = "*Task ID^*프로그램 ID^프로그램 명^프로그램 종류^구분^중요도^개발일정^개발일정^개발일정^개발일정^선행프로그램^후행프로그램^단위테스트^단위테스트^단위테스트^단위테스트^담당자ID^담당자^담당자^sPRG_TYPE_NM^sIMP_RT_NM^진행율(%)^sTASK_ID^sSEG_ID^sSEG_SUB_ID|*Task ID^*프로그램 ID^프로그램 명^프로그램 종류^구분^중요도^계획시작일자^계획종료일자^시작일자^종료일자^선행프로그램^후행프로그램^계획시작일자^계획종료일자^시작일자^종료일자^담당자ID^담당자^담당자^sPRG_TYPE_NM^sIMP_RT_NM^진행율(%)^sTASK_ID^sSEG_ID^sSEG_SUB_ID";
	var colWidth = "10%,12%,20%,10%,10%,5%,13%,13%,13%,13%,12%,12%,13%,13%,13%,13%,10%,10%,3%,10%,10%,8%,10%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtDevInfo", "objSBGrid", caption, colWidth, "300px", "resultData", true, null);
	if(SBGrid.getGrid(objGridInitInfo.strId)){
  		objSBGrid.destroy();
  	}
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
		  				fn_SetSBGridCol("00", "output"    , "sACTIVITY_ID"       , "center", null, false),
		  				fn_SetSBGridCol("01", "input"     , "sPRG_ID"            , "center", null, false),
		  				fn_SetSBGridCol("02", "input"     , "sPRG_NM"            , "left"  , null, false),
		  				fn_SetSBGridCol("03", "input"     , "sPRG_EXTN"          , "center", null, false),
		  				fn_SetSBGridCol("04", "input"     , "sPRG_TYPE"          , "center", null, false),
		  				fn_SetSBGridCol("05", "input"     , "sIMP_RT"            , "center", null, false),
		  				fn_SetSBGridCol("06", "inputdate" , "sPRJ_PLAN_STRT_DT"  , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("07", "inputdate" , "sPRJ_PLAN_END_DT"   , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("08", "inputdate" , "sPRJ_DEV_STRT_DT"   , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("09", "inputdate" , "sPRJ_DEV_END_DT"    , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("10", "input"     , "sBEFORE_PGM"        , "center", null, false),
		  				fn_SetSBGridCol("11", "input"     , "sAFTER_PGM"         , "center", null, false),
		  				fn_SetSBGridCol("12", "inputdate" , "sTEST_PLAN_STRT_DT" , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("13", "inputdate" , "sTEST_PLAN_END_DT"  , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("14", "inputdate" , "sTEST_DEV_STRT_DT"  , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("15", "inputdate" , "sTEST_DEV_END_DT"   , "center", "yyyy.mm.dd", false),
		  				fn_SetSBGridCol("16", "output"    , "sDEV_USER_ID"       , "center", null, true),
		  				fn_SetSBGridCol("17", "input"     , "sDEV_USER_NM"       , "center", null, false),
		  				fn_SetSBGridCol("18", "imageS"    , ""                   , "center", null, false),
		  				fn_SetSBGridCol("19", "input"     , "sPRG_TYPE_NM"       , "center", null, false),
		  				fn_SetSBGridCol("20", "input"     , "sIMP_RT_NM"         , "center", null, false),
		  				fn_SetSBGridCol("21", "input"     , "sPROGRESS_RT"       , "center", "###.## %", true),
		  				fn_SetSBGridCol("22", "input"     , "sTASK_ID"           , "center", null, true),
		  				fn_SetSBGridCol("23", "input"     , "sSEG_ID"            , "center", null, true),
		  				fn_SetSBGridCol("24", "input"     , "sSEG_SUB_ID"        , "center", null, true)
		  			];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
	objSBGrid.addEventListener("onvaluechanged","fn_objSBGridChangeGrid","","");
	
	divSelType = "1";
	
	resultData = result.prjtDevInfo;
	objSBGrid.rebuild();
};

function fn_Init_Clear() {
	window.location = "DV030101.jsp";
};

function fn_Init_Data(){
	$("#itemSection input[type=text]:not([id=sPRG_ID]), #itemSection select, #itemSection textarea").val("");
	$("#planSection input[type=text], #planSection select, #planSection textarea").val("");
	$("#testSection input[type=text], #testSection select, #testSection textarea").val("");

	fn_File_Clear();
};

function fn_File_Clear() {
	$("#fileSection input[type=text], #fileSection select, #fileSection textarea").val("");
	
	if (brswType == 1) {
		document.getElementById("uploadFile").select();
		document.selection.clear();
		
		document.getElementById("uploadWbsFile").select();
		document.selection.clear();
	} else {
		$("#uploadFile").val("");
		$("#uploadWbsFile").val("");
	}
};

function fn_SelectInitTask(taskId, segId, segSubId){

	$("#sTASK_ID").empty();
	$("#sSEG_ID").empty();
	$("#sSEG_SUB_ID").empty();
	
	var sendData = {
		sPRJT_ID 	: $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sDEV_STAGE").val()
	};

	fn_AjaxSendParam(sendData, "DV030181", fn_SetDataSelectInitTask, null, taskId, segId, segSubId);
};

function fn_SetDataSelectInitTask(result, taskId, segId, segSubId) {
	var selTaskInfo = '<option value="">선 택</option>';
	$.each(result.prjTaskInfo,function(key, value) {
		selTaskInfo = selTaskInfo + '<option value="' + value.sTASK_ID + '">' + value.sTASK_NM + '</option>';
		$("#sTASK_ID").empty().append(selTaskInfo);
	});
			
	if (taskId == "00") {
		var prjtPrgmInfo = result.prjtPrgmInfo;
		$("#sPRG_ID").val(prjtPrgmInfo.sPRG_ID);
		
		fn_SelectPrjtInfo();
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
		sPRJT_STAGE : $("#sDEV_STAGE").val(),
		sTASK_ID : $("#sTASK_ID option:selected").val()
	};

	fn_AjaxSendParam(sendData, "DV030182", fn_SetDataSelectInitSegment, null, taskId, segId, segSubId);
};

function fn_SetDataSelectInitSegment(result, taskId, segId, segSubId) {
	var selSegInfo = '<option value="">선 택</option>';
	$.each(result.prjSegInfo,function(key, value) {
		selSegInfo = selSegInfo + '<option value="' + value.sSEG_ID + '">' + value.sSEG_NM + '</option>';
		$("#sSEG_ID").empty().append(selSegInfo);
	});
			
	if (taskId == "00") {
		var prjtPrgmInfo = result.prjtPrgmInfo;
		$("#sPRG_ID").val(prjtPrgmInfo.sPRG_ID);
		
		fn_SelectPrjtInfo();
	} else {
		$("#sSEG_ID").val(segId);
		fn_SelectInitSegmentSub(taskId, segId, segSubId);
	}
};

function fn_SelectInitSegmentSub(taskId, segId, segSubId){

	$("#sSEG_SUB_ID").empty();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sDEV_STAGE").val(),
		sTASK_ID : $("#sTASK_ID option:selected").val(),
		sSEG_ID : $("#sSEG_ID option:selected").val()
	};

	fn_AjaxSendParam(sendData, "DV030183", fn_SetDataSelectInitSegmentSub, null, taskId, segId, segSubId);
};

function fn_SetDataSelectInitSegmentSub(result, taskId, segId, segSubId) {
	var selSegSubInfo = '<option value="">선 택</option>';
	$.each(result.prjSegSubInfo,function(key, value) {
		selSegSubInfo = selSegSubInfo + '<option value="' + value.sSEG_SUB_ID + '">' + value.sSEG_SUB_NM + '</option>';
		$("#sSEG_SUB_ID").empty().append(selSegSubInfo);
	});
	
	if (taskId == "00") {
		var prjtPrgmInfo = result.prjtPrgmInfo;
		$("#sPRG_ID").val(prjtPrgmInfo.sPRG_ID);
		fn_SelectPrjtInfo();
	} else {
		$("#sSEG_SUB_ID").val(segSubId);
	}
};

function fn_SelectPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTASK_ID : $("#sTASK_ID option:selected").val(),
		sSEG_ID : $("#sSEG_ID option:selected").val(),
		sSEG_SUB_ID : $("#sSEG_SUB_ID option:selected").val()
	};	

	fn_AjaxSend(sendData, "DV030111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	fn_Init_Data();
	resultData = result.prjtPrgmInfo;
	objSBGrid.rebuild();
};

function fn_InsertPrjt() {

	if($("#sTASK_ID").val() == null || $("#sTASK_ID").val() == ""){
		alert(SELECT_TASK_ID);
		return;
	}

	if($("#sPRG_ID").val() == null || $("#sPRG_ID").val() == ""  ) {
		alert(INSERT_PRJT_ID);
		return;
	}
	
	var segId = $("#sSEG_ID option:selected").val();
	if (segId == "" || segId == null)
		segId = "00";
	
	var segSubId = $("#sSEG_SUB_ID option:selected").val();
	if (segSubId == "" || segSubId == null)
		segSubId = "00";

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTASK_ID : $("#sTASK_ID option:selected").val(),
		sSEG_ID : segId,
		sSEG_SUB_ID : segSubId,
		sPRG_ID : $("#sPRG_ID").val(),
		sPRG_NM : $("#sPRG_NM").val(),
		sPRG_EXTN : $("#sPRG_EXTN").val(),
		sPRG_TYPE : $("#sPRG_TYPE option:selected" ).val(),
		sDEV_USER_ID : $("#sDEV_USER_ID").val(),
		sDEV_USER_NM : $("#sDEV_USER_NM").val(),
		sIMP_RT : $("#sIMP_RT option:selected").val(),
		sBEFORE_PGM : $("#sBEFORE_PGM").val(),
		sAFTER_PGM : $("#sAFTER_PGM").val(),
		sPRJ_PLAN_STRT_DT : $("#sPRJ_PLAN_STRT_DT").val(),
		sPRJ_PLAN_END_DT : $("#sPRJ_PLAN_END_DT").val(),
		sPRJ_DEV_STRT_DT : $("#sPRJ_DEV_STRT_DT").val(),
		sPRJ_DEV_END_DT : $("#sPRJ_DEV_END_DT").val(),
		sTEST_PLAN_STRT_DT : $("#sTEST_PLAN_STRT_DT").val(),
		sTEST_PLAN_END_DT : $("#sTEST_PLAN_END_DT").val(),
		sTEST_DEV_STRT_DT : $("#sTEST_DEV_STRT_DT").val(),
		sTEST_DEV_END_DT : $("#sTEST_DEV_END_DT").val(),
	};
	
	fn_AjaxSend(sendData, "DV030121", fn_SelectPrjtInfo, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {

	if($("#sTASK_ID").val() == null || $("#sTASK_ID").val() == ""){
		alert(SELECT_TASK_ID);
		return;
	}

	if($("#sPRG_ID").val() == null || $("#sPRG_ID").val() == ""  ) {
		alert(SELECT_PRJM_ID);
		return;
	}

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTASK_ID : $("#sTASK_ID option:selected").val(),
		sSEG_ID : $("#sSEG_ID option:selected").val(),
		sSEG_SUB_ID : $("#sSEG_SUB_ID option:selected").val(),
		sPRG_ID : $("#sPRG_ID").val()
	};	

	fn_AjaxSend(sendData, "DV030141", fn_SelectPrjtInfo, PMS_PROC_DELETE);
};

function fn_ModifyPrjt() {

	if($("#sTASK_ID").val() == null || $("#sTASK_ID").val() == ""){
		alert(SELECT_TASK_ID);
		return;
	}

	var arrMap = new Map();
	var arrlist = new Array(objSBGrid.rows - 2);
	
	arrMap.put("sPRJT_ID", $("#searchPrjtID").val());

	if (divSelType == "0") {
		for (var i=2; i<objSBGrid.rows; i++) {
			var taskMap = new Map();

			taskMap.put("sTASK_ID"           , objSBGrid.getTextMatrix(i,22));
			taskMap.put("sSEG_ID"            , objSBGrid.getTextMatrix(i,23));
			taskMap.put("sSEG_SUB_ID"        , objSBGrid.getTextMatrix(i,24));
			taskMap.put("sPRG_ID"            , objSBGrid.getTextMatrix(i,1));
			taskMap.put("sPRG_NM"            , objSBGrid.getTextMatrix(i,2));
			taskMap.put("sPRG_EXTN"          , objSBGrid.getTextMatrix(i,3));
			taskMap.put("sPRG_TYPE"          , objSBGrid.getTextMatrix(i,4));
			taskMap.put("sIMP_RT"            , objSBGrid.getTextMatrix(i,5));
			taskMap.put("sPRJ_PLAN_STRT_DT"  , objSBGrid.getTextMatrix(i,6));
			taskMap.put("sPRJ_PLAN_END_DT"   , objSBGrid.getTextMatrix(i,7));
			taskMap.put("sPRJ_DEV_STRT_DT"   , objSBGrid.getTextMatrix(i,8));
			taskMap.put("sPRJ_DEV_END_DT"    , objSBGrid.getTextMatrix(i,9));
			taskMap.put("sBEFORE_PGM"        , objSBGrid.getTextMatrix(i,10));
			taskMap.put("sAFTER_PGM"         , objSBGrid.getTextMatrix(i,11));
			taskMap.put("sTEST_PLAN_STRT_DT" , objSBGrid.getTextMatrix(i,12));
			taskMap.put("sTEST_PLAN_END_DT"  , objSBGrid.getTextMatrix(i,13));
			taskMap.put("sTEST_DEV_STRT_DT"  , objSBGrid.getTextMatrix(i,14));
			taskMap.put("sTEST_DEV_END_DT"   , objSBGrid.getTextMatrix(i,15));
			taskMap.put("sDEV_USER_ID"       , objSBGrid.getTextMatrix(i,16));
			taskMap.put("sDEV_USER_NM"       , objSBGrid.getTextMatrix(i,17));
			taskMap.put("sPROGRESS_RT"       , objSBGrid.getTextMatrix(i,21));

			arrlist[i-2] = taskMap;
		};
	} else {
		
		var segId = $("#sSEG_ID option:selected").val();
		if (segId == "" || segId == null)
			segId = "00";
		
		var segSubId = $("#sSEG_SUB_ID option:selected").val();
		if (segSubId == "" || segSubId == null)
			segSubId = "00";
		
		for (var i=2; i<objSBGrid.rows; i++) {
			var taskMap = new Map();
		
			taskMap.put("sTASK_ID"           , $("#sTASK_ID").val());
			taskMap.put("sSEG_ID"            , segId);
			taskMap.put("sSEG_SUB_ID"        , segSubId);
			taskMap.put("sPRG_ID"            , objSBGrid.getTextMatrix(i,1));
			taskMap.put("sPRG_NM"            , objSBGrid.getTextMatrix(i,2));
			taskMap.put("sPRG_EXTN"          , objSBGrid.getTextMatrix(i,3));
			taskMap.put("sPRG_TYPE"          , objSBGrid.getTextMatrix(i,4));
			taskMap.put("sIMP_RT"            , objSBGrid.getTextMatrix(i,5));
			taskMap.put("sPRJ_PLAN_STRT_DT"  , objSBGrid.getTextMatrix(i,6));
			taskMap.put("sPRJ_PLAN_END_DT"   , objSBGrid.getTextMatrix(i,7));
			taskMap.put("sPRJ_DEV_STRT_DT"   , objSBGrid.getTextMatrix(i,8));
			taskMap.put("sPRJ_DEV_END_DT"    , objSBGrid.getTextMatrix(i,9));
			taskMap.put("sBEFORE_PGM"        , objSBGrid.getTextMatrix(i,10));
			taskMap.put("sAFTER_PGM"         , objSBGrid.getTextMatrix(i,11));
			taskMap.put("sTEST_PLAN_STRT_DT" , objSBGrid.getTextMatrix(i,12));
			taskMap.put("sTEST_PLAN_END_DT"  , objSBGrid.getTextMatrix(i,13));
			taskMap.put("sTEST_DEV_STRT_DT"  , objSBGrid.getTextMatrix(i,14));
			taskMap.put("sTEST_DEV_END_DT"   , objSBGrid.getTextMatrix(i,15));
			taskMap.put("sDEV_USER_ID"       , objSBGrid.getTextMatrix(i,16));
			taskMap.put("sDEV_USER_NM"       , objSBGrid.getTextMatrix(i,17));
			taskMap.put("sPRG_TYPE_NM"       , objSBGrid.getTextMatrix(i,19));
			taskMap.put("sIMP_RT_NM"         , objSBGrid.getTextMatrix(i,20));
			taskMap.put("sPROGRESS_RT"       , objSBGrid.getTextMatrix(i,21));
		
			arrlist[i-2] = taskMap;
		};
	}

	arrMap.putMapList("sPRG_INFO", arrlist);
	var sendData = arrMap.jsonParse();
	
	fn_AjaxSend(sendData, "DV030122", fn_InitGrid, PMS_PROC_INSERT);
};

function fn_InsertPrjtFile() {
	if($("#sTASK_ID").val() == ""){
		alert(SELECT_ACTIVITY_ID);
		return;
	}
	
	if ($("#sFILE_NM").val() == "") {
		alert(SELECT_MODIFY_FILE);
		return;
	}
	
	fn_InsertUploadFile("DV03", fn_ExcelDataLoad);
};

function fn_ExcelDataLoad(){
	
	var sendData = {
		sFILE_NM : fn_GetFileName($("#sFILE_NM").val())
	};	

	fn_AjaxSend(sendData, "DV030153", fn_ExcelInitGrid, null);
};

function fn_SelectListInfo() {
	var nSelCol = objSBGrid.col;
	var nSelRow = objSBGrid.row;
	var popupUrl = "PU010112.jsp?nSelRow="+nSelRow+"&DV030101=sGRID_INFO";
	if (nSelCol== 18) {
		window.open(popupUrl,"",popupStyle);
	}
	
	var nClickedRowDev = objSBGrid.getRow();
	if (nClickedRowDev <= 1 )
		return;
	
	if (objSBGrid.getTextMatrix(nClickedRowDev,22) == null || objSBGrid.getTextMatrix(nClickedRowDev,22) == '')
		return;

	var taskId = objSBGrid.getTextMatrix(nClickedRowDev, 22);
	$("#sTASK_ID").val(objSBGrid.getTextMatrix(nClickedRowDev, 22));
	var segId = objSBGrid.getTextMatrix(nClickedRowDev, 23);
	var segSubId = objSBGrid.getTextMatrix(nClickedRowDev, 24);
	$("#sPRG_ID").val(objSBGrid.getTextMatrix(nClickedRowDev, 1));
	$("#sPRG_NM").val(objSBGrid.getTextMatrix(nClickedRowDev, 2));
	$("#sPRG_EXTN").val(objSBGrid.getTextMatrix(nClickedRowDev, 3));
	$("#sPRG_TYPE").val(objSBGrid.getTextMatrix(nClickedRowDev, 4));
	$("#sDEV_USER_ID").val(objSBGrid.getTextMatrix(nClickedRowDev, 16));
	$("#sDEV_USER_NM").val(objSBGrid.getTextMatrix(nClickedRowDev, 17));
	$("#sIMP_RT").val(objSBGrid.getTextMatrix(nClickedRowDev, 5));
	$("#sBEFORE_PGM").val(objSBGrid.getTextMatrix(nClickedRowDev, 10));
	$("#sAFTER_PGM").val(objSBGrid.getTextMatrix(nClickedRowDev, 11));
	$("#sPRJ_PLAN_STRT_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRowDev, 6)));
	$("#sPRJ_PLAN_END_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRowDev, 7)));
	$("#sPRJ_DEV_STRT_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRowDev, 8)));
	$("#sPRJ_DEV_END_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRowDev, 9)));
	$("#sTEST_PLAN_STRT_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRowDev, 12)));
	$("#sTEST_PLAN_END_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRowDev, 13)));
	$("#sTEST_DEV_STRT_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRowDev, 14)));
	$("#sTEST_DEV_END_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRowDev, 15)));

	fn_SelectInitSegment(taskId, segId, segSubId);

};

function fn_objSBGridChangeGrid(event) {
	var nRow = objSBGrid.getMouseRow();
	var nCol = objSBGrid.getMouseCol();
	
	objSBGrid.setCellStyle("background-color", nRow, nCol, nRow, nCol, "#F3F781");
};

function fn_AddRow() {

	if($("#sTASK_ID option:selected").val() == "" ){
		alert(SELECT_TASK_ID);
		return;
	}
	
	if(typeof $("#sTASK_ID option:selected").val() == "undefined" ){
		alert(SELECT_TASK_ID);
		return;
	}

	if(objSBGrid.selectedRow(0) == '-1'){
		
		var segId = "00";
		if( !($("#sSEG_ID option:selected").val() == "" || $("#sSEG_ID option:selected").val() == null) )
			segId = $("#sSEG_ID option:selected").val();
		
		objSBGrid.addItem();
		
    	objSBGrid.setTextMatrix(objSBGrid.getRows() - 1, 22,  $("#sTASK_ID option:selected").val());
    	objSBGrid.setTextMatrix(objSBGrid.getRows() - 1, 23,  segId);

    	var segSubId = "00";
    	if($("#sSEG_SUB_ID option:selected").val() > 0 ){
    		segSubId = $("#sSEG_SUB_ID option:selected").val();
    	}
    	objSBGrid.setTextMatrix(objSBGrid.getRows() - 2, 24,  segSubId);
	}else{
		
		var segId = "00";
		if( !($("#sSEG_ID option:selected").val() == "" || $("#sSEG_ID option:selected").val() == null) )
			segId = $("#sSEG_ID option:selected").val();
		
		objSBGrid.insertItem( objSBGrid.selectedRow(0) , "below");
    	objSBGrid.setTextMatrix(objSBGrid.selectedRow(0), 22,  $("#sTASK_ID option:selected").val());
    	objSBGrid.setTextMatrix(objSBGrid.selectedRow(0), 23,  segId);

    	var segSubId = "00";
    	if($("#sSEG_SUB_ID option:selected").val() > 0 ){
    		segSubId = $("#sSEG_SUB_ID option:selected").val();
    	}
    	
    	console.log("segSubId id : " + segSubId);
    	objSBGrid.setTextMatrix(objSBGrid.selectedRow(0), 24,  segSubId);
	}
};

function fn_DelRow() {
	var nRow = objSBGrid.getClickedRow();
	objSBGrid.deleteItem(nRow);
	
	$("#section input[type=text], #section select, #section textarea").val("");;
};

function fn_FileDownload() {
	var downloadFile= "uni_pms_dev_schedule.xls";
	fn_DownloadFile("DV03", downloadFile);
};

$(function() {
	$( "#sPRJ_PLAN_STRT_DT" ).datepicker(setCalendar);
	$( "#sPRJ_PLAN_END_DT" ).datepicker(setCalendar);
});

$(function() {
	$( "#sPRJ_DEV_STRT_DT" ).datepicker(setCalendar);
	$( "#sPRJ_DEV_END_DT" ).datepicker(setCalendar);
});

$(function() {
	$( "#sTEST_PLAN_STRT_DT" ).datepicker(setCalendar);
	$( "#sTEST_PLAN_END_DT" ).datepicker(setCalendar);
});

$(function() {
	$( "#sTEST_DEV_STRT_DT" ).datepicker(setCalendar);
	$( "#sTEST_DEV_END_DT" ).datepicker(setCalendar);
});

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
};

function fn_SearchUser() {
	var popupUrl = "PU010112.jsp?DV030101=sTEXT_INFO";
	window.open(popupUrl,"",popupStyle);
};

</script>
</head>

<body onload="fn_Init();">
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
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
	    		    <div class="fixbox">
						<!-- START : title -->
	    		        <h2>[DV03] 개발일정등록</h2>
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
						<!-- START : input table section -->
	    		       
						<div id="taskSection" class="section">
		    		        <h4>TASK</h4>				
							<table class="table01" border="0" cellspacing="0" summary="">
								<tbody>
									<tr>
										<th class="w100"><pk>*</pk> TASK</th>
										<td>
											<select class="selectbox wp100" id="sTASK_ID" name="sTASK_ID" onChange="javascript:fn_SelectInitSegment('00', '', '');">
											</select>
										</td>
									</tr>
									<tr>
										<th class="w100">SEGMENT</th>
										<td>
											<select class="selectbox wp100" id="sSEG_ID" name="sSEG_ID" onChange="javascript:fn_SelectInitSegmentSub('00', '', '');">
											</select>
										</td>
									</tr>
									<tr>
										<th class="w100">SEGMENT SUB</th>
										<td>
											<select class="selectbox wp100" id="sSEG_SUB_ID" name="sSEG_SUB_ID">
											</select>
										</td>
									</tr>
								</tbody>
		    		        </table>
	    		        </div><!--//section-->
	    		        <!-- END : input table section -->
						
						<div id="itemSection" class="section">
		    		        <h4>프로그램 목록</h4>				
							<table class="table01" border="0" cellspacing="0" summary="">
								<tbody>
									<tr>
										<th class="w100"><pk>*</pk> 프로그램ID</th>
										<td >
											<input type="text" class="txtinp w100"  id="sPRG_ID" name="sPRG_ID" > 
										</td>
										<th class="w100">프로그램명</th>
										<td >
											<input type="text" class="txtinp wp99"  id="sPRG_NM" name="sPRG_NM"   > 
										</td>
									</tr>
									<tr>
										<th class="w100">프로그램종류</th>
										<td >
											<input type="text" class="txtinp w100"  id="sPRG_EXTN" name="sPRG_EXTN"   > 
										</td>
										<th class="w100">구분</th>
										<td >
											<select class="selectbox" id="sPRG_TYPE" name="sPRG_TYPE">
											</select>
										</td>
									</tr>
									<tr>
										<th class="w100">선행프로그램</th>
										<td >
											<input type="text" class="txtinp w100"  id="sBEFORE_PGM" name="sBEFORE_PGM"   > 
										</td>
										<th class="w100">후행프로그램</th>
										<td >
											<input type="text" class="txtinp w100"  id="sAFTER_PGM" name="sAFTER_PGM"   > 
										</td>
									</tr>
									<tr>	
										<th class="w100">중요도</th>
										<td >
											<select class="selectbox" id="sIMP_RT" name="sIMP_RT">
												</select>
										</td>	
										<th class="w100">담당자</th>
										<td>
											<input type="hidden" class="txtinp w100"  id="sDEV_USER_ID" name="sDEV_USER_ID"   >
											<input type="text" class="txtinp w100" id="sDEV_USER_NM" name="sDEV_USER_NM" readOnly  > 
											<a href="javascript:fn_SearchUser();" class="btn01" >검 색</a>
										</td>
									</tr>
									<!-- tr>
										<th class="w100">진행율</th>
										<td >
											<input type="text" class="txtinp w100"  id="sPROGRESS_RT" name="sPROGRESS_RT"   >% 
										</td>
									</tr-->
								</tbody>
		    		        </table>
	    		        </div><!--//section-->
	    		        <!-- END : input table section -->
						<div id="planSection" class="section">
		    		        <h4>개발일정</h4>				
							<table class="table01" border="0" cellspacing="0" summary="">
								<tbody>
									<tr>
										<th class="w100">계획시작일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sPRJ_PLAN_STRT_DT" name="sPRJ_PLAN_STRT_DT"   > 
										</td>
										<th class="w100">계획종료일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sPRJ_PLAN_END_DT" name="sPRJ_PLAN_END_DT"   > 
										</td>
										</tr>
										<tr>
										<th class="w100">시작일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sPRJ_DEV_STRT_DT" name="sPRJ_DEV_STRT_DT"   > 
										</td>
										<th class="w100">종료일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sPRJ_DEV_END_DT" name="sPRJ_DEV_END_DT"   > 
										</td>
									</tr>
								</tbody>
		    		        </table>
	    		        </div><!--//section-->
	    		        <!-- END : input table section -->	
	    		        <div id="testSection" class="section">
		    		        <h4>단위테스트일정</h4>				
							<table class="table01" border="0" cellspacing="0" summary="">
								<tbody>
									<tr>
										<th class="w100">계획시작일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sTEST_PLAN_STRT_DT" name="sTEST_PLAN_STRT_DT"   > 
										</td>
										<th class="w100">계획종료일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sTEST_PLAN_END_DT" name="sTEST_PLAN_END_DT"   > 
										</td>
										</tr>
										<tr>
										<th class="w100">시작일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sTEST_DEV_STRT_DT" name="sTEST_DEV_STRT_DT"   > 
										</td>
										<th class="w100">종료일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sTEST_DEV_END_DT" name="sTEST_DEV_END_DT"   > 
										</td>
									</tr>
								</tbody>
		    		        </table>
	    		        </div><!--//section-->
	    		        <!-- END : input table section -->	
	    		        <!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_Init_Data();" class="btnimg02">초기화</a></li>
	    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
	    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
	    		            </ul>
	    		        </div>
	    		        <!-- END : button section -->
						<!--//section-->
	    		        <div class="section">
	    		            <ul class="btnbox_top right">
	    		                <li><a href="javascript:fn_AddRow();" class="btn02">행추가</a></li>
	    		                <li><a href="javascript:fn_DelRow();" class="btn03">행 삭제</a></li>
	    		            </ul>
	    		        </div><!--//section-->
	    		        <!-- END : button section -->
						<!-- START : grid section -->
		    		    <!-- div class="section">
		    		    	<table class="table01" border="0" cellspacing="0" summary="">
		    		    		<tr>
			    		    		<td id="tdprjtDevInfo">
					    		    	<div id="prjtDevInfo">
										</div>
									<td>
								</tr>
								<tr>
									<td id="tdprjtDevInfoExcel" style="display:none;" >
				    		        	<div id="prjtDevInfoExcel">
										</div>
									</td>
								</tr>
						</table>
		    		    </div-->
		    		    
		    		    <div class="section">
		    		    	<div id="prjtDevInfo">
							</div>
		    		    </div>
		    		    <!-- END : grid section -->
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
											<li><a href="javascript:fn_FileDownload()" class="btn01">양식 Download</a></li>
											<li><a href="javascript:fn_InsertPrjtFile()" class="btn01">양식Upload</a></li>
										</ul>
									</td>
								</tr>
							</table>     					
						</div>
						<div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저 장</a></li>
	    		            </ul>
	    		        </div>
					</div><!--//pixbox-->
	    		    <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sDEV_STAGE" name="sDEV_STAGE"/>
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