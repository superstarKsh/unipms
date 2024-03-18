<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- start : Html Header -->
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
	
	$("#sPRJT_RPT_DT").val("");
	
	var sSEARCH_YN = '<%=(String) session.getAttribute("sSEARCH_YN")%>';
	if (sSEARCH_YN != null && sSEARCH_YN == 'Y') {
		
		var sSEARCH_RPRT_STRT_DT = '<%=(String) session.getAttribute("sSEARCH_RPRT_STRT_DT")%>';
		var sSEARCH_RPRT_END_DT  = '<%=(String) session.getAttribute("sSEARCH_RPRT_END_DT")%>';
		var sSEARCH_RPRT_YEAR    = '<%=(String) session.getAttribute("sSEARCH_RPRT_YEAR")%>';
		
		$("#sSEARCH_YN").val(sSEARCH_YN);
		$("#sSEARCH_RPRT_WEEK").val(sSEARCH_RPRT_STRT_DT + sSEARCH_RPRT_END_DT);
		$("#sSEARCH_RPRT_STRT_DT").val(sSEARCH_RPRT_STRT_DT);
		$("#sSEARCH_RPRT_END_DT").val(sSEARCH_RPRT_END_DT);
		$("#sSEARCH_RPRT_YEAR").val(sSEARCH_RPRT_YEAR);
	}
	
	fn_InitLoad();
};

function fn_InitLoad() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};
	
	fn_AjaxSend(sendData, "CF010183", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {

	var prjtCurrWeekInfo;
	prjtCurrWeekInfo = result.prjtCurrWeekInfo;
			
	var selPrjtYearInfo = '<option value="">선 택</option>';
	$.each(result.prjtYearInfo,function(key, value) {
		selPrjtYearInfo = selPrjtYearInfo + '<option value="' + value.sPRJT_YEAR + '">' + value.sPRJT_YEAR + '</option>';
		$("#searchPrjtRptYear").empty().append(selPrjtYearInfo);
	});

	if ($("#sSEARCH_YN").val() == "Y") {
		$("#searchPrjtRptYear").val($("#sSEARCH_RPRT_YEAR").val());
	} else {
		$("#searchPrjtRptYear").val(prjtCurrWeekInfo.sPRJT_YEAR);
	}

	fn_SelectPrjtYear();
};

function fn_SelectPrjtYear() {

	$("#searchPrjtRptDt").empty();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_YEAR : $("#searchPrjtRptYear option:selected").val()
	};

	fn_AjaxSend(sendData, "CF010182", fn_SetDataSelectPrjtYear, null);
};

function fn_SetDataSelectPrjtYear(result) {
	var prjtCurrWeekInfo = result.prjtCurrWeekInfo;
			
	var selPrjtWeekInfo = '<option value="">선 택</option>';
	$.each(result.prjtWeekInfo,function(key, value) {
		selPrjtWeekInfo = selPrjtWeekInfo + '<option value="' + value.sSTRT_DT + value.sEND_DT + '">' + fn_SetDateType(value.sSTRT_DT, ".") + " ~ " + fn_SetDateType(value.sEND_DT, ".") + '</option>';
		$("#searchPrjtRptDt").empty().append(selPrjtWeekInfo);
	});
			
	if ($("#sSEARCH_YN").val() == "Y") {
		$("#searchPrjtRptDt").val($("#sSEARCH_RPRT_WEEK").val());
	} else {
		$("#searchPrjtRptDt").val(prjtCurrWeekInfo.sSTRT_DT + prjtCurrWeekInfo.sEND_DT);
	}
			
	fn_InitGrid();
};

function fn_InitGrid() {

	var caption = "TASK ID^TASK(요구사항 기능)명^시작일자^종료일자";
	var colWidth = "20%,40%,20%,20%";
	
	objGridInitInfo = fn_InitSBGrid("currWeekInfo", "objSBGrid", caption, colWidth, "200px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
			fn_SetSBGridCol("00", "output" , "sTASK_ID" , "left"  , null, false),
			fn_SetSBGridCol("01", "output" , "sTASK_NM" , "left"  , null, false),
			fn_SetSBGridCol("02", "output" , "sSTRT_DT" , "center", "yyyy.mm.dd", false),
			fn_SetSBGridCol("03", "output" , "sEND_DT"  , "center", "yyyy.mm.dd", false)
	];
	objSBGrid.createColumns(objColumnsInfo);

	caption = "TASK ID^TASK(요구사항 기능)명^시작일자^종료일자";
	colWidth = "20%,40%,20%,20%";
	
	objGridInitInfoNext = fn_InitSBGrid("nextWeekInfo", "objSBGridNext", caption, colWidth, "200px", "resultDataNext", true, null);
	objSBGridNext = createSBDataGrid(objGridInitInfoNext);

	objColumnsInfoNext = [
			fn_SetSBGridCol("00", "output" , "sTASK_ID" , "left"  , null, false),
			fn_SetSBGridCol("01", "output" , "sTASK_NM" , "left"  , null, false),
			fn_SetSBGridCol("02", "output" , "sSTRT_DT" , "center", "yyyy.mm.dd", false),
			fn_SetSBGridCol("03", "output" , "sEND_DT"  , "center", "yyyy.mm.dd", false)
	];
	objSBGridNext.createColumns(objColumnsInfoNext);

	fn_SessionCheck();
};

function fn_SessionCheck() {

	if ($("#sSEARCH_YN").val() == 'Y') {
		var content = "";
		content += "sSEARCH_YN=N";

		fn_AjaxSendSesUrl(content, "pms_session_cf0101.jsp", null, fn_SelectPrjtInfo);
	} else {
		fn_SelectPrjtInfo();
	}
};

function fn_Init_Clear() {
	window.location = "CF010101.jsp";
};

function fn_SelectPrjtInfo() {

	var tmp = $("#searchPrjtRptDt option:selected").val();
	if (tmp == "")
		return;
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sSTRT_DT : tmp.substring(0, 8)
	};

	fn_AjaxSend(sendData, "CF010113", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.currWeekRpt;
	resultDataNext = result.nextWeekRpt;

	var prjtWeekRptInfo = result.prjtWeekRptInfo;
	if (prjtWeekRptInfo != null){
		$("#sCURR_CONTENTS").val(prjtWeekRptInfo.sCURR_CONTENTS);
		$("#sNEXT_CONTENTS").val(prjtWeekRptInfo.sNEXT_CONTENTS);
		$("#sETC_CONTENTS").val(prjtWeekRptInfo.sETC_CONTENTS);
		$("#sFILE_NM").val(prjtWeekRptInfo.sFILE_NM);
	}

	objSBGrid.rebuild();
	objSBGridNext.rebuild();

	fn_SetGridGroup();
};

function fn_InsertPrjt() {
	var tmp = $("#searchPrjtRptDt option:selected").val();
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sSTRT_DT : tmp.substring(0, 8),
		sEND_DT : tmp.substring(8, 16),
		sCURR_CONTENTS : $("#sCURR_CONTENTS").val(),
		sNEXT_CONTENTS : $("#sNEXT_CONTENTS").val(),
		sETC_CONTENTS : $("#sETC_CONTENTS").val(),
		sFILE_NM : fn_GetFileName($("#sFILE_NM").val())
	};

	fn_AjaxSend(sendData, "CF010121", fn_MoveToList, null);
};

function fn_InsertPrjtFile() {
	fn_InsertUploadFile("CF01", fn_InsertPrjt);
};

function fn_SetGridGroup() {
	for(var i=1; i<objSBGrid.rows; i++) {	
		if( objSBGrid.getTextMatrix(i,0).substring(4,9) == "00.00")
			objSBGrid.setGroupLevel(i, 1);
		else if( objSBGrid.getTextMatrix(i,0).substring(7,9) == "00" )
			objSBGrid.setGroupLevel(i, 2);
		else 
			objSBGrid.setGroupLevel(i, 3);
	}

	objSBGrid.setGroup("complete");
	
	for(var i=1; i<objSBGridNext.rows; i++) {
		if( objSBGridNext.getTextMatrix(i,0).substring(4,9) == "00.00")
			objSBGridNext.setGroupLevel(i, 1);
		else if( objSBGrid.getTextMatrix(i,0).substring(7,9) == "00" )
			objSBGridNext.setGroupLevel(i, 2);
		else 
			objSBGridNext.setGroupLevel(i, 3);
	}

	objSBGridNext.setGroup("complete");
	
	for(var i=1; i<objSBGrid.rows; i++)	{
		if (objSBGrid.getTextMatrix(i,0).substring(4,9) == "00.00")	
			objSBGrid.setGroupCollapsed(i, true);
	}
	
	for(var i=1; i<objSBGridNext.rows; i++)	{
		if (objSBGridNext.getTextMatrix(i,0).substring(4,9) == "00.00")	
			objSBGridNext.setGroupCollapsed(i, true);
	}
};

function fn_MoveToList() {
	window.location = "CF010101.jsp";
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
			<jsp:include page="../common/layout_left_cf.jsp" flush="true" />
		</div>
 		<div class="content">
    		<div class="cont">
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[CF01] 주간보고작성</h2>
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
    		                        <li class="name"><span>주</span></li>
    		                        <li><select class="selectbox w100" id="searchPrjtRptYear" name="searchPrjtRptYear" onchange="javascript:fn_SelectPrjtYear()"></select></li>
    		                        <li><select class="selectbox w300" id="searchPrjtRptDt" name="searchPrjtRptDt"></select></li>
    		                    </ul>
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        <!-- END : search section -->
    		        <div class="section">
                        <ul class="btnbox right">
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                     	</ul>
                    </div>
    		        <!-- START : input table section -->
    		        <div class="section">
   		        		<h3>금주진행사항</h3>
	    		        <div id="currWeekInfo">
						</div>
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">내용</th>
    		                        <td colspan="3">
    		                        	<textarea style="width:715px;resize:none" cols="100" rows="15" id="sCURR_CONTENTS" name="sCURR_CONTENTS" ></textarea>
    		                        </td>
    		                    </tr>
    		                  </tbody>
    		             </table>
    		        </div> 
    		        <!-- START : input table section -->
    		        <br/>
    		        <div class="section">
  		                <h3>차주예정사항</h3>
	    		        <div id="nextWeekInfo">
						</div>
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">내용</th>
    		                        <td colspan="3">
    		                        	<textarea style="width:715px;resize:none" cols="100" rows="15" id="sNEXT_CONTENTS" name="sNEXT_CONTENTS" ></textarea>
    		                        </td>
    		                    </tr>
    		                  </tbody>
    		             </table>
    		         </div> 
    		        <!-- START : input table section -->
    		        <br/>
    		        <div class="section">
  		                <h3>이슈사항</h3>
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">내용</th>
    		                        <td colspan="3">
    		                        	<textarea style="width:715px;resize:none" cols="100" rows="15" id="sETC_CONTENTS" name="sETC_CONTENTS" ></textarea>
    		                        </td>
    		                    </tr>
    		                    <tr>
									<th>첨부파일</th>
									<td colspan="3">
										<div class="inputfile">
											<input type="text" class="txtinp w590" id="sFILE_NM" name="sFILE_NM" readOnly/>
											<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
										</div>
									</td>
								</tr>
    		                  </tbody>
    		             </table>
    		         </div>
    		         <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_MoveToList();" class="btnimg03">목록</a></li>
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div><!--//section-->
				</div><!--//pixbox-->
    		    <div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
					<input type="hidden" class="inputType" id="sSEARCH_RPRT_WEEK" name="sSEARCH_RPRT_WEEK"/>
					<input type="hidden" class="inputType" id="sSEARCH_RPRT_STRT_DT" name="sSEARCH_RPRT_STRT_DT"/>
					<input type="hidden" class="inputType" id="sSEARCH_RPRT_END_DT" name="sSEARCH_RPRT_END_DT"/>
					<input type="hidden" class="inputType" id="sSEARCH_RPRT_YEAR" name="sSEARCH_RPRT_YEAR"/>
				</div>
				</form>
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