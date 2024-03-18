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

	fn_InitGrid();
};

function fn_InitGrid() {
	var caption = "테스트ID^테스트일자^테스트담당자^테스트 항목^테스트결과^심각도^TASK ID^TASK 명^담당자^수정예정일자^수정완료일자";
	var colWidth = "10%,12%,12%,20%,10%,10%,10%,20%,12%,12%,12%";
	
	objGridInitInfo = fn_InitSBGrid("prjtTestInfo", "objSBGrid", caption, colWidth, "450px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						fn_SetSBGridCol("00", "output" , "sTEST_ID"       , "center", null, false),
						fn_SetSBGridCol("01", "output" , "sTEST_DT"       , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("02", "output" , "sTEST_USER_NM"  , "left"  , null, false),
						fn_SetSBGridCol("03", "output" , "sTEST_TITLE"    , "left"  , null, false),
						fn_SetSBGridCol("04", "output" , "sTEST_CONFRM"   , "center", null, false),
						fn_SetSBGridCol("05", "output" , "sTEST_SVRT_NM"  , "center", null, false),
						fn_SetSBGridCol("06", "output" , "sTASK_ID"       , "center", null, false),
						fn_SetSBGridCol("07", "output" , "sTASK_NM"       , "left"  , null, false),
						fn_SetSBGridCol("08", "output" , "sDEV_USER_NM"   , "left"  , null, false),
						fn_SetSBGridCol("09", "output" , "sCORRT_SCHD_DT" , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("10", "output" , "sCORRT_DT"      , "center", "yyyy.mm.dd", false)
				];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("ondblclick", "fn_SelectListInfo", "","");
	objSBGrid.addEventListener("onclick", "fn_SelectListInfoMobile", "","");

	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "TS020111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.prjtTestInfo;
    objSBGrid.rebuild();
};

function fn_SelectListInfo() {
	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;

	var content = "";
	content += "sSEARCH_YN=Y";
	content +="&";
	content += "sSEARCH_TEST_ID="+ objSBGrid.getTextMatrix(nClickedRow,0);
	content +="&";
	content += "sHISTORY_BACK=TS020101";

	fn_AjaxSendSesUrl(content, "pms_session_ts0201.jsp", "TS020102.jsp", null);
};

function fn_SelectListInfoMobile() {
	var nClickedCol = objSBGrid.getCol();
	if (nClickedCol != 0)
		return;

	fn_SelectListInfo();
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
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[TS02] 건별테스트결과조회</h2>
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
	    		        <div id="prjtTestInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
				</div><!--//pixbox-->
    		    <div id="hiddenColumn">
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