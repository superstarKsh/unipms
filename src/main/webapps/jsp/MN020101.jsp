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
	$("#sPRJT_ID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");

	fn_SelectPrjtInfo();
};

var objGridInitInfoPrjtStage;
var objSBGridPrjtStage;
var resultPrjtStage;
var objColumnsInfoPrjtStage;

var objGridInitInfoPrjtStageDetail;
var objSBGridPrjtStageDetail;
var resultPrjtStageDetail;
var objColumnsInfoPrjtStageDetail;

var objGridInitInfoDevSchlTotal;
var objSBGridDevSchlTotal;
var resultDevSchlTotal;
var objColumnsInfoDevSchlTotal;

var objGridInitInfoDevSchl;
var objSBGridDevSchl;
var resultDevSchl;
var objColumnsInfoDevSchl;

var objGridInitInfoIssue;
var objSBGridIssue;
var resultIssue;
var objColumnsInfoIssue;

var objGridInitInfoNotice;
var objSBGridNotice;
var resultNotice;
var objColumnsInfoNotice;

function fn_SelectPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#sPRJT_ID").val()
	};	

	fn_AjaxSend(sendData, "MN020111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	if (result.errInfo != null && result.errInfo != 'undefined') {
		fn_ServiceErrorAlert(result.errInfo);
		return;
	}
			
	fn_PrjtStageGrid(result.prjtStage);
	fn_PrjtStageDetailGrid(result.prjtStageDetail);
	fn_DevSchlGridTotal(result.prjtDevSchlT);
	fn_DevSchlGrid(result.prjtDevSchl);
	fn_IssueGrid(result.prjtIssue);
	fn_NoticeGrid(result.prjtNotice);
			
	fn_SetPrjtStageDetailGridChange(result.prjtStageDetail);
};

function fn_PrjtStageGrid(result) {
	
	resultPrjtStage = [{"col0":"기 간"}];
	
	var strCaption = "";
	var strWidth = "";
	var i = 0;
	
	strCaption = "단 계";
	strWidth = "10%";
	
	for (i=0; i<result.length; i++) {
		strCaption += "^" + result[i].sPRJT_STAGE_NM;
		strWidth += ",20%";
	}
	
	for (i = 0 ; i < result.length ; i++){
		var strtDt = result[i].sSTRT_DT;
		var endDt = result[i].sEND_DT;
		
		if (strtDt.length == 8)
			strtDt = strtDt.substring(0,4) + "." + strtDt.substring(4,6) + "." + strtDt.substring(6,8);
		
		if (endDt.length == 8)
			endDt = endDt.substring(0,4) + "." + endDt.substring(4,6) + "." + endDt.substring(6,8);
	
		resultPrjtStage[0]["col" + (i+1).toString()] = strtDt + " ~ " + endDt;
	}
	
	objGridInitInfoPrjtStage = {
			"strParentId": "prjtStage",
			"strId" : "objSBGridPrjtStage",
			"strCaption" : strCaption,
			"strColWidth" : strWidth,
			"strRowHeight" : "25",
			"strDataHeight" : "50",
			"strJsonRef" : "resultPrjtStage",
			"strFocusColor"	:"#FEEEDB",
			"strSelectFontColor" : "#000",
			"strExplorerbar" : "sortshow",
			"bAllowCopy" : true,
			"strStyle" : "width:100%; height:95px; font-family:Nanum Gothic, gulim, arial;font-size:10pt;"
	};
	objSBGridPrjtStage = createSBDataGrid(objGridInitInfoPrjtStage);

	objColumnsInfoPrjtStage = [
						{"id": "col0","type": "output", "ref": "col0", "style": "text-align:center;background-color:#EAEFF3"}
	                ];

	for (i=0; i< result.length; i++) {
		var objTemp = {};
		objTemp.id = 'col' + (i+1).toString();
		objTemp.ref = 'col' + (i+1).toString();
		objTemp.type = "output";
		
		if (result[i].sCURR_STAGE == "1") {
			
			if (fn_GetDate("") >= result[i].sSTRT_DT
				&& fn_GetDate("") <= result[i].sEND_DT) {
				objTemp.style = "text-align:center;background-color:#F6CED8";
			} else {
				objTemp.style = "text-align:center;background-color:#F6CED8;color:#FF0000";
			};
			
		} else {
			objTemp.style = "text-align:center;";
		}
		
		objColumnsInfoPrjtStage.push(objTemp);
		objTemp = null;
	}

	objSBGridPrjtStage.createColumns(objColumnsInfoPrjtStage);
};

function fn_PrjtStageDetailGrid(result) {
	resultPrjtStageDetail = result;

	var caption = "TASK 명^시작일자^종료일자^목표율(%)^진행률(%)";
	var colWidth = "40%,15%,15%,15%,15%";

	objGridInitInfoPrjtStageDetail = fn_InitSBGrid("prjtStageDetail", "objSBGridPrjtStageDetail", caption, colWidth, "203px", "resultPrjtStageDetail", true, 3);
	objSBGridPrjtStageDetail = createSBDataGrid(objGridInitInfoPrjtStageDetail);
	
	objColumnsInfoPrjtStageDetail = [
						fn_SetSBGridCol("00", "output" , "sTASK_ID"      , "left"  , null, false),
						fn_SetSBGridCol("01", "output" , "sSTRT_DT"      , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("02", "output" , "sEND_DT"       , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("03", "output" , "sPURPOSE_RT"   , "right" , null, false),
						fn_SetSBGridCol("04", "output" , "sPROGRESS_RT"  , "right" , null, false)
	];

	objSBGridPrjtStageDetail.createColumns(objColumnsInfoPrjtStageDetail);
};

function fn_SetPrjtStageDetailGridChange(result) {
	if (objSBGridPrjtStageDetail == null)
		return;

	objSBGridPrjtStageDetail.setGroup("none");
	
	for(var i=1; i<objSBGridPrjtStageDetail.rows; i++)	{
		objSBGridPrjtStageDetail.setGroupLevel(i, objSBGridPrjtStageDetail.getTextMatrix(i,0).length/2);
		
		result[i-1].sTASK_ID = result[i-1].sTASK_NM;
		objSBGridPrjtStageDetail.setRowData(i, result[i-1]);

		if ((fn_GetDate("") > result[i-1].sEND_DT) && result[i-1].sPROGRESS_RT < 100) {
			objSBGridPrjtStageDetail.setCellStyle("color", i, 0, i, 0, "#FF0000");
			objSBGridPrjtStageDetail.setCellStyle("color", i, 4, i, 0, "#FF0000");
		}
	}

	objSBGridPrjtStageDetail.setGroup("complete");

	for(var i=0; i<result.length; i++)	{
		if (result[i].sTASK_LEVEL == 2)	
			objSBGridPrjtStageDetail.setGroupCollapsed(i+1, true);
	}
};

function fn_DevSchlGridTotal(result) {
	
	resultDevSchlTotal = result;
	
	var caption = "총건수^현재진행건수^완료건수^미완료건수^진행율 (%)";
	var colWidth = "20%,20%,20%,20%,20%";

	objGridInitInfoDevSchlTotal = fn_InitSBGrid("devInfoTotal", "objSBGridDevSchlTotal", caption, colWidth, "53px", "resultDevSchlTotal", true, null);
	objSBGridDevSchlTotal = createSBDataGrid(objGridInitInfoDevSchlTotal);

	objColumnsInfoDevSchlTotal = [
						fn_SetSBGridCol("00", "output" , "sPRG_CNT"      , "center" , null, false),
						fn_SetSBGridCol("01", "output" , "sPRG_CURR_CNT" , "center" , null, false),
						fn_SetSBGridCol("02", "output" , "sPRG_CMPL_CNT" , "center" , null, false),
						fn_SetSBGridCol("03", "output" , "sPRG_DLAY_CNT" , "center" , null, false),
						fn_SetSBGridCol("04", "output" , "sPRG_CMPL_PER" , "right"  , null, false)
	                ];

	objSBGridDevSchlTotal.createColumns(objColumnsInfoDevSchlTotal);
};

function fn_DevSchlGrid(result) {
	
	resultDevSchl = result;
	
	var caption = "TASK ID^TASK 명^총건수^현재 진행건수^완료건수^미완료건수^진행율";
	var colWidth = "10%,40%,10%,10%,10%,10%,10%";

	objGridInitInfoDevSchl = fn_InitSBGrid("devInfo", "objSBGridDevSchl", caption, colWidth, "200px", "resultDevSchl", true, null);
	objSBGridDevSchl = createSBDataGrid(objGridInitInfoDevSchl);

	objColumnsInfoDevSchl = [
						fn_SetSBGridCol("00", "output" , "sTASK_ID"      , "center" , null, false),
						fn_SetSBGridCol("01", "output" , "sTASK_NM"      , "left"   , null, false),
						fn_SetSBGridCol("02", "output" , "sPRG_CNT"      , "center" , null, false),
						fn_SetSBGridCol("03", "output" , "sPRG_CURR_CNT" , "center" , null, false),
						fn_SetSBGridCol("04", "output" , "sPRG_CMPL_CNT" , "center" , null, false),
						fn_SetSBGridCol("05", "output" , "sPRG_DLAY_CNT" , "center" , null, false),
						fn_SetSBGridCol("06", "output" , "sPRG_CMPL_PER" , "right"  , null, false)
	                ];
	objSBGridDevSchl.createColumns(objColumnsInfoDevSchl);
};

function fn_IssueGrid(result) {
	
	resultIssue = result;

	var caption = "이슈 ID^이슈 TITLE^중요도^진행상태^등록일자^등록자^조치예정일자";
	var colWidth = "15%,40%,10%,15%,15%,15%";

	objGridInitInfoIssue = fn_InitSBGrid("issueInfo", "objSBGridIssue", caption, colWidth, "150px", "resultIssue", true, null);
	objSBGridIssue = createSBDataGrid(objGridInitInfoIssue);

	objColumnsInfoIssue = [
						fn_SetSBGridCol("00", "output" , "sISSUE_ID"       , "center" , null, false),
						fn_SetSBGridCol("01", "output" , "sTITLE"          , "left"   , null, false),
						fn_SetSBGridCol("02", "output" , "sISSUE_IMPT_NM"  , "center" , null, false),
						fn_SetSBGridCol("03", "output" , "sPROC_STAGE_NM"  , "center" , null, false),
						fn_SetSBGridCol("04", "output" , "sREG_DT"         , "center" , "yyyy.mm.dd", false),
						fn_SetSBGridCol("05", "output" , "sREG_USER_NM"    , "center" , null, false),
						fn_SetSBGridCol("06", "output" , "sAPPR_DT"        , "center" , "yyyy.mm.dd", false),
						fn_SetSBGridCol("07", "output" , "sPRJT_STAGE"     , "center" , null, true),
						fn_SetSBGridCol("08", "output" , "sTASK_ID"        , "center" , null, true)
	                ];
	objSBGridIssue.createColumns(objColumnsInfoIssue);

	objSBGridIssue.addEventListener("ondblclick", "fn_SelectIssueListInfo", "","");
	objSBGridIssue.addEventListener("onclick", "fn_SelectIssueListInfoClick", "","");
};

function fn_NoticeGrid(result) {
	
	resultNotice = result;

	var caption = "일련번호^제목^등록일^작성자";
	var colWidth = "10%,60%,15%,15%";

	objGridInitInfoNotice = fn_InitSBGrid("noticeInfo", "objSBGridNotice", caption, colWidth, "150px", "resultNotice", true, null);
	objSBGridNotice = createSBDataGrid(objGridInitInfoNotice);

	objColumnsInfoNotice = [
						fn_SetSBGridCol("00", "output" , "sSEQ_NO"       , "center" , null, false),
						fn_SetSBGridCol("01", "output" , "sTITLE"        , "left"   , null, false),
						fn_SetSBGridCol("02", "output" , "sREG_DT"       , "center" , "yyyy.mm.dd", false),
						fn_SetSBGridCol("03", "output" , "sREG_USER_NM"  , "center" , null, false)
	                ];
	objSBGridNotice.createColumns(objColumnsInfoNotice);

	objSBGridNotice.addEventListener("ondblclick", "fn_SelectNoticeListInfo", "","");
	objSBGridNotice.addEventListener("onclick", "fn_SelectNoticeListInfoClick", "","");
};

function fn_SelectIssueListInfo() {

	var nClickedRow = objSBGridIssue.getRow();
	if (nClickedRow <= 0 )
		return;

	var content = "";
	content += "sSEARCH_YN=Y";
	content += "&";
	content += "sSEARCH_PRJT_STAGE="+ objSBGridIssue.getTextMatrix(nClickedRow,7);
	content += "&";
	content += "sSEARCH_TASK_ID="+ objSBGridIssue.getTextMatrix(nClickedRow,8);
	content += "&";
	content += "sSEARCH_ISSUE_ID="+ objSBGridIssue.getTextMatrix(nClickedRow,0);

	fn_AjaxSendSesUrl(content, "pms_session_cf0301.jsp", "CF030102.jsp", null);
};

function fn_SelectIssueListInfoClick() {

	var nClickedRow = objSBGridIssue.getRow();
	if (nClickedRow <= 0 )
		return;

	var nClickedCol = objSBGridIssue.getCol();
	if (nClickedCol != 0)
		return;

	var content = "";
	content += "sSEARCH_YN=Y";
	content += "&";
	content += "sSEARCH_PRJT_STAGE="+ objSBGridIssue.getTextMatrix(nClickedRow,7);
	content += "&";
	content += "sSEARCH_TASK_ID="+ objSBGridIssue.getTextMatrix(nClickedRow,8);
	content += "&";
	content += "sSEARCH_ISSUE_ID="+ objSBGridIssue.getTextMatrix(nClickedRow,0);

	fn_AjaxSendSesUrl(content, "pms_session_cf0301.jsp", "CF030102.jsp", null);
};

function fn_SelectNoticeListInfo() {
	
	var nClickedRow = objSBGridNotice.getRow();
	if (nClickedRow <= 0 )
		return;

	var content = "";
	content += "sSEARCH_YN=Y";
	content += "&";
	content += "sSEARCH_SEQ_NO="+ objSBGridNotice.getTextMatrix(nClickedRow,0);

	fn_AjaxSendSesUrl(content, "pms_session_nt0101.jsp", "NT010102.jsp", null);
};

function fn_SelectNoticeListInfoClick() {
	
	var nClickedRow = objSBGridNotice.getRow();
	if (nClickedRow <= 0 )
		return;

	var nClickedCol = objSBGridNotice.getCol();
	if (nClickedCol != 0)
		return;

	var content = "";
	content += "sSEARCH_YN=Y";
	content += "&";
	content += "sSEARCH_SEQ_NO="+ objSBGridNotice.getTextMatrix(nClickedRow,0);

	fn_AjaxSendSesUrl(content, "pms_session_nt0101.jsp", "NT010102.jsp", null);
};

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">

<div id="wraphome">

	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header_prjt_home.jsp" flush="true" />
	</div>
	<!-- END : include -->

	<div id="containerhome">
 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">
					<br/>
	     		    
					<!-- START : grid section -->
		    	    <div class="section">
		    	        <h3>프로젝트 진행 현황</h3>
		    	        <div id="prjtStage">
						</div>
		    	    </div>
		   		    <!-- END : grid section -->
		    		    
					<!-- START : grid section -->
		   		    <div class="section">
		    	        <div id="prjtStageDetail">
						</div>
		    		</div>
		    		<!-- END : grid section -->
	
	    		    <br/>
					<!-- START : grid section -->
		    		<div class="section">
		    		    <h3>개발진행현황</h3>
		    		    <div id="devInfoTotal">
						</div>
		    		</div>
		    		<!-- END : grid section -->
		    		    
					<!-- START : grid section -->
		    	    <div class="section">
		    		    <div id="devInfo">
						</div>
		    		</div>
		    		<br/>
		    		<!-- END : grid section -->
					<!-- START : grid section -->
		    		<div class="section">
		    		    <h3>진행이슈현황</h3>
		    		    <div id="issueInfo">
						</div>
		    		</div>
		    		<br/>
		    		<!-- END : grid section -->
					<!-- START : grid section -->
		    		<div class="section">
		    		    <h3>공지사항</h3>
		    		    <div id="noticeInfo">
						</div>						
		    		</div>
		    		<!-- END : grid section -->

				</div><!--//pixbox-->
	    		<div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sPRJT_ID" name="sPRJT_ID"/>
				</div>	
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