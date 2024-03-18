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
	$("#searchPrjtRptYear").empty();
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "CF010181", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var selPrjtYearInfo = '<option value="">선 택</option>';
	$.each(result.prjtYearInfo,function(key, value) {
		selPrjtYearInfo = selPrjtYearInfo + '<option value="' + value.sPRJT_YEAR + '">' + value.sPRJT_YEAR + '</option>';
		$("#searchPrjtRptYear").empty().append(selPrjtYearInfo);
	});

	fn_InitGrid();
};

function fn_SelectPrjtYear() {

	$("#searchPrjtRptDt").empty();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_YEAR : $("#searchPrjtRptYear option:selected").val()
	};

	fn_AjaxSend(sendData, "CF010182", fn_SetDataSelectPrjtYear, null);
};

function fn_SetDataSelectPrjtYear(result) {
	var selPrjtWeekInfo = '<option value="">선 택</option>';
	$.each(result.prjtWeekInfo,function(key, value) {
		selPrjtWeekInfo = selPrjtWeekInfo + '<option value="' + value.sSTRT_DT + value.sEND_DT + '">' + fn_SetDateType(value.sSTRT_DT, ".") + " ~ " + fn_SetDateType(value.sEND_DT, ".") + '</option>';
		$("#searchPrjtRptDt").empty().append(selPrjtWeekInfo);
	});
};

function fn_InitGrid() {
	
	var caption = "주차^주차^시작일자^종료일자^PM^첨부파일^^";
	var colWidth = "15%,30%,15%,15%,15%,10%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtWeekRptInfo", "objSBGrid", caption, colWidth, "500px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
					fn_SetSBGridCol("00", "output" , "sPRJT_WEEK"    , "center", null, false),
					fn_SetSBGridCol("01", "output" , "sWEEK_ORDER"   , "center", null, false),
					fn_SetSBGridCol("02", "output" , "sSTRT_DT"      , "center", "yyyy.mm.dd", false),
					fn_SetSBGridCol("03", "output" , "sEND_DT"       , "center", "yyyy.mm.dd", false),
					fn_SetSBGridCol("04", "output" , "sPRJT_MANG_NM" , "center", null, false),
					fn_SetSBGridCol("05", "imageF" , "sIMG_URL"      , "center", null, false),
					fn_SetSBGridCol("06", "output" , "sFILE_NM"      , "center", null, true),
					fn_SetSBGridCol("07", "output" , "sPRJT_YEAR"    , "center", null, true)
	];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("ondblclick", "fn_SelectListInfo", "","");
	objSBGrid.addEventListener("onclick", "fn_GridFileDown", "","");
	
	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {

	var tmp = $("#searchPrjtRptDt option:selected").val();
	
	var sCurrDt = "";
	if (tmp == null) {
		sCurrDt = "";
	} else {
		sCurrDt = tmp.substring(0, 8);
	}

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_YEAR : $("#searchPrjtRptYear option:selected").val(),
		sCURR_DT : sCurrDt
	};

	fn_AjaxSend(sendData, "CF010111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.prjtWeekRptInfo;
    objSBGrid.rebuild();
};

function fn_SelectListInfo() {
	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;
	
	var content = "";
	content += "sSEARCH_YN=Y";
	content += "&";
	content += "sSEARCH_RPRT_STRT_DT="+ objSBGrid.getTextMatrix(nClickedRow,2);
	content += "&";
	content += "sSEARCH_RPRT_END_DT="+ objSBGrid.getTextMatrix(nClickedRow,3);
	content += "&";
	content += "sSEARCH_RPRT_YEAR="+ objSBGrid.getTextMatrix(nClickedRow,7);

	fn_AjaxSendSesUrl(content, "pms_session_cf0101.jsp", "CF010102.jsp", null);
};

function fn_GridFileDown() {
	var nClickedRow = objSBGrid.getRow();
	var nClickedCol = objSBGrid.getCol();
	if (nClickedCol == 5) {
		var downloadFile = objSBGrid.getTextMatrix(nClickedRow, 6);
		if (downloadFile == "")
			return;
		
		fn_DownloadFile("CF01", downloadFile);
	}
	
	if (nClickedCol == 0) {
		fn_SelectListInfo();
	}
};

function fn_InsertPrjt() {
	window.location = "CF010102.jsp";
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
    		        <h2>[CF01] 주간보고</h2>
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
    		                        <li class="name"><span>주</span></li>
    		                        <li><select class="selectbox w100" id="searchPrjtRptYear" name="searchPrjtRptYear" onchange="javascript:fn_SelectPrjtYear()"></select></li>
    		                        <li><select class="selectbox w300" id="searchPrjtRptDt" name="searchPrjtRptDt"></select></li>
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
	    		        <div id="prjtWeekRptInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		    
	    		    <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">등록</a></li>
    		            </ul>
    		        </div><!--//section-->
    		    
    		    </div><!--//pixbox-->
    		    <div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sSEQ_NO" name="sSEQ_NO"/>
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