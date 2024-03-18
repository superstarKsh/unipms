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
	
	var caption = "ID^품질관리명^시작일자^종료일자^점검구분^점검자^대상구분^비고^^";
	var colWidth = "100,200,100,100,100,150,100,200,100,100";
	
	objGridInitInfo = fn_InitSBGrid("prjtQtInfo", "objSBGrid", caption, colWidth, "400px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
		fn_SetSBGridCol("00", "output", "sQULTY_ID"        , "center", null, false),
		fn_SetSBGridCol("01", "output", "sTITLE"           , "left"  , null, false),
		fn_SetSBGridCol("02", "output", "sSTRT_DT"         , "center", "yyyy.mm.dd", false),
		fn_SetSBGridCol("03", "output", "sEND_DT"          , "center", "yyyy.mm.dd", false),
		fn_SetSBGridCol("04", "output", "sCNTL_TYPE_NM"    , "left"  , null, false),
		fn_SetSBGridCol("05", "output", "sCNTL_USER_NM"    , "left"  , null, false),
		fn_SetSBGridCol("06", "output", "sTARGET_TYPE_NM"  , "left"  , null, false),
		fn_SetSBGridCol("07", "output", "sCONTENTS"        , "left"  , null, false),
		fn_SetSBGridCol("08", "output", "sCNTL_TYPE"       , "center", null, true),
		fn_SetSBGridCol("09", "output", "sTARGET_TYPE"     , "center", null, true),
		fn_SetSBGridCol("10", "output", "sCNTL_USER_ID"    , "center", null, true)
	];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_ID : $("#sPRJT_ID").val(),
		sTITLE : $("#searchQTNM").val()
	};

	fn_AjaxSend(sendData, "PU010141", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.qultyInfo;
	objSBGrid.rebuild();
};

function fn_SelectListInfo () {
	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0)
		return;
	
	opener.$("#sQULTY_ID").val(objSBGrid.getTextMatrix(nClickedRow,0));
	opener.$("#sQULTY_TITLE").val(objSBGrid.getTextMatrix(nClickedRow,1));

	opener.fn_SelectInitID();

	self.close();
};

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div class="popup">
	<h2>품질관리일정</h2>
	<div class="section">
		<div class="search">
			<div class="box">
				<ul>
					<li class="name"><span>품질관리명</span></li>
					<li><input type="text" class="txtinp w300" id="searchQTNM" name="searchQTNM"></li>
				</ul>
			</div>
		</div><!--//search-->
	</div><!--//section-->
	
	<div class="section">
		<ul class="btnbox right">
			<li class="pr10"><a href="javascript:fn_SearchList();" class="btn_search imgbtn_black">조회</a></li>
		</ul>
	</div><!--//section-->
	<div class="section">
        <div id="prjtQtInfo"></div>
    </div><!--//section-->
    <div id="hiddenColumn">
		<input type="hidden" class="inputType" id="sPRJT_ID" name="sPRJT_ID"/>
	</div>
</div>
</body>
</html>