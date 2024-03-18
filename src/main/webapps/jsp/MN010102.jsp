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
	$("#sUSER_ID").val("<%=(String) session.getAttribute("sUSER_ID")%>");
	
	fn_InitLoad();
};

var objSBGridRprt;
var resultDataRprt = [];
var objGridInitInfoRprt;
var objColumnsInfoRprt;

var objSBGridIssue;
var resultDataIssue = [];
var objGridInitInfoIssue;
var objColumnsInfoIssue;

function fn_InitLoad() {
	fn_InitGrid();
};

function fn_InitGrid() {

	var caption = "프로젝트ID^프로젝트명^진행단계^시작일자^종료일자^진행율(%)^PM^고객사^주사업자^sCURR_STAGE^sDEV_STAGE^sTEST_STAGE^sPRJT_TYPE^sDELAY_YN";
	var colWidth = "10%,40%,10%,12%,12%,15%,10%,15%,15%,10%,10%,10%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtInfo", "objSBGrid", caption, colWidth, "250px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						fn_SetSBGridCol("00", "output" , "sPRJT_ID"			    , "center", null, true),
						fn_SetSBGridCol("01", "output" , "sPRJT_NM"			    , "left"  , null, false),
						fn_SetSBGridCol("02", "output" , "sCURR_STAGE_NM"    	, "center", null, false),
						fn_SetSBGridCol("03", "output" , "sPRJT_STRT_DT"     	, "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("04", "output" , "sPRJT_END_DT"   		, "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("05", "output" , "sPROGRESS_RT"  		, "center", null, false),
						fn_SetSBGridCol("06", "output" , "sPRJT_MANG_NM"  		, "center", null, false),
						fn_SetSBGridCol("07", "output" , "sCUS_NM"        		, "left"  , null, false),
						fn_SetSBGridCol("08", "output" , "sMAIN_BIZ_PART_NM" 	, "left"  , null, false),
						fn_SetSBGridCol("09", "output" , "sCURR_STAGE"			, "center", null, true),
						fn_SetSBGridCol("10", "output" , "sDEV_STAGE"			, "center", null, true),
						fn_SetSBGridCol("11", "output" , "sTEST_STAGE"			, "center", null, true),
						fn_SetSBGridCol("12", "output" , "sPRJT_TYPE"			, "center", null, true),
						fn_SetSBGridCol("13", "output" , "sDELAY_YN"			, "center", null, true)
	                ];

	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("ondblclick", "fn_SelectListInfo", "","");
	objSBGrid.addEventListener("onclick", "fn_SelectListInfoMobile", "","");

	caption = "프로젝트ID^프로젝트명^프로젝트 주^시작일자^종료일자^PM^첨부파일^sFILE_NM^sPRJT_YEAR^sWEEK_ORDER^sPRJT_STAGE^sDEV_STAGE^sTEST_STAGE";
	colWidth = "10%,45%,10%,15%,15%,15%,10%,10%,10%,10%,10%,10%";
	
	objGridInitInfoRprt = fn_InitSBGrid("weekRprt", "objSBGridRprt", caption, colWidth, "200px", "resultDataRprt", true, null);
	objSBGridRprt = createSBDataGrid(objGridInitInfoRprt);

	objColumnsInfoRprt = [
						fn_SetSBGridCol("00", "output" , "sPRJT_ID"    		, "center", null, true),
						fn_SetSBGridCol("01", "output" , "sPRJT_NM"    		, "left"  , null, false),
						fn_SetSBGridCol("02", "output" , "sPRJT_WEEK"    	, "center", null, false),
						fn_SetSBGridCol("03", "output" , "sSTRT_DT"    		, "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("04", "output" , "sEND_DT"       	, "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("05", "output" , "sPRJT_MANG_NM"	, "center", null, false),
						fn_SetSBGridCol("06", "imageF" , "sIMG_URL"         , "center", null, false),
						fn_SetSBGridCol("07", "output" , "sFILE_NM"      	, "left"  , null, true),
						fn_SetSBGridCol("08", "output" , "sPRJT_YEAR"		, "center", null, true),
						fn_SetSBGridCol("09", "output" , "sWEEK_ORDER" 		, "center", null, true),
						fn_SetSBGridCol("10", "output" , "sPRJT_STAGE"   	, "center", null, true),
						fn_SetSBGridCol("11", "output" , "sDEV_STAGE"    	, "center", null, true),
						fn_SetSBGridCol("12", "output" , "sTEST_STAGE"   	, "center", null, true)
	                ];

	objSBGridRprt.createColumns(objColumnsInfoRprt);

	objSBGridRprt.addEventListener("ondblclick", "fn_SelectListInfoRprt", "","");
	objSBGridRprt.addEventListener("onclick", "fn_GridFileDownRprt", "","");

	caption = "프로젝트ID^프로젝트명^이슈 TITLE^등록일자^등록자^담당자^구분^이슈중요도^진행상태^조치예정일자^완료일자^첨부파일^PRJT_STAGE^TASK_ID^sFILE_NM^이슈ID^1^2^3";
	colWidth = "10%,30%,25%,12%,10%,10%,10%,10%,10%,12%,12%,10%,10%,10%,10%,10%,10%,10%,10%";
	
	objGridInitInfoIssue = fn_InitSBGrid("prjtIssueInfo", "objSBGridIssue", caption, colWidth, "250px", "resultDataIssue", true, null);
	objSBGridIssue = createSBDataGrid(objGridInitInfoIssue);

	objColumnsInfoIssue = [
							fn_SetSBGridCol("00", "output" , "sPRJT_ID"    		, "center", null, true),
							fn_SetSBGridCol("01", "output" , "sPRJT_NM"        	, "left"  , null, false),
							fn_SetSBGridCol("02", "output" , "sTITLE"          	, "left"  , null, false),
							fn_SetSBGridCol("03", "output" , "sREG_DT"         	, "center", "yyyy.mm.dd", false),
							fn_SetSBGridCol("04", "output" , "sREG_USER_NM"		, "center", null, false),
							fn_SetSBGridCol("05", "output" , "sCHRG_USER_NM"	, "center", null, false),
							fn_SetSBGridCol("06", "output" , "sISSUE_TYPE_NM"  	, "center", null, false),
							fn_SetSBGridCol("07", "output" , "sISSUE_IMPT_NM"  	, "left"  , null, false),
							fn_SetSBGridCol("08", "output" , "sPROC_STAGE_NM"	, "center", null, false),
							fn_SetSBGridCol("09", "output" , "sAPPR_DT"        	, "center", "yyyy.mm.dd", false),
							fn_SetSBGridCol("10", "output" , "sCOMPL_DT"       	, "center", "yyyy.mm.dd", false),
							fn_SetSBGridCol("11", "imageF" , "sIMG_URL"         , "center", null, false),
							fn_SetSBGridCol("12", "output" , "sPRJT_STAGE"     	, "center", null, true),
							fn_SetSBGridCol("13", "output" , "sTASK_ID"        	, "center", null, true),
							fn_SetSBGridCol("14", "output" , "sFILE_NM"        	, "left"  , null, true),
							fn_SetSBGridCol("15", "output" , "sISSUE_ID"       	, "center", null, true),
							fn_SetSBGridCol("16", "output" , "sCURR_STAGE"     	, "center", null, true),
							fn_SetSBGridCol("17", "output" , "sDEV_STAGE"      	, "center", null, true),
							fn_SetSBGridCol("18", "output" , "sTEST_STAGE"     	, "center", null, true)
	                ];

	objSBGridIssue.createColumns(objColumnsInfoIssue);
	
	objSBGridIssue.addEventListener("ondblclick", "fn_SelectListInfoIssue", "","");
	objSBGridIssue.addEventListener("onclick", "fn_GridFileDownIssue", "","");
	
	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sCURR_DT : fn_GetDate(""),
		sUSER_ID : $("#sUSER_ID").val()
	};

	fn_AjaxSend(sendData, "MN010111C", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	var initSelWeek = "";
	resultData = result.prjtInfo;
	objSBGrid.rebuild();

	var selPrjtWeekInfo = "";
	var cnt = 0;
	$.each(result.weekInfo,function(key, value) {
		selPrjtWeekInfo = selPrjtWeekInfo + '<option value="' + value.sWEEK_STRT_DT + value.sCURR_YEAR + '">' + value.sWEEK_ORDER + ' (' + fn_SetDateType(value.sWEEK_STRT_DT) + ' ~ ' + fn_SetDateType(value.sWEEK_END_DT) + ')' + '</option>';
		$("#searchPrjtRptDt").empty().append(selPrjtWeekInfo);
		
		if (cnt == 1)
			initSelWeek = value.sWEEK_STRT_DT + value.sCURR_YEAR;
		
		cnt++;
	});

	resultDataRprt = result.weekRprt;
	objSBGridRprt.rebuild();
	
	resultDataIssue = result.issueInfo;
	objSBGridIssue.rebuild();
	fn_DrawDelayInfo();
	if (initSelWeek != "") {
		$("#searchPrjtRptDt").val(initSelWeek);
		$("#sSEL_WEEK_YEAR").val(initSelWeek.substring(8,12));
	}
};

function fn_DrawDelayInfo() {
	for (var i=1; i<objSBGrid.rows; i++) {
		if (objSBGrid.getTextMatrix(i,13) == "Y") {
			objSBGrid.setCellStyle("color", i, 0, i, 1, "#FF0000");
			objSBGrid.setCellStyle("color", i, 0, i, 5, "#FF0000");
		}
	};
};

function fn_SelectListInfo() {
	var nClickedRow = objSBGrid.getRow();
	
	if (nClickedRow <= 0 )
		return;
	
	var content = "";
	
	content +="sPARAM=PRJTSEL";
	content +="&";
	content +="sPRJT_ID=" + objSBGrid.getTextMatrix(nClickedRow,0);
	content +="&";
	content +="sPRJT_NM=" + objSBGrid.getTextMatrix(nClickedRow,1);
	content +="&";
	content +="sCURR_STAGE=" + objSBGrid.getTextMatrix(nClickedRow,9);
	content +="&";
	content +="sDEV_STAGE=" + objSBGrid.getTextMatrix(nClickedRow,10);
	content +="&";
	content +="sTEST_STAGE=" + objSBGrid.getTextMatrix(nClickedRow,11);
	content +="&";
	content +="sPRJT_TYPE=" + objSBGrid.getTextMatrix(nClickedRow,12);
	
	fn_AjaxSendSesUrlParam(content, "pms_common_session.jsp", null, fn_ProcDataSelectListInfo, objSBGrid.getTextMatrix(nClickedRow,12), null, null);
};

function fn_ProcDataSelectListInfo(args1, args2, args3) {
	if (args1 == "01")
		window.location = "MN020101.jsp";
	else if (args1 == "02")
		window.location = "MN020201.jsp";
	else
		window.location = "MN020101.jsp";
};

function fn_SelectListInfoMobile() {
	var nClickedCol = objSBGrid.getCol();

	if (nClickedCol != 1 )
		return;
	
	fn_SelectListInfo();
};

function fn_SelectListInfoRprt() {

	var nClickedRow = objSBGridRprt.getRow();
	if (nClickedRow <= 0 )
		return;

	var nClickedCol = objSBGridRprt.getCol();
	if(nClickedCol == '6')
		return;

	var content = "";
	content +="sPARAM=PRJTSEL";
	content +="&";
	content +="sPRJT_ID=" + objSBGridRprt.getTextMatrix(nClickedRow,0);
	content +="&";
	content +="sPRJT_NM=" + objSBGridRprt.getTextMatrix(nClickedRow,1);
	content +="&";
	content +="sCURR_STAGE=" + objSBGridRprt.getTextMatrix(nClickedRow,10);
	content +="&";
	content +="sDEV_STAGE=" + objSBGridRprt.getTextMatrix(nClickedRow,11);
	content +="&";
	content +="sTEST_STAGE=" + objSBGridRprt.getTextMatrix(nClickedRow,12);

	fn_AjaxSendSesUrlParam(content, "pms_common_session.jsp", null, fn_ProcDataSelectListInfoRprt, nClickedRow, null, null);
};

function fn_ProcDataSelectListInfoRprt(args1, args2, args3) {
	var content = "";
	content += "sSEARCH_YN=Y";
	content +="&";
	content += "sSEARCH_RPRT_WEEK="+ objSBGridRprt.getTextMatrix(args1,2).replace(/\+/g,"%2B");
	content +="&";
	content += "sSEARCH_RPRT_STRT_DT="+ objSBGridRprt.getTextMatrix(args1,3);
	content +="&";
	content += "sSEARCH_RPRT_END_DT="+ objSBGridRprt.getTextMatrix(args1,4);
	content +="&";
	content += "sSEARCH_RPRT_YEAR="+ $("#sSEL_WEEK_YEAR").val();
	
	fn_AjaxSendSesUrl(content, "pms_session_cf0101.jsp", null, fn_ProcMoveSelectListInfoRprt);
};

function fn_ProcMoveSelectListInfoRprt() {
	if (domainPath == "wise")
		window.location = "WSCF010102.jsp";
	else
		window.location = "CF010102.jsp";
};

function fn_SelectListInfoIssue() {

	var nClickedRow = objSBGridIssue.getRow();
	if (nClickedRow <= 0 )
		return;

	var nClickedCol = objSBGridIssue.getCol();
	if(nClickedCol == '11')
		return;

	var content = "";
	content +="sPARAM=PRJTSEL";
	content +="&";
	content +="sPRJT_ID=" + objSBGridIssue.getTextMatrix(nClickedRow,0);
	content +="&";
	content +="sPRJT_NM=" + objSBGridIssue.getTextMatrix(nClickedRow,1);
	content +="&";
	content +="sCURR_STAGE=" + objSBGridIssue.getTextMatrix(nClickedRow,16);
	content +="&";
	content +="sDEV_STAGE=" + objSBGridIssue.getTextMatrix(nClickedRow,17);
	content +="&";
	content +="sTEST_STAGE=" + objSBGridIssue.getTextMatrix(nClickedRow,18);
	
	fn_AjaxSendSesUrlParam(content, "pms_common_session.jsp", null, fn_ProcMoveSelectListInfoIssue, nClickedRow, null, null );
};

function fn_ProcMoveSelectListInfoIssue(nClickedRow, args1, args2) {

	var content = "";
	content += "sSEARCH_YN=Y";
	content += "&";
	content += "sSEARCH_PRJT_STAGE="+ objSBGridIssue.getTextMatrix(nClickedRow,12);
	content += "&";
	content += "sSEARCH_TASK_ID="+ objSBGridIssue.getTextMatrix(nClickedRow,13);
	content += "&";
	content += "sSEARCH_ISSUE_ID="+ objSBGridIssue.getTextMatrix(nClickedRow,15);

	fn_AjaxSendSesUrl(content, "pms_session_cf0301.jsp", "CF030102.jsp", null);
};

function fn_SelectPrjtList() {
	var sendData = {
		sPRJT_NM  : $("#sPRJT_NM").val(),
		sUSER_ID : $("#sUSER_ID").val()
	};
	
	fn_AjaxSend(sendData, "MN010111D", fn_SetDataSelectPrjtList, null);
};

function fn_SetDataSelectPrjtList(result) {
	resultData = result.prjtInfo;
	objSBGrid.rebuild();
};

function fn_SelectSearchYear() {
	$("#sSEL_WEEK_YEAR").val($("#searchPrjtRptDt option:selected").val().substring(8,12));
};

function fn_SelectPrjtRprt() {
	var sendData = {
		sCURR_DT : $("#searchPrjtRptDt option:selected").val().substring(0,8),
		sUSER_ID : $("#sUSER_ID").val()
	};

	fn_AjaxSend(sendData, "MN010111F", fn_SetDataSelectPrjtRprt, null);
};

function fn_SetDataSelectPrjtRprt(result) {
	resultDataRprt = result.weekRprt;
	objSBGridRprt.rebuild();
};

function fn_GridFileDownRprt() {
	var nClickedRow = objSBGridRprt.getRow();	
	var nClickedCol = objSBGridRprt.getCol();
	if(nClickedCol == '6'){
		var downloadFile = objSBGridRprt.getTextMatrix(nClickedRow, 7);
		if (downloadFile == "")
			return;
		
		fn_DownloadFile("MN01_RP", downloadFile);
	}
	
	if(nClickedCol == '1'){
		fn_SelectListInfoRprt();
	}
};

function fn_GridFileDownIssue() {
	var nClickedRow = objSBGridIssue.getRow();	
	var nClickedCol = objSBGridIssue.getCol();
	if(nClickedCol == '11') {
		var downloadFile = objSBGridIssue.getTextMatrix(nClickedRow, 14);
		if (downloadFile == "")
			return;
		
		fn_DownloadFile("MN01_IS", downloadFile);
	}
	
	if(nClickedCol == '1'){
		fn_SelectListInfoIssue();
	}
};

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">

<div id="wraphome">
	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header_home.jsp" flush="true" />
	</div>
	<!-- END : include -->

	<div id="containerhome">
 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">
    		        <!-- START : grid section -->
    		        <br/>
	    		    <div class="section">
	    		    	<div style="float:left; width:40%;">
	    		    		<h3>프로젝트 요약정보</h3>
	    		    	</div>
	    		    	<div style="float:left; width:55%; padding-left:5%;">
		    		    	<ul class="tasedr">
	    		            	<li><a href="javascript:fn_SelectPrjtList();" class="btn01">조회</a></li>
								<li><input type="text" class="txtinp w200" id="sPRJT_NM" name="sPRJT_NM"/></li>
	    		            </ul>
						</div>
	    		        <div id="prjtInfo">
						</div>
	    		    </div>
	    		    <br/>
	    		    <!-- END : grid section -->
	    		    <div class="section">
	    		    	<div style="float:left; width:40%;">
	    		    		<h3>주간보고</h3>
	    		    	</div>
	    		    	<div style="float:left; width:55%; padding-left:5%;">
	    		    		<ul class="tasedr">
	    		    			<li><a href="javascript:fn_SelectPrjtRprt();" class="btn01">조회</a></li>
	    		            	<li><select class="selectbox" id="searchPrjtRptDt" name="searchPrjtRptDt" onchange="javascript:fn_SelectSearchYear()"></select></li>
							</ul>
						</div>
	    		        <div id="weekRprt">
						</div>
	    		    </div>
	    		    <br/>
	    		    <div class="section">
	    		    	<h3>프로젝트 이슈</h3>
	    		        <div id="prjtIssueInfo">
						</div>
	    		    </div>
    		    </div><!--//pixbox-->
    		    <div id="hiddenColumn">
    		    	<input type="hidden" class="inputType" id="sUSER_ID" name="sUSER_ID" />
    		    	<input type="hidden" class="inputType" id="sSEL_WEEK_YEAR" name="sSEL_WEEK_YEAR" />
				</div>
    		</div><!--//cont-->
		</div><!--//content-->
    </div><!--//container-->
    <div>
		<iframe id="dnjsp" name="dnjsp" frameborder="0" width="0" height="0"></iframe>
	</div>
</div><!--//wrap-->
<div id="footer">
	<jsp:include page="../common/layout_footer.jsp" flush="true" />
</div><!--//footer-->
</body>
</html>