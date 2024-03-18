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
	$("#sPRJT_ID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	fn_InitGrid();
};

function fn_InitGrid() {
	
	var caption = "프로젝트명^진행단계^시작일자^종료일자^PM^sPRJT_ID^sCURR_STAGE^sDEV_STAGE^sTEST_STAGE";
	var colWidth = "200,80,100,100,100,80,80,80,80";
	
	objGridInitInfo = fn_InitSBGrid("prjtListInfo", "objSBGrid", caption, colWidth, "400px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
		fn_SetSBGridCol("00", "output", "sPRJT_NM"       , "left"  , null, false),
		fn_SetSBGridCol("01", "output", "sCURR_STAGE_NM" , "center", null, false),
		fn_SetSBGridCol("02", "output", "sPRJT_STRT_DT"  , "center", "yyyy.mm.dd", false),
		fn_SetSBGridCol("03", "output", "sPRJT_END_DT"   , "center", "yyyy.mm.dd", false),
		fn_SetSBGridCol("04", "output", "sPRJT_MANG_NM"  , "center", null, false),
		fn_SetSBGridCol("05", "output", "sPRJT_ID"       , "center", null, true),
		fn_SetSBGridCol("06", "output", "sCURR_STAGE"    , "center", null, true),
		fn_SetSBGridCol("07", "output", "sDEV_STAGE"     , "center", null, true),
		fn_SetSBGridCol("08", "output", "sTEST_STAGE"    , "center", null, true)
	];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
	
	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_NM : $("#searchPrjtNM").val()
	};
	
	fn_AjaxSend(sendData, "PU010101", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.prjtInfo;
	objSBGrid.rebuild();
};

function fn_SelectListInfo() {

	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;

	var content = "";
	content +="sPARAM=PRJTSEL";
	content +="&";
	content +="sPRJT_ID=" + objSBGrid.getTextMatrix(nClickedRow,5);
	content +="&";
	content +="sPRJT_NM=" + objSBGrid.getTextMatrix(nClickedRow,0);
	content +="&";
	content +="sCURR_STAGE=" + objSBGrid.getTextMatrix(nClickedRow,6);
	content +="&";
	content +="sDEV_STAGE=" + objSBGrid.getTextMatrix(nClickedRow,7);
	content +="&";
	content +="sTEST_STAGE=" + objSBGrid.getTextMatrix(nClickedRow,8);
	
	fn_AjaxSendSesUrl(content, "pms_common_session.jsp", null, fn_InputPrjtInfoGrid);
};

function fn_InputPrjtInfoGrid() {
	var nClickedRow = objSBGrid.getRow();
	var openUrl = window.opener.document.URL;
	
	if (openUrl.indexOf("AD020111") != -1) {
		fn_Init_Clear();
	} else {
		opener.$("#searchPrjtID").val(objSBGrid.getTextMatrix(nClickedRow,5));
		opener.$("#searchPrjtNM").val(objSBGrid.getTextMatrix(nClickedRow,0));
	}
	
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
    <div id="hiddenColumn">
		<input type="hidden" class="inputType" id="sPRJT_ID" name="sPRJT_ID"/>
	</div>
</div>
</body>
</html>