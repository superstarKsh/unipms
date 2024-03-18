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
	fn_InitGrid();
};

function fn_InitGrid() {

	var caption = "ID^회사명^전화번호";
	var colWidth = "15%,65%,20%";
	
	objGridInitInfo = fn_InitSBGrid("listInfo", "objSBGrid", caption, colWidth, "400px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
		fn_SetSBGridCol("00", "output", "sCOOP_ID"    , "center", null, false),
		fn_SetSBGridCol("01", "output", "sCOOP_NM"    , "left"  , null, false),
		fn_SetSBGridCol("02", "output", "sPHONE_NUM"  , "center", null, false)
	];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
	
	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo(){

	var sendData = {
		sCOOP_NM :  $("#searchCoopNM").val()
	};

	fn_AjaxSend(sendData, "PU010121", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.corpList;
	objSBGrid.rebuild();
};

function fn_SelectListInfo() {

	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0)
		return;

	var openUrl = window.opener.document.URL;
	
	if (openUrl.indexOf("AD010101") != -1) {
		var paramName = getParameter("AD010101");
		
		if (paramName == "sCUS_NM") {
			opener.$("#sCUS_CD").val(objSBGrid.getTextMatrix(nClickedRow,0));
			opener.$("#sCUS_NM").val(objSBGrid.getTextMatrix(nClickedRow,1));
		} else if (paramName  == "sMAIN_BIZ_PART_NM") {
			opener.$("#sMAIN_BIZ_PART_CD").val(objSBGrid.getTextMatrix(nClickedRow,0));
			opener.$("#sMAIN_BIZ_PART_NM").val(objSBGrid.getTextMatrix(nClickedRow,1));
		}
	} else if (openUrl.indexOf("AD020111") != -1) {
		opener.$("#sCOOP_ID").val(objSBGrid.getTextMatrix(nClickedRow,0));
		opener.$("#sCOOP_NM").val(objSBGrid.getTextMatrix(nClickedRow,1));
	} else if (openUrl.indexOf("AD030101.jsp") != -1 || openUrl.indexOf("AD030102.jsp") != -1) {
		opener.$("#searchCoopID").val(objSBGrid.getTextMatrix(nClickedRow,0));
		opener.$("#searchCoopNM").val(objSBGrid.getTextMatrix(nClickedRow,1));
	} else if (openUrl.indexOf("PJ010101") != -1 ) {
		var paramName = getParameter("PJ010101");
		
		if (paramName == "sCUS_NM") {
			opener.$("#sCUS_CD").val(objSBGrid.getTextMatrix(nClickedRow,0));
			opener.$("#sCUS_NM").val(objSBGrid.getTextMatrix(nClickedRow,1));
		} else if (paramName  == "sMAIN_BIZ_PART_NM") {
			opener.$("#sMAIN_BIZ_PART_CD").val(objSBGrid.getTextMatrix(nClickedRow,0));
			opener.$("#sMAIN_BIZ_PART_NM").val(objSBGrid.getTextMatrix(nClickedRow,1));
		}
	} else {
	}

	self.close();
};

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div class="popup">
	<h2>협력업체정보</h2>
	<div class="section">
		<div class="search">
			<div class="box">
				<ul>
					<li class="name"><span>업체명</span></li>
					<li><input type="text" class="txtinp w300" id="searchCoopNM" name="searchCoopNM"></li>
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
        <div id="listInfo"></div>
    </div><!--//section-->
</div>
</body>
</html>