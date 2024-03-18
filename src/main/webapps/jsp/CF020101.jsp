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

	fn_initLoad();
};

function fn_initLoad() {
	fn_InitGrid();
};

function fn_InitGrid() {
	var caption = "일자^시간^장소^회의 주제^첨부파일^";
	var colWidth = "15%,10%,20%,45%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtProcdInfo", "objSBGrid", caption, colWidth, "500px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						fn_SetSBGridCol("00", "output" , "sPROCD_DT"    , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("01", "output" , "sPROCD_TIME"  , "center", "99:99", false),
						fn_SetSBGridCol("02", "output" , "sPROCD_PLACE" , "center", null, false),
						fn_SetSBGridCol("03", "output" , "sTITLE"       , "left"  , null, false),
						fn_SetSBGridCol("04", "imageF" , "sIMG_URL"     , "center", null, false),
						fn_SetSBGridCol("05", "output" , "sFILE_NM1"    , "center", null, true),
						fn_SetSBGridCol("06", "output" , "sPROCD_NO"    , "center", null, true)
	                ];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("ondblclick", "fn_SelectListInfo", "","");
	objSBGrid.addEventListener("onclick", "fn_GridFileDown", "","");
	
	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "CF020111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.procdInfo;
    objSBGrid.rebuild();
};

function fn_SelectListInfo() {
	var nClickedRow = objSBGrid.getRow();
	var nClickedCol = objSBGrid.getCol();
	
	if (nClickedRow <= 0 )
		return;
	
	if (nClickedCol == 4) {
		var downloadFile = objSBGrid.getTextMatrix(nClickedRow, 5);
		if (downloadFile == "")
			return;
		
		fn_DownloadFile(downloadFile);
	} else {
		var content = "";
		content += "sSEARCH_YN=Y";
		content +="&";
		content += "sPROCD_NO="+ objSBGrid.getTextMatrix(nClickedRow,6);
		
		fn_AjaxSendSesUrl(content, "pms_session_cf0201.jsp", "CF020102.jsp", null);
	}
};

function fn_GridFileDown() {
	var nClickedRow = objSBGrid.getRow();
	var nClickedCol = objSBGrid.getCol();
	if (nClickedCol == 4) {
		var downloadFile = objSBGrid.getTextMatrix(nClickedRow, 5);
		if (downloadFile == "")
			return;
		
		fn_DownloadFile("CF02", downloadFile);
	}
	
	if (nClickedCol == 0) {
		fn_SelectListInfo();
	}
};

function fn_InsertPrjt() {
	window.location = "CF020102.jsp";
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
    		        <h2>[CF02] 회의록</h2>
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
	    		        <div id="prjtProcdInfo">
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
					<input type="hidden" class="inputType" id="sSEQ_NO" name="sSEQ_NO"/>
					<input type="hidden" class="inputType" id="sCategory" name="sCategory" value="CF02"/>
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