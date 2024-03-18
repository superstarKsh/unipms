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

	fn_InitGrid();
};

function fn_InitGrid() {
	
	var caption = "ID^이름^부서^직급";
	var colWidth = "100,150,150,100,100";
	
	objGridInitInfo = fn_InitSBGrid("listInfo", "objSBGrid", caption, colWidth, "400px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
		fn_SetSBGridCol("00", "output", "sUSER_ID"      , "center", null, false),
		fn_SetSBGridCol("01", "output", "sUSER_NM"      , "left"  , null, false),
		fn_SetSBGridCol("02", "output", "sBIZ_QUARTER"  , "left"  , null, false),
		fn_SetSBGridCol("03", "output", "sUSER_PSTN_NM" , "center", null, false),
		fn_SetSBGridCol("04", "output", "sUSER_PSTN"    , "center", null, true)
	];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
	
	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sUSER_NM :  $("#searchUserNM").val()
	};
	
	fn_AjaxSend(sendData, "PU010111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.userList;
	objSBGrid.rebuild();
};

function fn_SelectListInfo () {
	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0)
		return;
	
	var strUserID = objSBGrid.getTextMatrix(nClickedRow,0);
	var strUserNm = objSBGrid.getTextMatrix(nClickedRow,1);
	var openUrl = window.opener.document.URL;

	if (openUrl.indexOf("AD010101") != -1) {
		opener.sPRJT_MANG_ID.value = strUserID;
		opener.sPRJT_MANG_NM.value = strUserNm;
	} else if (openUrl.indexOf("AD020101") != -1) {
		opener.searchUserID.value = strUserID;
		opener.searchUserNM.value = strUserNm;
	} else if (openUrl.indexOf("AD020111") != -1) {
		opener.searchUserID.value = strUserID;
		opener.searchUserNM.value = strUserNm;
	} else if (openUrl.indexOf("PJ010101") != -1) {
		opener.sPRJT_MANG_ID.value = strUserID;
		opener.sPRJT_MANG_NM.value = strUserNm;
	} else if (openUrl.indexOf("PJ020101.jsp") != -1 || openUrl.indexOf("PJ020201.jsp") != -1) {
		var selRow = getParameter("nSelRow");
		
		opener.objSBGrid.setTextMatrix(parseInt(selRow), 0, strUserID);
		opener.objSBGrid.setTextMatrix(parseInt(selRow), 1, strUserNm);
		
		opener.objSBGrid.setTextMatrix(parseInt(selRow), 8, objSBGrid.getTextMatrix(nClickedRow,4));
		opener.objSBGrid.setTextMatrix(parseInt(selRow), 3, objSBGrid.getTextMatrix(nClickedRow,3));
	} else if (openUrl.indexOf("WSAD020101") != -1) {
		opener.searchUserID.value = strUserID;
		opener.searchUserNM.value = strUserNm;
	} 
	
	self.close();
};

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div class="popup">
	<div class="section" style="display:none">
    	 <div class="search">
    		   <div class="box">
    		      <ul>
    		         <li class="name"><span>프로젝트ID</span></li>
    		         <li><input type="text" class="txtinp w100" id="searchPrjtID" name="searchPrjtID" readOnly/></li>
    		         <li><input type="text" class="txtinp w200" id="searchPrjtNM"  name="searchPrjtNM" readOnly/></li>
    		         <li><a href="javascript:fn_SearchPrjtInfo();" class="btn01">검색</a></li>
    		      </ul>
    		   </div>
    	</div><!--//search-->
    </div><!--//section-->
	<h2>사용자조회</h2>
	<div class="section">
		<div class="search">
			<div class="box">
				<ul>
					<li class="name"><span>이름</span></li>
					<li><input type="text" class="txtinp w300" id="searchUserNM" name="searchUserNM"></li>
				</ul>
			</div>
		</div><!--//search-->
	</div><!--//section-->
	<div class="section">
		<ul class="btnbox right">
			<li class="pr10"><a href="#" class="btn_search imgbtn_black">조회</a></li>
		</ul>
	</div><!--//section-->
	<div class="section">
        <div id="listInfo"></div>
    </div><!--//section-->
</div>
</body>
</html>