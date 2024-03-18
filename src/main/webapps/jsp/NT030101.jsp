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
	$("#sUSER_ID").val("<%=(String) session.getAttribute("sUSER_ID")%>");

	fn_InitLoad();
};

function fn_InitLoad() {
	$("#searchCurrYM").val(fn_GetMonth('.'));
	fn_InitGrid();
};

function fn_InitGrid() {
	var caption = "일련번호^제목^첨부파일^작성자^등록일";
	var colWidth = "15%,5%,10%,70%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("diaryInfo", "objSBGrid", caption, colWidth, "828px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
					fn_SetSBGridCol("00", "output" , "sCURR_DT"      , "center", "yyyy.mm.dd", false),
					fn_SetSBGridCol("01", "output" , "sWEEK_TYPE_NM" , "center", null, false),
					fn_SetSBGridCol("02", "output" , "sDIARY_TIME"   , "center", "99:99", false),
					fn_SetSBGridCol("03", "output" , "sTITLE"        , "left"  , null, false),
					fn_SetSBGridCol("04", "output" , "sHDAY_TYPE"    , "center", null, true),
					fn_SetSBGridCol("05", "output" , "sSEQ_NO"       , "center", null, true)
				];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("ondblclick", "fn_SelectListInfo", "","");
	objSBGrid.addEventListener("onclick", "fn_SelectListInfoMobile", "","");
	
	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {
	
	var sendData = {
		sPRJT_ID : $("#sPRJT_ID").val(),
		sUSER_ID : $("#sUSER_ID").val(),
		sCURR_DT : $("#searchCurrYM").val()
	};	

	fn_AjaxSend(sendData, "NT030111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.diaryInfo;
	objSBGrid.rebuild();
	fn_GridStyleConvert();
};

function fn_GridStyleConvert() {
	var totCount = objSBGrid.rows;
	
	for (var i=0; i< totCount-1; i++) {
		var hDayType = objSBGrid.getTextMatrix(i,4);
		if (hDayType == "1") {
			objSBGrid.setCellStyle("color", i, 0, i, 1, "#FF0000");
		}
	}
};

function fn_SelectListInfo() {
	
	var nClickedRow = objSBGrid.getRow();
	
	if (nClickedRow <= 0 )
		return;
	
	var content = "";
	content += "sSEARCH_YN=Y";
	content += "&";
	content += "sCURR_DT="+ objSBGrid.getTextMatrix(nClickedRow,0);
	content += "&";
	content += "sSEQ_NO="+ objSBGrid.getTextMatrix(nClickedRow,5);

	fn_AjaxSendSesUrl(content, "pms_session_nt0301.jsp", "NT030102.jsp", null);
};

function fn_SelectListInfoMobile() {
	var nClickedCol = objSBGrid.getCol();
	if (nClickedCol != 0 )
		return;
	
	fn_SelectListInfo();
};

function fn_InsertDiary() {
	 window.location = "NT030102.jsp";
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
			<jsp:include page="../common/layout_left_nt.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[NT03] 다이어리</h2>
    		        <!-- END : title -->

					<!-- START : search section -->
    		        <div class="section">
    		            <div class="search">
    		                <div class="box">
    		                    <ul>
    		                        <li class="name"><span>기준 월</span></li>
    		                        <li><input type="text" class="txtinp w100" id="searchCurrYM" name="searchCurrYM"/></li>
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

					<div class="section">
	    		        <div id="diaryInfo">
						</div>
					</div>
					
					<!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_InsertDiary();" class="btnimg03">등록</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sPRJT_ID" name="sPRJT_ID"/>
						<input type="hidden" class="inputType" id="sUSER_ID" name="sUSER_ID"/>
					</div>
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