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
	var selYesNoYn = '<option value="">선 택</option>';
	$.each(yesNo_YN,function(key, value) {
		selYesNoYn = selYesNoYn + '<option value="' + value.label + '">' + value.value + '</option>';

		$("#sCNFM_TYPE").empty().append(selYesNoYn);
	});
	
	fn_InitGrid();
};

function fn_InitGrid() {
	var caption = "테스트시나리오ID^테스트시나리오 명^등록자^등록자^테스트기간^테스트기간^확인구분^확인자^확인자^확인의견^등록자ID^확인자ID^TASKID^SEG_ID^SEG_SUB_ID|테스트시나리오ID^테스트시나리오 명^등록자^등록자^시작일자^종료일자^확인구분^확인자^확인자^확인의견^등록자ID^확인자ID^TASKID^SEG_ID^SEG_SUB_ID";
	var colWidth = "15%,20%,10%,3%,13%,13%,10%,10%,3%,15%,10%,10%,10%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtTestScnrInfo", "objSBGrid", caption, colWidth, "350px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						fn_SetSBGridCol("00", "input"     , "sTEST_SCN_ID"  , "center", null, false),
						fn_SetSBGridCol("01", "input"     , "sTEST_SCN_NM"  , "left"  , null, false),
						fn_SetSBGridCol("02", "output"    , "sREG_USER_NM"  , "center", null, false),
						fn_SetSBGridCol("03", "imageS"    , ""              , "center", null, false),
						fn_SetSBGridCol("04", "inputdate" , "sTEST_STRT_DT" , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("05", "inputdate" , "sTEST_END_DT"  , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("06", "combo"     , "sCNFM_TYPE"    , "center", ["yesNo_YN", "label", "value"], false),
						fn_SetSBGridCol("07", "output"    , "sCNFM_USER_NM" , "center", null, false),
						fn_SetSBGridCol("08", "imageS"    , ""              , "center", null, false),
						fn_SetSBGridCol("09", "input"     , "sCNFM_DESC"    , "left"  , null, false),
						fn_SetSBGridCol("10", "output"    , "sREG_USER_ID"  , "center", null, true),
						fn_SetSBGridCol("11", "output"    , "sCNFM_USER_ID" , "center", null, true),
						fn_SetSBGridCol("12", "output"    , "sTASK_ID"      , "center", null, true),
						fn_SetSBGridCol("13", "output"    , "sSEG_ID"       , "center", null, true),
						fn_SetSBGridCol("14", "output"    , "sSEG_SUB_ID"   , "center", null, true)
	                ];

	objSBGrid.createColumns(objColumnsInfo);
	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");

	fn_SelectInitTask("00");
};

function fn_Init_Clear() {
	window.location = "TS010101.jsp";
};

function fn_Init_Data() {
	$("#section input[type=text]:not([id=sTEST_SCN_ID]), #section textarea").val("");
};

function fn_SelectInitTask(taskId, segId, segSubId){

	$("#sTASK_ID").empty();
	$("#sSEG_ID").empty();
	$("#sSEG_SUB_ID").empty();
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sTEST_STAGE").val()
	};

	fn_AjaxSendParam(sendData, "TS010181", fn_SetDataSelectInitTask, null, taskId, segId, segSubId);
};

function fn_SetDataSelectInitTask(result, taskId, segId, segSubId) {
	var selTaskInfo = '<option value="">선 택</option>';
	$.each(result.prjTaskInfo,function(key, value) {
		selTaskInfo = selTaskInfo + '<option value="' + value.sTASK_ID + '">' + value.sTASK_NM + '</option>';
		$("#sTASK_ID").empty().append(selTaskInfo);
	});
			
	if (taskId == "00") {
		var prjtTestScnrInfo = result.prjtTestScnrInfo;
		$("#sTEST_SCN_ID").val(prjtTestScnrInfo.sTEST_SCN_ID);

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
		sPRJT_STAGE : $("#sTEST_STAGE").val(),
		sTASK_ID : $("#sTASK_ID option:selected").val()
	};

	fn_AjaxSendParam(sendData, "TS010182", fn_SetDataSelectInitSegment, null, taskId, segId, segSubId);
};

function fn_SetDataSelectInitSegment(result, taskId, segId, segSubId) {
	var selSegInfo = '<option value="">선 택</option>';
	$.each(result.prjSegInfo,function(key, value) {
		selSegInfo = selSegInfo + '<option value="' + value.sSEG_ID + '">' + value.sSEG_NM + '</option>';
		$("#sSEG_ID").empty().append(selSegInfo);
	});
			
	if (taskId == "00") {
		var prjtTestScnrInfo = result.prjtTestScnrInfo;
		$("#sTEST_SCN_ID").val(prjtTestScnrInfo.sTEST_SCN_ID);

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
		sPRJT_STAGE : $("#sTEST_STAGE").val(),
		sTASK_ID : $("#sTASK_ID option:selected").val(),
		sSEG_ID : $("#sSEG_ID option:selected").val()
	};
	
	fn_AjaxSendParam(sendData, "TS010183", fn_SetDataSelectInitSegmentSub, null, taskId, segId, segSubId);
};

function fn_SetDataSelectInitSegmentSub(result, taskId, segId, segSubId) {
	var selSegSubInfo = '<option value="">선 택</option>';
	$.each(result.prjSegSubInfo,function(key, value) {
		selSegSubInfo = selSegSubInfo + '<option value="' + value.sSEG_SUB_ID + '">' + value.sSEG_SUB_NM + '</option>';
		$("#sSEG_SUB_ID").empty().append(selSegSubInfo);
	});
			
	if (taskId == "00") {
		var prjtTestScnrInfo = result.prjtTestScnrInfo;
		$("#sTEST_SCN_ID").val(prjtTestScnrInfo.sTEST_SCN_ID);

		fn_SelectPrjtInfo();
	} else {
		$("#sSEG_SUB_ID").val(segSubId);
	}
};

function fn_SelectPrjtInfo() {
	fn_Init_Data();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "TS010111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.prjtTestScnrInfo;
    objSBGrid.rebuild();
};

function fn_InsertPrjt() {

	if($("#sTASK_ID").val() == ""){
		alert(SELECT_TASK_ID);
		return;
	} else if($("#sTEST_SCN_ID").val() == "" ){
		alert(INSERT_TEST_SCN_ID);
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
		sTEST_SCN_ID : $("#sTEST_SCN_ID").val(),
		sTEST_SCN_NM : $("#sTEST_SCN_NM").val(),
		sTEST_STRT_DT : $("#sTEST_STRT_DT").val().replaceAll(".",""),
		sTEST_END_DT : $("#sTEST_END_DT").val().replaceAll(".",""),
		sCNFM_TYPE : $("#sCNFM_TYPE").val(),
		sCNFM_USER_ID : $("#sCNFM_USER_ID").val(),
		sREG_USER_ID : $("#sREG_USER_ID").val(),
		sCNFM_DESC : $("#sCNFM_DESC").val()
	};

	fn_AjaxSend(sendData, "TS010121", fn_SelectPrjtInfo, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTEST_SCN_ID : $("#sTEST_SCN_ID").val()
	};

	fn_AjaxSend(sendData, "TS010141", fn_SelectPrjtInfo, PMS_PROC_DELETE);
};

function fn_ModifyPrjt() {
	
	var arrMap = new Map();
	var arrlist = new Array(objSBGrid.rows-2);
	
	var segId = $("#sSEG_ID option:selected").val();
	if (segId == "" || segId == null)
		segId = "00";
	
	var segSubId = $("#sSEG_SUB_ID option:selected").val();
	if (segSubId == "" || segSubId == null)
		segSubId = "00";
	
	arrMap.put("sPRJT_ID"	, $("#searchPrjtID").val());
	arrMap.put("sTASK_ID"	, $("#sTASK_ID option:selected").val());
	arrMap.put("sSEG_ID"	, segId);
	arrMap.put("sSEG_SUB_ID", segSubId);

	for (var i=2; i<objSBGrid.rows; i++) {

		var taskMap = new Map();

		taskMap.put("sTEST_SCN_ID"   , objSBGrid.getTextMatrix(i,0));
		taskMap.put("sTEST_SCN_NM"   , objSBGrid.getTextMatrix(i,1));
		taskMap.put("sREG_USER_ID"   , objSBGrid.getTextMatrix(i,10));
		taskMap.put("sTEST_STRT_DT"  , objSBGrid.getTextMatrix(i,4));
		taskMap.put("sTEST_END_DT"   , objSBGrid.getTextMatrix(i,5));
		taskMap.put("sCNFM_TYPE"     , objSBGrid.getTextMatrix(i,6));
		taskMap.put("sCNFM_USER_ID"  , objSBGrid.getTextMatrix(i,11));
		taskMap.put("sCNFM_DESC"     , objSBGrid.getTextMatrix(i,9));

		arrlist[i-2] = taskMap;
	};
	
	arrMap.putMapList("sTEST_SCNR_INFO", arrlist);

	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "TS010122", fn_SelectPrjtInfo, PMS_PROC_INSERT);
};

function fn_SelectListInfo() {

	var nClickedRow = objSBGrid.getRow();
	var nClickedCol = objSBGrid.getCol();
	
	if (nClickedRow <= 0 )
		return;

	$("#sTASK_ID").val(objSBGrid.getTextMatrix(nClickedRow,12));
	$("#sTEST_SCN_ID").val(objSBGrid.getTextMatrix(nClickedRow,0));
	$("#sTEST_SCN_NM").val(objSBGrid.getTextMatrix(nClickedRow,1));
	$("#sTEST_STRT_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRow,4),"."));
	$("#sTEST_END_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRow,5),"."));
	$("#sCNFM_TYPE").val(objSBGrid.getTextMatrix(nClickedRow,6));
	$("#sCNFM_USER_NM").val(objSBGrid.getTextMatrix(nClickedRow,7));
	$("#sCNFM_USER_ID").val(objSBGrid.getTextMatrix(nClickedRow,11));
	$("#sCNFM_DESC").val(objSBGrid.getTextMatrix(nClickedRow,9));
	$("#sREG_USER_NM").val(objSBGrid.getTextMatrix(nClickedRow,2));
	$("#sREG_USER_ID").val(objSBGrid.getTextMatrix(nClickedRow,10));

	if (nClickedCol==3) {
		var popupUrl = "PU010112.jsp?nSelRow="+nClickedRow+"&TS010101=sREG_USER_ID_GRID";
		window.open(popupUrl,"",popupStyle);
	}
	
	if (nClickedCol==8) {
		var popupUrl = "PU010112.jsp?nSelRow="+nClickedRow+"&TS010101=sCNFM_USER_ID_GRID";
		window.open(popupUrl,"",popupStyle);
	}
	
	var taskId = objSBGrid.getTextMatrix(nClickedRow,12);
	var segId = objSBGrid.getTextMatrix(nClickedRow,13);
	var segSubId = objSBGrid.getTextMatrix(nClickedRow,14);

	fn_SelectInitSegment(taskId, segId, segSubId);
};

$(function() {
	$( "#sTEST_STRT_DT" ).datepicker(setCalendar);
	$( "#sTEST_END_DT" ).datepicker(setCalendar);
});

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
};

function fn_SearchUser(args) {
	var popUpUrl = "PU010112.jsp?TS010101="+args; 
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
	    		        <h2>[TS01] 통합테스트 시나리오</h2>
	    		        <!-- END : title -->
						<!-- START : search section -->
	    		        <div id= "searchSection" class="section">
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
	    		        <div id="section" class="section">
	    		        	<h3>기본정보</h3>
	    		            <table class="table01" border="0" cellspacing="0" summary="">
	    		                <tbody>
	    		                    <tr>
	    		                        <th class="w150"><pk>*</pk> TASK ID</th>
	    		                        <td colspan="3">
	    		                        	 <select class="selectbox wp100" id="sTASK_ID" name="sTASK_ID" onChange="javascript:fn_SelectInitSegment('00', '', '');">
											</select>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">SEGM ID</th>
	    		                        <td colspan="3">
	    		                        	 <select class="selectbox wp100" id="sSEG_ID" name="sSEG_ID" onChange="javascript:fn_SelectInitSegmentSub('00', '', '');">
											</select>
	    		                        </td>
	    		                    </tr>
	    		                    <tr id="selsSEG_SUB_ID">
	    		                        <th class="w150">SEGM SUB ID</th>
	    		                        <td colspan="3">
	    		                        	 <select class="selectbox wp100" id="sSEG_SUB_ID" name="sSEG_SUB_ID">
											</select>
	    		                        </td>
	    		                    </tr>

	    		                    <tr>
	    		                        <th class="w150"><pk>*</pk> 테스트시나리오 ID</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" name="sTEST_SCN_ID" id="sTEST_SCN_ID" />
	    		                        </td>
	    		                        <th class="w150">등록자</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" name="sREG_USER_NM" id="sREG_USER_NM" readOnly/>
	    		                        	<input type="hidden" class="txtinp w100" name="sREG_USER_ID" id="sREG_USER_ID"/>
											<a href="javascript:fn_SearchUser('sREG_USER_ID');" class="btn01">검 색</a>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">테스트시나리오 명</th>
	    		                        <td colspan="3">
	    		                        	<input type="text" class="txtinp wp99" name="sTEST_SCN_NM" id="sTEST_SCN_NM"/>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">시작일자</th>
	    		                        <td>
	                                        <input type="text" class="txtinp w100" name="sTEST_STRT_DT" id="sTEST_STRT_DT"/>
	                                    </td>
	                                    <th class="w150">종료일자</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" name="sTEST_END_DT" id="sTEST_END_DT"/>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                    	<th class="w150">확인자</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" name="sCNFM_USER_NM" id="sCNFM_USER_NM" readOnly/>
	    		                        	<input type="hidden" class="txtinp w100" name="sCNFM_USER_ID" id="sCNFM_USER_ID"/>
											<a href="javascript:fn_SearchUser('sCNFM_USER_ID');" class="btn01">검 색</a>
	    		                        </td>
	    		                        <th class="w150">확인구분</th>
	    		                        <td>
	    		                        	<select class="selectbox w100" id="sCNFM_TYPE" name="sCNFM_TYPE">
											</select>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">확인의견</th>
	    		                        <td colspan="3">
	    		                        	<textarea class="txtinp wp99" cols="100" rows="5" name="sCNFM_DESC" id="sCNFM_DESC" ></textarea>
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
		    		        <div id="prjtTestScnrInfo">
							</div>
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