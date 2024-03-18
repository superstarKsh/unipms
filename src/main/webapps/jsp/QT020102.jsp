<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
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
	var caption = "ID^품질관리명^시작일자^종료일자^점검구분^점검자^대상구분^비고^^";
	var colWidth = "13%,20%,13%,13%,10%,15%,10%,20%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtQtInfo", "objSBGrid", caption, colWidth, "250px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						fn_SetSBGridCol("00", "output" , "sQULTY_ID"        , "center", null, false),
						fn_SetSBGridCol("01", "output" , "sTITLE"           , "left"  , null, false),
						fn_SetSBGridCol("02", "output" , "sSTRT_DT"         , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("03", "output" , "sEND_DT"          , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("04", "output" , "sCNTL_TYPE_NM"    , "center", null, false),
						fn_SetSBGridCol("05", "output" , "sCNTL_USER_NM"    , "center", null, false),
						fn_SetSBGridCol("06", "output" , "sTARGET_TYPE_NM"  , "center", null, false),
						fn_SetSBGridCol("07", "output" , "sCONTENTS"        , "left"  , null, false),
						fn_SetSBGridCol("08", "output" , "sCNTL_TYPE"       , "center", null, true),
						fn_SetSBGridCol("09", "output" , "sTARGET_TYPE"     , "center", null, true),
						fn_SetSBGridCol("10", "output" , "sCNTL_USER_ID"    , "center", null, true)
	                ];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
	
	caption = "ID^제목^점검일자^점검자^점검완료일자^완료구분^점검내용^결함사항^담당자^수정예정일자^수정완료일자^^";
	colWidth = "15%,20%,13%,10%,13%,10%,10%,20%,10%,10%,10%,10%";
	
	GridInitInfoDetail = fn_InitSBGrid("prjtQtMngInfo", "objSBGridDetail", caption, colWidth, "350px", "resultDataDetail", true, null);
	objSBGridDetail = createSBDataGrid(GridInitInfoDetail);

	objColumnsInfoDetail = [
						fn_SetSBGridCol("00", "output" , "sQULTY_CNTL_ID"   , "center", null, false),
						fn_SetSBGridCol("01", "output" , "sTITLE"           , "left"  , null, false),
						fn_SetSBGridCol("02", "output" , "sCNTL_DT"         , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("03", "output" , "sCNTL_USER_NM"    , "center", null, false),
						fn_SetSBGridCol("04", "output" , "sCORRT_DT"        , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("05", "output" , "sCONFRM_YN"       , "center", null, false),
						fn_SetSBGridCol("06", "output" , "sCNTL_DESC"       , "left"  , null, true),
						fn_SetSBGridCol("07", "output" , "sISSUE_DESC"      , "left"  , null, true),
						fn_SetSBGridCol("08", "output" , "sDEV_USER_NM"     , "center", null, false),
						fn_SetSBGridCol("09", "output" , "sCORRT_SCHD_DT"   , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("10", "output" , "sCORRT_DT"        , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("11", "output" , "sFILE_NM"         , "center", null, true),
						fn_SetSBGridCol("12", "output" , "sQULTY_ID"        , "center", null, true),
						fn_SetSBGridCol("13", "output" , "sQULTY_TITLE"     , "center", null, true)
					];
	objSBGridDetail.createColumns(objColumnsInfoDetail);

	objSBGridDetail.addEventListener("ondblclick", "fn_SelectListInfoDetail", "","");
	objSBGridDetail.addEventListener("onclick", "fn_SelectListInfoDetailMobile", "","");

	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};
	
	fn_AjaxSend(sendData, "QT010111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.qultyInfo;
    objSBGrid.rebuild();
};

function fn_SelectListInfo() {
	var nClickedRow = objSBGrid.getRow();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sQULTY_ID : objSBGrid.getTextMatrix(nClickedRow,0)
	};

	fn_AjaxSend(sendData, "QT020111", fn_SetDataSelectListInfo, null);
};

function fn_SetDataSelectListInfo(result) {
	resultDataDetail = result.qultyInfo;
    objSBGridDetail.rebuild();
};

function fn_SelectListInfoDetail() {
	
	var nClickedRow = objSBGridDetail.getRow();
	if (nClickedRow <= 0 )
		return;

	var content = "";
	content += "sSEARCH_YN=Y";
	content +="&";
	content += "sQULTY_ID="+ objSBGridDetail.getTextMatrix(nClickedRow,12);
	content +="&";
	content += "sQULTY_TITLE="+ objSBGridDetail.getTextMatrix(nClickedRow,13);
	content +="&";
	content += "sQULTY_CNTL_ID="+ objSBGridDetail.getTextMatrix(nClickedRow,0);

	fn_AjaxSendSesUrl(content, "pms_session_qt0201.jsp", "QT020101.jsp", null);
};

function fn_SelectListInfoDetailMobile() {
	var nClickedCol = objSBGridDetail.getCol();
	if (nClickedCol != 0 )
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
			<jsp:include page="../common/layout_left_qt.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[QT02] 진행현황조회</h2>
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
    		        <!-- END : search section -->

    		        <!-- START : grid section -->
	    		    <div class="section">
	    		    	<h3>품질관리 일정(목록)</h3>
	    		        <div id="prjtQtInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
					<br/>
    		        <!-- START : grid section -->
	    		    <div class="section">
	    		    	<h3>품질관리 진행현황</h3>
	    		        <div id="prjtQtMngInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		    
    		    </div><!--//pixbox-->
    		    
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