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
	$("#sDEV_STAGE").val('<%=(String) session.getAttribute("sDEV_STAGE")%>');
	
	fn_InitLoad();
};

function fn_InitLoad() {
	$('input:radio[name=searchDevCmpl]:input[value=0]').prop("checked", true);
   	fn_InitGrid();
};
	
function fn_InitGrid() {
	var caption = "TASK ID^프로그램 ID^프로그램 명^단위테스트^단위테스트^단위테스트^단위테스트^담당자^TASK ID^SEG ID^SUB SEG ID|TASK ID^프로그램 ID^프로그램 명^계획시작일자^계획종료일자^시작일자^종료일자^담당자^TASK ID^SEG ID^SUB SEG ID";
	var colWidth = "10%,12%,20%,12%,12%,12%,12%,10%,10%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtDevInfo", "objSBGrid", caption, colWidth, "450px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						fn_SetSBGridCol("00", "output" , "sACTIVITY_ID"       , "center", null, false),
						fn_SetSBGridCol("01", "output" , "sPRG_ID"            , "center", null, false),
						fn_SetSBGridCol("02", "output" , "sPRG_NM"            , "left"  , null, false),
						fn_SetSBGridCol("03", "output" , "sTEST_PLAN_STRT_DT" , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("04", "output" , "sTEST_PLAN_END_DT"  , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("05", "output" , "sTEST_DEV_STRT_DT"  , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("06", "output" , "sTEST_DEV_END_DT"   , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("07", "output" , "sDEV_USER_NM"       , "center", null, false),
						fn_SetSBGridCol("08", "output" , "sTASK_ID"           , "center", null, true),
						fn_SetSBGridCol("09", "output" , "sSEG_ID"            , "center", null, true),
						fn_SetSBGridCol("10", "output" , "sSEG_SUB_ID"        , "center", null, true)
	                ];
	objSBGrid.createColumns(objColumnsInfo);
	
	objSBGrid.addEventListener("ondblclick", "fn_SelectListInfo", "","");
	objSBGrid.addEventListener("onclick", "fn_SelectListInfoMobile", "","");
 
	fn_SelectInitTask();
	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "TS030101.jsp";
};

function fn_SelectInitTask(){

	$("#searchTaksInfo").empty();
	$("#searchSegInfo").empty();
	$("#searchSegSubInfo").empty();
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sDEV_STAGE").val()
	};
	
	fn_AjaxSend(sendData, "TS030181", fn_SetDataSelectInitTask, null);
};

function fn_SetDataSelectInitTask(result) {
	var selTaskInfo = '<option value="">선 택</option>';
	$.each(result.prjTaskInfo,function(key, value) {
		selTaskInfo = selTaskInfo + '<option value="' + value.sTASK_ID + '">' + value.sTASK_NM + '</option>';
		$("#searchTaksInfo").empty().append(selTaskInfo);
	});
};

function fn_SelectInitSegment(){

	$("#searchSegInfo").empty();
	$("#searchSegSubInfo").empty();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sDEV_STAGE").val(),
		sTASK_ID : $("#searchTaksInfo option:selected").val()
	};

	fn_AjaxSend(sendData, "TS030182", fn_SetDataSelectInitSegment, null);
};

function fn_SetDataSelectInitSegment(result) {
	var selSegInfo = '<option value="">선 택</option>';
	$.each(result.prjSegInfo,function(key, value) {
		selSegInfo = selSegInfo + '<option value="' + value.sSEG_ID + '">' + value.sSEG_NM + '</option>';
		$("#searchSegInfo").empty().append(selSegInfo);
	});
};

function fn_SelectInitSegmentSub(){

	$("#searchSegSubInfo").empty();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sDEV_STAGE").val(),
		sTASK_ID : $("#searchTaksInfo option:selected").val(),
		sSEG_ID : $("#searchSegInfo option:selected").val()
	};
	
	fn_AjaxSend(sendData, "DV030183", fn_SetDataSelectInitSegmentSub, null);
};

function fn_SetDataSelectInitSegmentSub(result) {
	var selSegSubInfo = '<option value="">선 택</option>';
	$.each(result.prjSegSubInfo,function(key, value) {
		selSegSubInfo = selSegSubInfo + '<option value="' + value.sSEG_SUB_ID + '">' + value.sSEG_SUB_NM + '</option>';
		$("#searchSegSubInfo").empty().append(selSegSubInfo);
	});
};

function fn_SelectPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sDEV_STAGE").val(),
		sDEV_CMPL_TYPE : $("#searchDevCmpl:checked").val(),
		sTASK_ID : $("#searchTaksInfo option:selected").val(),
		sSEG_ID : $("#searchSegInfo option:selected").val(),
		sSEG_SUB_ID : $("#searchSegSubInfo option:selected").val(),
		sDEV_USER_ID : $("#searchUserID").val()
	};	

	fn_AjaxSend(sendData, "TS030111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.prjtDevTestInfo;
    objSBGrid.rebuild();
};

function fn_SelectListInfo() {
	var nClickedRow = objSBGrid.getRow();
	var content = "";
	content += "sSEARCH_YN=Y";
	content += "&sSEARCH_TASK_ID="+ objSBGrid.getTextMatrix(nClickedRow,8);
	content += "&sSEARCH_SEG_ID="+ objSBGrid.getTextMatrix(nClickedRow,9);
	content += "&sSEARCH_SEG_SUB_ID="+ objSBGrid.getTextMatrix(nClickedRow,10);
	content += "&sSEARCH_PRG_ID="+ objSBGrid.getTextMatrix(nClickedRow,1);

	fn_AjaxSendSesUrl(content, "pms_session_ts0301.jsp", "TS030102.jsp", null);
};

function fn_SelectListInfoMobile() {
	var nClickedCol = objSBGrid.getCol();
	if (nClickedCol != 0)
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
			<jsp:include page="../common/layout_left_ts.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[0704] 단위테스트 목록조회</h2>
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
    		                    <ul>
    		                        <li class="name"><span>완료구분</span></li>
    		                        <li><input type="radio" class="radiobox" id="searchDevCmpl" name="searchDevCmpl" value="0" checked/> 전체</li>
    		                        <li><input type="radio" class="radiobox" id="searchDevCmpl" name="searchDevCmpl" value="1" checked/> 개발 완료</li>
    		                        <li><input type="radio" class="radiobox" id="searchDevCmpl" name="searchDevCmpl" value="2" checked/> 테스트 완료</li>
    		                    </ul>
    		                    <ul>
    		                        <li class="name"><span>TASK</span></li>
    		                        <li><select class="selectbox w300" id="searchTaksInfo" name="searchTaksInfo" onChange="javascript:fn_SelectInitSegment();"></select></li>
    		                    </ul>
    		                    <ul>
    		                        <li class="name"><span>SEG</span></li>
    		                        <li><select class="selectbox w300" id="searchSegInfo" name="searchSegInfo" onChange="javascript:fn_SelectInitSegmentSub();"></select></li>
    		                    </ul>
    		                    <ul>
    		                        <li class="name"><span>SEG SUB</span></li>
    		                        <li><select class="selectbox w300" id="searchSegSubInfo" name="searchSegSubInfo"></select></li>
    		                    </ul>
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        <div class="section">
                        <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                     	</ul>
                    </div>

	    			<!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtDevInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
				</div><!--//pixbox-->
				<div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sDEV_STAGE" name="sDEV_STAGE"/>
				</div>
    		</div><!--//cont-->
		</div><!--//content-->
    </div><!--//container-->
    <div>
		<iframe id="dnjsp" name="dnjsp" frameborder="0" width="0" height="0"></iframe>
	</div>
</div><!--//wrap-->
<!--footer-->
<div id="footer">
	<jsp:include page="../common/layout_footer.jsp" flush="true" />
</div><!--//footer-->
</body>
</html>