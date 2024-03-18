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
	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");
	
	fn_InitLoad();
};

function fn_InitLoad() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};
	
	fn_AjaxSend(sendData, "PU010130", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var prjtStage = getParameter("sPRJT_STAGE");	
	
	var selCurrStage = '<option value="">선 택</option>';  
	$.each(result.prjtStage,function(key, value) {
		selCurrStage = selCurrStage + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#searchPrjtStage").empty().append(selCurrStage);
	});
	$("#searchPrjtStage").val(prjtStage);

	fn_InitGrid();
};

function fn_InitGrid() {
	
	var caption = "TASK ID^TASK 명^업무내용";
	var colWidth = "15%,35%,50%";
	
	objGridInitInfo = fn_InitSBGrid("listInfo", "objSBGrid", caption, colWidth, "400px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
		fn_SetSBGridCol("00", "output", "sTASK_ID"    , "center", null, false),
		fn_SetSBGridCol("01", "output", "sTASK_NM"    , "left"  , null, false),
		fn_SetSBGridCol("02", "output", "sTASK_DESC"  , "left"  , null, false)
	];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
	
	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#searchPrjtStage option:selected").val(),
		sTASK_NM : $("#searchTaskNm").val()
	};
	
	fn_AjaxSend(sendData, "PU010131", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.taskInfo;
	objSBGrid.rebuild();
};

function fn_SelectListInfo () {
	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 1)
		return;
	
	var openUrl = window.opener.document.URL;
	var strTaskID = objSBGrid.getTextMatrix(nClickedRow,0);

	if (openUrl.indexOf("DV050101.jsp") != -1) {
		var selRow 		= getParameter("nSelRow");
		opener.objSBGrid.setTextMatrix(parseInt(selRow), 1, strTaskID);
	} 

	self.close();
};

</script>
</head>

<body onload="fn_Init()"  oncontextmenu="return false">
<div class="popup">
	<h2>TASK 조회</h2>
	<div class="section">
		<div class="search">
			<div class="box">
				<ul>
					<li class="name"><span>프로젝트ID</span></li>
					<li><input type="text" class="txtinp w100" id="searchPrjtID" name="searchPrjtID" readOnly></li>
					<li><input type="text" class="txtinp w200" id="searchPrjtNM" name="searchPrjtNM" readOnly></li>
				</ul>
				<ul>
					<li class="name"><span>진행단계</span></li>
					<li>
						<select class="selectbox" name="selectbox" id="searchPrjtStage" name="searchPrjtStage">
						</select>
					</li>
				</ul>
				<ul>
					<li class="name"><span>TASK 명</span></li>
					<li><input type="text" class="txtinp w300" id="searchTaskNm" name="searchTaskNm"></li>
				</ul>
			</div>
		</div><!--//search-->
	</div><!--//section-->
	
	<div class="section">
		<ul class="btnbox right">
			<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
		</ul>
	</div><!--//section-->
	
	<div class="section">
        <div id="listInfo"></div>
    </div><!--//section-->
</div>
</body>
</html>