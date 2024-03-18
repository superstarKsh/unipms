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

	var caption = "ID^협력사명^사업자번호^전화번호^팩스번호";
	var colWidth = "10%,30%,20%,20%,20%";
	
	objGridInitInfo = fn_InitSBGrid("corpInfo", "objSBGrid", caption, colWidth, "500px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						fn_SetSBGridCol("00", "output" , "sCOOP_ID"       , "center" , null, false),
						fn_SetSBGridCol("01", "output" , "sCOOP_NM"       , "left"   , null, false),
						fn_SetSBGridCol("02", "output" , "sCOOP_REG_NUM"  , "center" , "99-999-99999", false),
						fn_SetSBGridCol("03", "output" , "sPHONE_NUM"     , "center" , null, false),
						fn_SetSBGridCol("04", "output" , "sFAX_NUM"       , "center" , null, false)
	                ];
	objSBGrid.createColumns(objColumnsInfo);

	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sCOOP_ID : $("#searchCoopID").val()
	};

	fn_AjaxSend(sendData, "AD030111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.coopInfo;
    objSBGrid.rebuild();
};

function fn_SearchCoop(args) {
	window.open("PU010121.jsp","",popupStyle);
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
			<jsp:include page="../common/layout_left_wspj.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[PJ03] 협력사정보조회</h2>
    		        <!-- END : title -->

					<!-- START : search section -->
    		        <div class="section">
    		            <div class="search">
    		                <div class="box">
    		                    <ul>
    		                        <li class="name"><span>협력사</span></li>
    		                        <li><input type="text" class="txtinp w100" id="searchCoopID" name="searchCoopID" readOnly/></li>
    		                        <li><input type="text" class="txtinp w200" id="searchCoopNM" name="searchCoopNM" readOnly/></li>
    		                        <li><a href="javascript:fn_SearchCoop();" class="btn01">검색</a></li>
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
	    		        <div id="corpInfo">
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