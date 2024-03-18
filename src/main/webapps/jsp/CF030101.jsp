<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- start : Html Header -->
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

	fn_InitLoad();
};

function fn_InitLoad() {
	$("#searchPrjtStage").empty();
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};
	
	fn_AjaxSend(sendData, "CF030101", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var selPrjtStage = '<option value="">선 택</option>';
	$.each(result.prjtStage,function(key, value) {
		selPrjtStage = selPrjtStage + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#searchPrjtStage").empty().append(selPrjtStage);
	});

	fn_InitGrid();
};

function fn_InitGrid() {

	var caption = "이슈ID^등록일자^이슈 TITLE^등록자^담당자^구분^이슈중요도^진행상태^조치예정일자^완료일자^첨부파일^PRJT_STAGE^TASK_ID^sFILE_NM";
	var colWidth = "15%,13%,25%,10%,10%,10%,10%,10%,13%,13%,10%,10%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtIssueInfo", "objSBGrid", caption, colWidth, "400px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
				fn_SetSBGridCol("00", "output" , "sISSUE_ID"       , "center", null, false),
				fn_SetSBGridCol("01", "output" , "sREG_DT"         , "center", "yyyy.mm.dd", false),
				fn_SetSBGridCol("02", "output" , "sTITLE"          , "left"  , null, false),
				fn_SetSBGridCol("03", "output" , "sREG_USER_NM"    , "center", null, false),
				fn_SetSBGridCol("04", "output" , "sCHRG_USER_NM"   , "center", null, false),
				fn_SetSBGridCol("05", "output" , "sISSUE_TYPE_NM"  , "center", null, false),
				fn_SetSBGridCol("06", "output" , "sISSUE_IMPT_NM"  , "center", null, false),
				fn_SetSBGridCol("07", "output" , "sPROC_STAGE_NM"  , "center", null, false),
				fn_SetSBGridCol("08", "output" , "sAPPR_DT"        , "center", "yyyy.mm.dd", false),
				fn_SetSBGridCol("09", "output" , "sCOMPL_DT"       , "center", "yyyy.mm.dd", false),
				fn_SetSBGridCol("10", "imageF" , "sIMG_URL"        , "center", null, false),
				fn_SetSBGridCol("11", "output" , "sPRJT_STAGE"     , "center", null, true),
				fn_SetSBGridCol("12", "output" , "sTASK_ID"        , "center", null, true),
				fn_SetSBGridCol("13", "output" , "sFILE_NM"        , "center", null, true)
	];

	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("ondblclick", "fn_SelectListInfo", "","");
	objSBGrid.addEventListener("onclick", "fn_GridFileDown", "","");

	fn_SelectPrjtInfo();
};

function fn_SelectInitTask(){

	$("#searchTaksInfo").empty();
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#searchPrjtStage option:selected").val()
	};

	fn_AjaxSend(sendData, "CF030181", fn_SetDataSelectInitTask, null);
};

function fn_SetDataSelectInitTask(result) {
	var selTaksInfo = '<option value="">선 택</option>';
	$.each(result.prjTaskInfo,function(key, value) {
		selTaksInfo = selTaksInfo + '<option value="' + value.sTASK_ID + '">' + value.sTASK_NM + '</option>';
		$("#searchTaksInfo").empty().append(selTaksInfo);
	});
};

function fn_SelectPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#searchPrjtStage option:selected").val(),
		sTASK_ID : $("#searchTaksInfo option:selected").val()
	};

	fn_AjaxSend(sendData, "CF030111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.prjtIssueInfo;
	objSBGrid.rebuild();
};

function fn_SelectListInfo() {
	
	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;
	
	var nClickedCol = objSBGrid.getCol();
	if(nClickedCol == '10'){
		var downloadFile = objSBGrid.getTextMatrix(nClickedRow, 13);
		if (downloadFile == "")
			return;
		
		fn_DownloadFile("CF03", downloadFile);
	} else {
		var content = "";
		content += "sSEARCH_YN=Y";
		content += "&";
		content += "sSEARCH_PRJT_STAGE="+ objSBGrid.getTextMatrix(nClickedRow,11);
		content += "&";
		content += "sSEARCH_TASK_ID="+ objSBGrid.getTextMatrix(nClickedRow,12);
		content += "&";
		content += "sSEARCH_ISSUE_ID="+ objSBGrid.getTextMatrix(nClickedRow,0);

		fn_AjaxSendSesUrl(content, "pms_session_cf0301.jsp", "CF030102.jsp", null);
	}
};

function fn_GridFileDown() {
	var nClickedRow = objSBGrid.getRow();	
	var nClickedCol = objSBGrid.getCol();
	if(nClickedCol == '10'){
		var downloadFile = objSBGrid.getTextMatrix(nClickedRow, 13);
		if (downloadFile == "")
			return;
		
		fn_DownloadFile("CF03", downloadFile);
	}
	
	if(nClickedCol == '0'){
		fn_SelectListInfo();
	}
};

function fn_InsertPrjt() {
	window.location = "CF030102.jsp";
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
			<jsp:include page="../common/layout_left_cf.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[CF03] 이슈/리스크</h2>
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
    		                    <ul>
    		                        <li class="name"><span>진행단계</span></li>
    		                        <li><select class="selectbox" id="searchPrjtStage" name="searchPrjtStage" onChange="javascript:fn_SelectInitTask();"></select></li>
    		                    </ul>
    		                    <ul>
    		                        <li class="name"><span>Task 구분</span></li>
    		                        <li><select class="selectbox w300" id="searchTaksInfo" name="searchTaksInfo"></select></li>
    		                    </ul>
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        <div class="section">
                        <ul class="btnbox right">
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                     	</ul>
                    </div>
    		        <!-- END : search section -->
					<!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtIssueInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		    
	    		    <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">등록</a></li>
    		            </ul>
    		        </div><!--//section-->
    		    
    		    </div><!--//pixbox-->
    		    <div id="hiddenColumn">
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