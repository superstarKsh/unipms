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

	fn_InitGrid();
};

function fn_InitGrid() {
	
	var caption = "프로젝트명^시작일자^종료일자^PM^sPRJT_ID^sPRJT_STRT_DT^sPRJT_END_DT^sCONT_NO^sCONT_AMT^sCONT_DT^sCONT_TYP^sACTIVE_TYP^sLIVE_ED_DT^sESTI_ED_DT^sOUTSRC_AMT^sFIXD_AMT^sCIRC_AMT";
	var colWidth = "280,100,100,100,100^100^100^100^100^100^100^100^100^100^100^100^100";
	
	objGridInitInfo = fn_InitSBGrid("prjtListInfo", "objSBGrid", caption, colWidth, "400px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);
	
	objColumnsInfo = [
						fn_SetSBGridCol("00", "output" , "sPRJT_NM"        , "left"  , null, false),
						fn_SetSBGridCol("01", "output" , "sPRJT_STRT_DT"   , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("02", "output" , "sPRJT_END_DT"    , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("03", "output" , "sPRJT_MANG_NM"   , "center", null, true),
						fn_SetSBGridCol("04", "output" , "sPRJT_ID"        , "center", null, true),
						fn_SetSBGridCol("05", "output" , "sPRJT_STRT_DT"   , "center", null, true),
						fn_SetSBGridCol("06", "output" , "sPRJT_END_DT"    , "center", null, true),
						fn_SetSBGridCol("07", "output" , "sCONT_NO"        , "center", null, true),
						fn_SetSBGridCol("08", "output" , "sCONT_AMT"       , "center", null, true),
						fn_SetSBGridCol("09", "output" , "sCONT_DT"        , "center", null, true),
						fn_SetSBGridCol("10", "output" , "sCONT_TYP"       , "center", null, true),
						fn_SetSBGridCol("11", "output" , "sACTIVE_TYP"     , "center", null, true),
						fn_SetSBGridCol("12", "output" , "sLIVE_ED_DT"     , "center", null, true),
						fn_SetSBGridCol("13", "output" , "sESTI_ED_DT"     , "center", null, true),
						fn_SetSBGridCol("14", "output" , "sOUTSRC_AMT"     , "center", null, true),
						fn_SetSBGridCol("15", "output" , "sFIXD_AMT"       , "center", null, true),
						fn_SetSBGridCol("16", "output" , "sCIRC_AMT"       , "center", null, true)
				];

	objSBGrid.createColumns(objColumnsInfo);
	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
	
	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_NM : $("#searchPrjtNM").val()
	};

	fn_AjaxSend(sendData, "WSPU010101", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.prjtInfo;
	objSBGrid.rebuild();
};

function fn_SelectListInfo () {
	
	var nClickedRow = objSBGrid.getRow();
	
	opener.document.getElementById("searchPrjtID").value = objSBGrid.getTextMatrix(nClickedRow,4);
	opener.document.getElementById("searchPrjtNM").value = objSBGrid.getTextMatrix(nClickedRow,0);
	opener.document.getElementById("sPRJT_ID").value = objSBGrid.getTextMatrix(nClickedRow,4);
	opener.document.getElementById("sPRJT_NM").value = objSBGrid.getTextMatrix(nClickedRow,0);
	opener.document.getElementById("sPRJT_MANG_NM").value = objSBGrid.getTextMatrix(nClickedRow,3);
	opener.document.getElementById("sPRJT_MANG_ID").value = "";
	opener.document.getElementById("sBIZ_AMOUNT").value = "";
	opener.document.getElementById("sMAN_MONTH").value = "";
	opener.document.getElementById("sCUS_NM").value = "";
	opener.document.getElementById("sCUS_CD").value = "";
	opener.document.getElementById("sMAIN_BIZ_PART_NM").value = "";
	opener.document.getElementById("sMAIN_BIZ_PART_CD").value = "";
	opener.document.getElementById("sPRJT_STRT_DT").value = objSBGrid.getTextMatrix(nClickedRow,5);
	opener.document.getElementById("sPRJT_END_DT").value = objSBGrid.getTextMatrix(nClickedRow,6);
	opener.document.getElementById("sDEV_METHOD").value = "";
	opener.document.getElementById("sPRGM_LANG").value = "";
	opener.document.getElementById("sSERVER_TYPE").value = "";
	opener.document.getElementById("sOS_TYPE").value = "";
	opener.document.getElementById("sUSE_TOOL").value = "";
	opener.document.getElementById("sDBMS_TYPE").value = "";
	opener.document.getElementById("sPRJT_DISC").value = "";
	opener.document.getElementById("sETC_DISC").value = "";
	opener.document.getElementById("sETC_TYPE").value = "";
	opener.document.getElementById("sCONT_NO").value = objSBGrid.getTextMatrix(nClickedRow,7);
	opener.document.getElementById("sCONT_AMT").value = objSBGrid.getTextMatrix(nClickedRow,8);
	opener.document.getElementById("sCONT_DT").value = objSBGrid.getTextMatrix(nClickedRow,9);
	opener.document.getElementById("sCONT_TYP").value = objSBGrid.getTextMatrix(nClickedRow,10);
	opener.document.getElementById("sACTIVE_TYP").value = objSBGrid.getTextMatrix(nClickedRow,11);
	opener.document.getElementById("sLIVE_ED_DT").value = objSBGrid.getTextMatrix(nClickedRow,12);
	opener.document.getElementById("sESTI_ED_DT").value = objSBGrid.getTextMatrix(nClickedRow,13);
	opener.document.getElementById("sOUTSRC_AMT").value = objSBGrid.getTextMatrix(nClickedRow,14);
	opener.document.getElementById("sFIXD_AMT").value = objSBGrid.getTextMatrix(nClickedRow,15);
	opener.document.getElementById("sCIRC_AMT").value = objSBGrid.getTextMatrix(nClickedRow,16);

	self.close();
};

</script>
</head>

<body onload="fn_Init()"  oncontextmenu="return false">
<div class="popup">

	<h2>프로젝트현황조회</h2>
	<div class="section">
		<div class="search">
			<div class="box">
				<ul>
					<li class="name"><span>프로젝트명</span></li>
					<li><input type="text" class="txtinp w300" id="searchPrjtNM" name="searchPrjtNM"></li>
				</ul>
			</div>
		</div><!--//search-->
	</div><!--//section-->
	
	<div class="section">
		<ul class="btnbox right">
			<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();"  class="btn_search imgbtn_black">조회</a></li>
		</ul>
	</div><!--//section-->
	
	<div class="section">
        <div id="prjtListInfo"></div>
    </div><!--//section-->
</div>
</body>
</html>