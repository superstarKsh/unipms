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
		sUSER_NM : $("#searchUserNM").val(),
		sPRJT_ID : $("#searchPrjtID").val()
	};
	
	fn_AjaxSend(sendData, "PU010112", fn_SetDataSelectPrjtInfo, null);
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

	if (openUrl.indexOf("AD020111") != -1 || openUrl.indexOf("AD020121") != -1 || openUrl.indexOf("AD020131") != -1 ||
		openUrl.indexOf("AD020141") != -1 || openUrl.indexOf("AD020151") != -1 || openUrl.indexOf("AD020161") != -1) {

		opener.$("#searchUserID").val(strUserID);
		opener.$("#searchUserNM").val(strUserNm);
		
		opener.fn_SearchSessionCreate(strUserID, strUserNm);
	} else if (openUrl.indexOf("AD020101.jsp") != -1) { 
		opener.$("#searchUserID").val(strUserID);
		opener.$("#searchUserNM").val(strUserNm);
	} else if (openUrl.indexOf("DV020101.jsp") != -1) {
		var selRow = getParameter("nSelRow");
		var paramName = getParameter("DV020101");
		
		if (paramName=="sGRID_INFO") {
			opener.objSBGrid.setTextMatrix(parseInt(selRow), 8, strUserID);
			opener.objSBGrid.setTextMatrix(parseInt(selRow), 3, strUserNm);
		} else if (paramName=="sTEXT_INFO") {
			opener.$("#sCORP_MNG_ID").val(strUserID);
			opener.$("#sCORP_MNG_NM").val(strUserNm);
		}
	} else if (openUrl.indexOf("DV020102.jsp") != -1) {
		var selRow = getParameter("nSelRow");
		var paramName = getParameter("DV020102");
		
		if (paramName=="sGRID_INFO") {
			opener.objSBGridDetail.setTextMatrix(parseInt(selRow), 9, strUserID);
			opener.objSBGridDetail.setTextMatrix(parseInt(selRow), 4, strUserNm);
		} else if (paramName=="sTEXT_INFO") {
			opener.$("#sCORP_MNG_ID").val(strUserID);
			opener.$("#sCORP_MNG_NM").val(strUserNm);
		}
	} else if (openUrl.indexOf("DV020103.jsp") != -1) {
		var selRow = getParameter("nSelRow");
		var paramName = getParameter("DV020103");
		
		if (paramName == "sGRID_INFO") {
			opener.objSBGridDetail.setTextMatrix(parseInt(selRow), 10, strUserID);
			opener.objSBGridDetail.setTextMatrix(parseInt(selRow), 5, strUserNm);
		} else if (paramName == "sTEXT_INFO") {
			opener.$("#sCORP_MNG_ID").val(strUserID);
			opener.$("#sCORP_MNG_NM").val(strUserNm);
		}
	} else if (openUrl.indexOf("DV030101.jsp") != -1) {
		var selRow = getParameter("nSelRow");
		var paramName = getParameter("DV030101");
	
		if (paramName == "sGRID_INFO") {
			opener.objSBGrid.setTextMatrix(parseInt(selRow), 16, strUserID);
			opener.objSBGrid.setTextMatrix(parseInt(selRow), 17, strUserNm);
		} else if (paramName == "sTEXT_INFO") {
			opener.$("#sDEV_USER_ID").val(strUserID);
			opener.$("#sDEV_USER_NM").val(strUserNm);
		}
	} else if (openUrl.indexOf("DV060101.jsp") != -1) {
		opener.$("#sMAKE_USER_ID").val(strUserID);
		opener.$("#sMAKE_USER_NM").val(strUserNm);
	} else if (openUrl.indexOf("DV021101.jsp") != -1) {
		var selRow = getParameter("nSelRow");
		
		opener.objSBGrid.setTextMatrix(parseInt(selRow), 10, strUserID);
		opener.objSBGrid.setTextMatrix(parseInt(selRow), 5, strUserNm);
	} else if (openUrl.indexOf("DV031101.jsp") != -1) {
		var selRow = getParameter("nSelRow");
				
		opener.objSBGrid.setTextMatrix(parseInt(selRow), 22, strUserID);
		opener.objSBGrid.setTextMatrix(parseInt(selRow), 16, strUserNm);
	} else if (openUrl.indexOf("TS010101.jsp") != -1) {
		var paramName = getParameter("TS010101");
		var selRow = getParameter("nSelRow");
		
		if (paramName=="sREG_USER_ID_GRID") {
			opener.objSBGrid.setTextMatrix(parseInt(selRow), 10, strUserID);
			opener.objSBGrid.setTextMatrix(parseInt(selRow), 2, strUserNm);
		} else if  (paramName=="sCNFM_USER_ID_GRID") {
			opener.objSBGrid.setTextMatrix(parseInt(selRow), 11, strUserID);
			opener.objSBGrid.setTextMatrix(parseInt(selRow), 7, strUserNm);
		} else if  (paramName=="sREG_USER_ID") {
			opener.$("#sREG_USER_ID").val(strUserID);
			opener.$("#sREG_USER_NM").val(strUserNm);
		} else if  (paramName=="sCNFM_USER_ID") {
			opener.$("#sCNFM_USER_ID").val(strUserID);
			opener.$("#sCNFM_USER_NM").val(strUserNm);
		}
	} else if (openUrl.indexOf("TS010201.jsp") != -1) {
		var paramName = getParameter("TS010201");
		
		if (paramName=="sTEST_USER_ID_GRID") {
			var selRow = getParameter("nSelRow");
			opener.objSBGridDetail.setTextMatrix(parseInt(selRow), 7, strUserID);
			opener.objSBGridDetail.setTextMatrix(parseInt(selRow), 2, strUserNm);
		} else if (paramName=="sTEST_USER_ID") {
			opener.$("#sTEST_USER_ID").val(strUserID);
			opener.$("#sTEST_USER_NM").val(strUserNm);
		}
	} else if (openUrl.indexOf("TS010302.jsp") != -1) {
		var paramName = getParameter("TS010302");
		
		if (paramName=="sTEST_USER_ID") {
			opener.$("#sTEST_USER_ID").val(strUserID);
			opener.$("#sTEST_USER_NM").val(strUserNm);
		} else if  (paramName=="sDEV_USER_ID") {
			opener.$("#sDEV_USER_ID").val(strUserID);
			opener.$("#sDEV_USER_NM").val(strUserNm);
		}
	} else if (openUrl.indexOf("TS020102.jsp") != -1) {
		var paramName = getParameter("TS020102");
		
		if (paramName=="sTEST_USER_ID") {
			opener.$("#sTEST_USER_ID").val(strUserID);
			opener.$("#sTEST_USER_NM").val(strUserNm);
		} else if (paramName=="sDEV_USER_ID") {
			opener.$("#sDEV_USER_ID").val(strUserID);
			opener.$("#sDEV_USER_NM").val(strUserNm);
		}
	} else if (openUrl.indexOf("CF030102.jsp") != -1) {
		var paramName = getParameter("CF030102");

		opener.$("#sDEV_USER_ID").val(strUserID);
		opener.$("#sDEV_USER_NM").val(strUserNm);
		
		if (paramName=="sREG_USER_ID") {
			opener.$("#sREG_USER_ID").val(strUserID);
			opener.$("#sREG_USER_NM").val(strUserNm);
		} else if (paramName=="sCHRG_USER_ID") {
			opener.$("#sCHRG_USER_ID").val(strUserID);
			opener.$("#sCHRG_USER_NM").val(strUserNm);
		}
	} else if (openUrl.indexOf("QT010101.jsp") != -1) {
		opener.$("#sCNTL_USER_ID").val(strUserID);
		opener.$("#sCNTL_USER_NM").val(strUserNm);
	} else if (openUrl.indexOf("QT020101.jsp") != -1) {
		var paramName = getParameter("QT020101");

		if (paramName=="sCNTL_USER_ID") {
			opener.$("#sCNTL_USER_ID").val(strUserID);
			opener.$("#sCNTL_USER_NM").val(strUserNm);
		} else if (paramName=="sDEV_USER_ID") {
			opener.$("#sDEV_USER_ID").val(strUserID);
			opener.$("#sDEV_USER_NM").val(strUserNm);
		}
	} else if (openUrl.indexOf("NT010102.jsp") != -1) {
		opener.$("#sREG_USER_ID").val(strUserID);
		opener.$("#sREG_USER_NM").val(strUserNm);
	} else {
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
			<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();"  class="btn_search imgbtn_black">조회</a></li>
		</ul>
	</div><!--//section-->
	<div class="section">
        <div id="listInfo"></div>
    </div><!--//section-->
</div>
</body>
</html>