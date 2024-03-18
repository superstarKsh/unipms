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
	fn_InitGrid();
};

function fn_InitGrid() {
	var caption = "아이디^이름^부서^직급^입사일자^현재참여프로젝트명^소속사^사번";
	var colWidth = "20%,10%,15%,10%,10%,30%,20%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtUserInfo", "objSBGrid", caption, colWidth, "500px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
					fn_SetSBGridCol("00", "output" , "sUSER_ID"        , "left"  , null, false),
					fn_SetSBGridCol("01", "output" , "sUSER_NM"        , "center", null, false),
					fn_SetSBGridCol("02", "output" , "sBIZ_QUARTER_NM" , "left"  , null, false),
					fn_SetSBGridCol("03", "output" , "sUSER_PSTN_NM"   , "center", null, false),
					fn_SetSBGridCol("04", "output" , "sJOIN_DT"        , "center", "yyyy.mm.dd", false),
					fn_SetSBGridCol("05", "output" , "sCURR_PRJT_NM"   , "left"  , null, false),
					fn_SetSBGridCol("06", "output" , "sCOOP_NM"        , "left"  , null, false),
					fn_SetSBGridCol("07", "output" , "sUSER_NO"        , "center", null, true)
				];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("ondblclick", "fn_SelectListInfo", "","");
	objSBGrid.addEventListener("onclick", "fn_SelectListInfoMobile", "","");

	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {
	var sendData = {
		sUSER_ID : $("#searchUserID").val(),
		sUSER_NM : $("#searchUserNM").val()
	};

	fn_AjaxSend(sendData, "AD020111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.userInfo;
    objSBGrid.rebuild();
};

function fn_SelectListInfo() {
	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;

	var strUserNo = objSBGrid.getTextMatrix(nClickedRow,7);
	window.open("http://km.wise.co.kr/WiseIntranet/selectMemberPopAction.action?EMPID=" + strUserNo,"",userPopupStyle);
};

function fn_SelectListInfoMobile() {
	var nClickedCol = objSBGrid.getCol();
	if (nClickedCol != 0 )
		return;

	fn_SelectListInfo();
};

function fn_SearchUser() {
	window.open("PU010111.jsp","",popupStyle);
};

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div id="wrap">

	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header_admin.jsp" flush="true" />
	</div>
	<!-- END : include -->

	<div id="container">

		<div id="leftWrap">
			<jsp:include page="../common/layout_left_ad.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[AD02] 인력정보</h2>
    		        <!-- END : title -->

					<!-- START : search section -->
    		        <div class="section">
    		            <div class="search">
    		                <div class="box">
    		                    <ul>
    		                        <li class="name"><span>아이디/이름</span></li>
    		                        <li><input type="text" class="txtinp w100" id="searchUserID" name="searchUserID" readOnly/></li>
    		                        <li><input type="text" class="txtinp w200" id="searchUserNM"  name="searchUserNM" readOnly/></li>
    		                        <li><a href="javascript:fn_SearchUser();" class="btn01">검색</a></li>
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
	    		        <div id="prjtUserInfo">
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