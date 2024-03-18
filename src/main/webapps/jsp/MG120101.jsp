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
	var caption = "STAGE ID^ACTIVITY ID^ACTIVITY명^설명^파일명^첨부파일";
	var colWidth = "10%,15%,30%,35%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("activityInfo", "objSBGrid", caption, colWidth, "200px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						fn_SetSBGridCol("00", "output", "sMNG_STAGE"      , "center", null, false),
						fn_SetSBGridCol("01", "output", "sACTIVITY_ID"    , "center", null, false),
						fn_SetSBGridCol("02", "output", "sACTIVITY_NM"    , "left"  , null, false),
						fn_SetSBGridCol("03", "output", "sACTIVITY_DESC"  , "left"  , null, false),
						fn_SetSBGridCol("04", "output", "sDEF_FILE_NM"    , "left"  , null, true),
						fn_SetSBGridCol("05", "imageF", "sIMG_URL"        , "center", null, false)
	                ];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
	
	caption = "*TASK ID^TASK명^설명^파일명^첨부파일^완료파일버전^완료파일명^완료여부^완료일자";
	colWidth = "15%,30%,45%,0%,10%,10%,10%,10%,10%";
	
	objGridInitInfoDetail = fn_InitSBGrid("taskInfo", "objSBGridDetail", caption, colWidth, "200px", "resultDataDetail", true, null);
	objSBGridDetail = createSBDataGrid(objGridInitInfoDetail);

	objColumnsInfoDetail = [
						fn_SetSBGridCol("00", "input" , "sTASK_ID" 		    , "center", null, false),
						fn_SetSBGridCol("01", "input" , "sTASK_NM"    		, "left"  , null, false),
						fn_SetSBGridCol("02", "input" , "sTASK_DESC"   	    , "left"  , null, false),
						fn_SetSBGridCol("03", "input" , "sDEF_FILE_NM" 	    , "left"  , null, true),
						fn_SetSBGridCol("04", "imageF", "sIMG_URL"          , "center", null, false),
						fn_SetSBGridCol("05", "input" , "sCMPL_FILE_VER" 	, "center", null, true),
						fn_SetSBGridCol("06", "input" , "sCMPL_FILE_NM"   	, "center", null, true),
						fn_SetSBGridCol("07", "input" , "sCMPL_YN"   		, "center", null, true),
						fn_SetSBGridCol("08", "input" , "sCMPL_DT"   		, "center", null, true)
	                ];
	objSBGridDetail.createColumns(objColumnsInfoDetail);

	objSBGridDetail.addEventListener("onclick", "fn_SelectListInfoDetail", "","");

	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "MG120101.jsp";
};

function fn_Init_Data(){
	$("#taskSection input[type=text], #taskSection select, #taskSection textarea").val("");
	fn_File_Clear();
};

function fn_File_Clear() {
	if (brswType == 1) {
		document.getElementById("uploadFile").select();
		document.selection.clear();
	} else {
		$("#uploadFile").val("");
	}
};

function fn_SelectPrjtInfo() {
	fn_Init_Data();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "MG120111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.activityInfo;
	objSBGrid.rebuild();
};

function fn_InsertPrjt() {
	var sendData = {	
		sPRJT_ID : $("#searchPrjtID").val(),
		sMNG_STAGE : $("#sMNG_STAGE").val(),
		sACTIVITY_ID : $("#sACTIVITY_ID").val(),
		sTASK_ID : $("#sTASK_ID").val(),
		sTASK_NM : $("#sTASK_NM").val(),
		sTASK_DESC : $("#sTASK_DESC").val(),
		sDEF_FILE_NM : fn_GetFileName($("#sDEF_FILE_NM").val()),
		sCMPL_FILE_NM : fn_GetFileName($("#sCMPL_FILE_NM").val()),
		sCMPL_FILE_VER : $("#sCMPL_FILE_VER").val(),
		sCMPL_YN : $("#sCMPL_YN").val(),
		sCMPL_DT : $("#sCMPL_DT").val()	
	};

	fn_AjaxSend(sendData, "MG120121", fn_SelectListInfo, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {

	var sendData = {	
		sPRJT_ID : $("#searchPrjtID").val(),
		sMNG_STAGE : $("#sMNG_STAGE").val(),
		sACTIVITY_ID : $("#sACTIVITY_ID").val(),
		sTASK_ID : $("#sTASK_ID").val()
	};

	fn_AjaxSend(sendData, "MG120141", fn_SelectListInfo, PMS_PROC_DELETE);
};

function fn_ModifyPrjt() {

	var arrMap = new Map();
	var arrlist = new Array(objSBGridDetail.rows - 1);

	arrMap.put("sPRJT_ID"     , $("#searchPrjtID").val());
	arrMap.put("sMNG_STAGE"   , $("#sMNG_STAGE").val());
	arrMap.put("sACTIVITY_ID" , $("#sACTIVITY_ID").val());
	
	for (var i=1; i<objSBGridDetail.rows; i++) {
		var taskMap = new Map();

		taskMap.put("sTASK_ID"   		, objSBGridDetail.getTextMatrix(i,0));
		taskMap.put("sTASK_NM"   		, objSBGridDetail.getTextMatrix(i,1));
		taskMap.put("sTASK_DESC"   		, objSBGridDetail.getTextMatrix(i,2));
		taskMap.put("sDEF_FILE_NM"  	, objSBGridDetail.getTextMatrix(i,3));
		taskMap.put("sCMPL_FILE_VER"   	, objSBGridDetail.getTextMatrix(i,5));
		taskMap.put("sCMPL_FILE_NM"   	, objSBGridDetail.getTextMatrix(i,6));
		taskMap.put("sCMPL_YN"   		, objSBGridDetail.getTextMatrix(i,7));
		taskMap.put("sCMPL_DT"   		, objSBGridDetail.getTextMatrix(i,8));

		arrlist[i-1] = taskMap;
	}

	arrMap.putMapList("sTASK_LIST", arrlist);

	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "MG120122", fn_SelectListInfo, PMS_PROC_INSERT);
};
		
function fn_InsertPrjtFile() {
	fn_InsertUploadFile("MG12", fn_InsertPrjt);
};

function fn_SelectListInfo() {

	fn_Init_Data();
	
	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;

	$("#sMNG_STAGE").val(objSBGrid.getTextMatrix(nClickedRow,0));
	$("#sACTIVITY_ID").val(objSBGrid.getTextMatrix(nClickedRow,1));

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sMNG_STAGE : $("#sMNG_STAGE").val(),
		sACTIVITY_ID : $("#sACTIVITY_ID").val()
	};

	fn_AjaxSend(sendData, "MG120112", fn_SetDataSelectListInfo, null);
};

function fn_SetDataSelectListInfo(result) {
	resultDataDetail = result.taskInfo;
	objSBGridDetail.rebuild();
	
	if(objSBGrid.getRow() >= 1)
		$("#sTASK_ID").val(result.TaskIdInfo.sTASK_ID);

	var nClickedCol = objSBGrid.getCol();
	if(nClickedCol == '5'){
		var downloadFile = objSBGrid.getTextMatrix(nClickedRow, 4);
		if (downloadFile == "")
			return;
		
		fn_DownloadFile("MG12", downloadFile);
	}
};

function fn_SelectListInfoDetail() {
	fn_Init_Data();
	
	var nClickedRow = objSBGridDetail.getRow();
	if (nClickedRow <= 0 )
		return;

	$("#sTASK_ID").val(objSBGridDetail.getTextMatrix(nClickedRow,0));
	$("#sTASK_NM").val(objSBGridDetail.getTextMatrix(nClickedRow,1));
	$("#sTASK_DESC").val(objSBGridDetail.getTextMatrix(nClickedRow,2));
	$("#sDEF_FILE_NM").val(objSBGridDetail.getTextMatrix(nClickedRow,3));
	$("#sPRJT_ID").val($("#searchPrjtID").val());
	$("#sCMPL_FILE_VER").val(objSBGridDetail.getTextMatrix(nClickedRow,5));
	$("#sCMPL_FILE_NM").val(objSBGridDetail.getTextMatrix(nClickedRow,6));
	$("#sCMPL_YN").val(objSBGridDetail.getTextMatrix(nClickedRow,7));
	$("#sCMPL_DT").val(objSBGridDetail.getTextMatrix(nClickedRow,8));
	
	fn_File_Clear();
	
	var nClickedCol = objSBGridDetail.getCol();
	if(nClickedCol == '4'){
		var downloadFile = objSBGridDetail.getTextMatrix(nClickedRow, 3);
		if (downloadFile == "")
			return;
		
		fn_DownloadFile("MG12", downloadFile);
	}
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
			<jsp:include page="../common/layout_left_mg.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    		<!-- Form -->
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
	    		    <div class="fixbox">
						<!-- START : title -->
	    		        <h2>[MG12] 사업관리(TASK)</h2>
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
			   			<!-- START : grid section -->
		    		    <div class="section">
		    		        <h3>ACTIVITY</h3>
		    		        <div id="activityInfo">
							</div>
		    		    </div>
		    		    <!-- END : grid section -->
		    		    
						<br/>
						<!-- START : input table section -->
	    		        <div id="taskSection" class="section">
	    		        	<h3>TASK</h3>
	    		            <table class="table01" border="0" cellspacing="0" summary="">
	    		                <tbody>
		    		                <tr>
										<th class="w100"><pk>*</pk> TASK ID</th>
										<td >
											<input type="text" class="txtinp w200" id="sTASK_ID" name="sTASK_ID" /> 
										</td>
										<th class="w100">TASK명</th>
										<td >
											<input type="text" class="txtinp w200" id="sTASK_NM" name="sTASK_NM"/> 
										</td>
									</tr>
									<tr>
										<th class="w100">설명</th>
										<td colspan="3">
											<textarea class="txtinp w700" rows="5" id="sTASK_DESC" name="sTASK_DESC" ></textarea>
										</td>
									</tr>
									<tr>
										<th class="w100">파일명</th>
										<td colspan="3">
											<div class="inputfile">
												<input type="text" class="txtinp w590" id="sDEF_FILE_NM" readOnly/>
												<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sDEF_FILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
									        </div>
										</td>
									</tr>
					 			</tbody>
	    		            </table>
	    		        </div><!--//section-->
	    		        <!-- END : input table section -->
	
						<!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
	    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
	    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
	    		            </ul>
	    		        </div>
	    		        <!-- END : button section -->
	    		        <!-- START : grid section -->
		    		    <div class="section">
		    		        <div id="taskInfo">
							</div>
		    		    </div>
		    		    <!-- END : grid section -->
		    		    
						<!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
	    		            </ul>
	    		        </div>
	    		        <!-- END : button section -->
	    		        
				 	</div><!--//pixbox-->
					<div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sCMPL_FILE_VER" name="sCMPL_FILE_VER"/>
						<input type="hidden" class="inputType" id="sCMPL_YN" name="sCMPL_YN"/>
						<input type="hidden" class="inputType" id="sCMPL_DT" name="sCMPL_DT"/>
						<input type="hidden" class="inputType" id="sCMPL_FILE_NM" name="sCMPL_FILE_NM"/>
						<input type="hidden" class="inputType" id="sMNG_STAGE" name="sMNG_STAGE"/>
						<input type="hidden" class="inputType" id="sACTIVITY_ID" name="sACTIVITY_ID"/>
					</div>
	    		</form>	
	    	</div><!--//cont-->
		</div><!--//content-->
    </div><!--//container-->
    <div>
		<iframe id="dnjsp" name="dnjsp" frameborder="0" width="0" height="0" ></iframe>
	</div>
</div><!--//wrap-->
<!--footer-->
<div id="footer">
	<jsp:include page="../common/layout_footer.jsp" flush="true" />
</div><!--//footer-->
</body>
</html>