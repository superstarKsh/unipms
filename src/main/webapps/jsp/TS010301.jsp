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
						fn_SetSBGridCol("02", "output" , "sTEST_SCN_NM"  , "left", null, false),
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
	
	caption = "테스트케이스ID^테스트케이스명^테스트일자^테스트담당자^테스트결과^담당자^수정예정일자^수정완료일자^";
	colWidth = "12%,22%,12%,10%,10%,10%,12%,12%,10%";
	
	objGridInitInfoDetail = fn_InitSBGrid("prjtTestScnrDetailInfo", "objSBGridDetail", caption, colWidth, "400px", "resultDataDetail", true, null);
	objSBGridDetail = createSBDataGrid(objGridInitInfoDetail);

	objColumnsInfoDetail = [
						fn_SetSBGridCol("00", "output" , "sTEST_CASE_ID"  , "center", null, false),
						fn_SetSBGridCol("01", "output" , "sTEST_CASE_NM"  , "left"  , null, false),
						fn_SetSBGridCol("02", "output" , "sTEST_DT"       , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("03", "output" , "sTEST_USER_NM"  , "center", null, false),
						fn_SetSBGridCol("04", "output" , "sTEST_CONFRM"   , "center", null, false),
						fn_SetSBGridCol("05", "output" , "sDEV_USER_NM"   , "center", null, false),
						fn_SetSBGridCol("06", "output" , "sCORRT_SCHD_DT" , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("07", "output" , "sCORRT_DT"      , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("08", "output" , "sTEST_SCN_ID"   , "center", null, true)
	                ];
	objSBGridDetail.createColumns(objColumnsInfoDetail);

	objSBGridDetail.addEventListener("ondblclick", "fn_SelectListInfoDetail", "","");
	objSBGridDetail.addEventListener("onclick", "fn_SelectListInfoDetailMobile", "","");

	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "TS010301.jsp";
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sTEST_STAGE").val()
	};

	fn_AjaxSend(sendData, "TS010311", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.prjtTestScnrInfo;
    objSBGrid.rebuild();
};

function fn_SelectListInfo() {

	var nClickedRow = objSBGrid.getRow();
	
	if (nClickedRow <= 0 )
		return;
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sTEST_STAGE").val(),
		sTEST_SCN_ID : objSBGrid.getTextMatrix(nClickedRow,1)
	};

	fn_AjaxSend(sendData, "TS010312", fn_SetDataSelectListInfo, null);
};

function fn_SetDataSelectListInfo(result) {
	resultDataDetail = result.prjtTestDetailInfo;
	objSBGridDetail.rebuild();
};

function fn_SelectListInfoDetail() {

	var nClickedRow = objSBGridDetail.getRow();
	if (nClickedRow <= 0 )
		return;

	var content = "";
	content += "sSEARCH_YN=Y";
	content +="&";
	content += "sSEARCH_TEST_SCN_ID="+ objSBGridDetail.getTextMatrix(nClickedRow,8);
	content +="&";
	content += "sSEARCH_TEST_CASE_ID="+ objSBGridDetail.getTextMatrix(nClickedRow,0);
	content +="&";
	content += "sHISTORY_BACK=TS010301";
	
	fn_AjaxSendSesUrl(content, "pms_session_ts0103.jsp", "TS010302.jsp", null);
};

function fn_SelectListInfoDetailMobile() {

	var nClickedCol = objSBGridDetail.getCol();

	if (nClickedCol != 0)
		return;
	
	fn_SelectListInfoDetail();
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
			<jsp:include page="../common/layout_left_ts.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
	    		    <div class="fixbox">
						<!-- START : title -->
	    		        <h2>[TS01] 통합테스트 결과 등록</h2>
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
	    		        <div class="section">
	                        <ul class="btnbox right">
	                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
	                     	</ul>
	                    </div>
	                    <!-- START : grid section -->
		    		    <div class="section">
		    		    	<h3>테스트시나리오</h3>
		    		        <div id="prjtTestScnrInfo">
							</div>
		    		    </div>
		    		    <br/>

	    		        <!-- START : grid section -->
		    		    <div class="section">
		    		    	<h3>테스트케이스</h3>
		    		        <div id="prjtTestScnrDetailInfo">
							</div>
		    		    </div>
		    		    <!-- END : grid section -->
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