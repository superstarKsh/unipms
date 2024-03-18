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
	
	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");

	fn_InitLoad();
};

function fn_InitLoad() {
	fn_InitGrid();
};

function fn_InitGrid() {

	var caption = "*ID^이름^직급^역할^시작일자^종료일자^팀^ ^담당업무^참여율(%)^투입MM^사번^";
	var colWidth = "15%,12%,10%,10%,12%,12%,15%,15%,10%,10%,10%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtPartInfo", "objSBGrid", caption, colWidth, "350px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						fn_SetSBGridCol("00", "output" , "sUSER_ID"          , "center" , null, false),
						fn_SetSBGridCol("01", "output" , "sUSER_NM"          , "center" , null, false),
						fn_SetSBGridCol("02", "output" , "sUSER_PSTN_NM"     , "center" , null, false),
						fn_SetSBGridCol("03", "output" , "sPRJT_ROLE_NM"     , "center" , null, false),
						fn_SetSBGridCol("04", "output" , "sSTRT_DT"          , "center" , "yyyy.mm.dd", false),
						fn_SetSBGridCol("05", "output" , "sEND_DT"           , "center" , "yyyy.mm.dd", false),
						fn_SetSBGridCol("06", "output" , "sPRJT_SUB_PART_ID" , "center" , null, true),
						fn_SetSBGridCol("07", "output" , "sUSER_PSTN"        , "center" , null, true),
						fn_SetSBGridCol("08", "output" , "sPRJT_TASK"        , "center" , null, false),
						fn_SetSBGridCol("09", "output" , "sPROC_RATIO"       , "center" , null, false),
						fn_SetSBGridCol("10", "output" , "sPROC_MM"          , "center" , null, false),
						fn_SetSBGridCol("11", "output" , "sUSER_NO"          , "center" , null, false)
	                ];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("ondblclick", "fn_SelectListInfo", "","");
	objSBGrid.addEventListener("onclick", "fn_SelectListInfoMobile", "","");
	
	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};	

	fn_AjaxSend(sendData, "PJ020111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.prjtTeamInfo;
	objSBGrid.rebuild();
};

function fn_SelectPrjtInfoDetail() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};
	
	fn_AjaxSend(sendData, "WSPJ020113", fn_SetDataSelectPrjtInfoDetail, null);
};

function fn_SetDataSelectPrjtInfoDetail(result) {
	var outDscr = result.outDscr;
	if (outDscr == null) {
		$("#sOUTSRC_DSCR").val("");
		return;
	}
			
	$("#sOUTSRC_DSCR").val(outDscr.sOUTSRC_DSCR);
};

function fn_SelectListInfo() {
	
	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;

	var strUserNo = objSBGrid.getTextMatrix(nClickedRow,11);
	window.open("http://km.wise.co.kr/WiseIntranet/selectMemberPopAction.action?EMPID=" + strUserNo,"",userPopupStyle);
};

function fn_SelectListInfoMobile() {
	
	var nClickedCol = objSBGrid.getCol();
	if (nClickedCol != 0 )
		return;

	fn_SelectListInfo();
};

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
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
    		        <h2>[PJ02] 프로젝트인력관리</h2>
    		        <!-- END : title -->

					<!-- START : search section -->
    		        <div class="section">
    		            <div class="search">
    		                <div class="box">
    		                    <ul>
    		                        <li class="name"><span>프로젝트ID</span></li>
    		                        <li><input type="text" class="txtinp w100" id="searchPrjtID" name="searchPrjtID" readOnly/></li>
    		                        <li><input type="text" class="txtinp w300" id="searchPrjtNM"  name="searchPrjtNM" readOnly/></li>
    		                        <li><a href="javascript:fn_SearchPrjtInfo();" class="btn01">검색</a></li>
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
	    		        <div id="prjtPartInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
    		        
    		        <div class="section">
    		        	<table class="table01" border="0" cellspacing="0" summary="">
							<tr>
								<th class="w100">외주현황</th>
								<td colspan="3">
									<textarea class="txtinp w700" cols="100" rows="10" name="sOUTSRC_DSCR" id="sOUTSRC_DSCR" ></textarea>
								</td>
							</tr>
    		        	</table>
    		        </div><!--//section-->
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