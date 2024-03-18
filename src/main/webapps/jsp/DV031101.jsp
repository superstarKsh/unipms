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
	$("#sDEV_STAGE").val("<%=(String) session.getAttribute("sDEV_STAGE")%>");
	
	fn_InitGrid();
};

function fn_InitGrid() {
	var caption = "TASK ID^프로그램 ID^프로그램 명^프로그램 종류^구분^중요도^개발일정^개발일정^개발일정^개발일정^선행프로그램^후행프로그램^단위테스트^단위테스트^단위테스트^단위테스트^담당자^담당자^PM확인^고객확인^구분ID^중요도ID^담당자ID^진행율(%)^TASK ID^SEG ID^SUB SEG ID|TASK ID^프로그램 ID^프로그램 명^프로그램 종류^구분^중요도^계획시작일자^계획종료일자^시작일자^종료일자^선행프로그램^후행프로그램^계획시작일자^계획종료일자^시작일자^종료일자^담당자^담당자^PM확인^고객확인^구분ID^중요도ID^담당자ID^진행율(%)^TASK ID^SEG ID^SUB SEG ID";
	var colWidth = "10%,10%,15%,10%,10%,8%,12%,12%,12%,12%,12%,12%,12%,12%,12%,12%,10%,3%,8%,8%,10%,10%,8%,8%,10%,10%,10%,8%";
	
	objGridInitInfo = fn_InitSBGrid("prjtDevInfo", "objSBGrid", caption, colWidth, "400px", "resultData", true, 3);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
	                  	fn_SetSBGridCol("00", "output"    , "sACTIVITY_ID"         , "center"  , null, false),
						fn_SetSBGridCol("01", "output"    , "sPRG_ID"              , "center"  , null, false),
						fn_SetSBGridCol("02", "output"    , "sPRG_NM"              , "left"    , null, false),
						fn_SetSBGridCol("03", "output"    , "sPRG_EXTN"            , "center"  , null, false),
						fn_SetSBGridCol("04", "output"    , "sPRG_TYPE_NM"         , "center"  , null, false),
						fn_SetSBGridCol("05", "output"    , "sIMP_RT_NM"           , "center"  , null, false),
						fn_SetSBGridCol("06", "inputdate" , "sPRJ_PLAN_STRT_DT"    , "center"  , "yyyy.mm.dd", false),
						fn_SetSBGridCol("07", "inputdate" , "sPRJ_PLAN_END_DT"     , "center"  , "yyyy.mm.dd", false),
						fn_SetSBGridCol("08", "inputdate" , "sPRJ_DEV_STRT_DT"     , "center"  , "yyyy.mm.dd", false),
						fn_SetSBGridCol("09", "inputdate" , "sPRJ_DEV_END_DT"      , "center"  , "yyyy.mm.dd", false),
						fn_SetSBGridCol("10", "output"    , "sBEFORE_PGM"          , "left"    , null, false),
						fn_SetSBGridCol("11", "output"    , "sAFTER_PGM"           , "left"    , null, false),
						fn_SetSBGridCol("12", "inputdate" , "sTEST_PLAN_STRT_DT"   , "center"  , "yyyy.mm.dd", false),
						fn_SetSBGridCol("13", "inputdate" , "sTEST_PLAN_END_DT"    , "center"  , "yyyy.mm.dd", false),
						fn_SetSBGridCol("14", "inputdate" , "sTEST_DEV_STRT_DT"    , "center"  , "yyyy.mm.dd", false),
						fn_SetSBGridCol("15", "inputdate" , "sTEST_DEV_END_DT"     , "center"  , "yyyy.mm.dd", false),
						fn_SetSBGridCol("16", "output"    , "sDEV_USER_NM"         , "left"    , null, false),
						fn_SetSBGridCol("17", "imageS"     , ""                    , "center"  , null, false),
						fn_SetSBGridCol("18", "combo"     , "sPM_CNFM"             , "center"  , ["yesNo_YN", "label", "value"], false),
						fn_SetSBGridCol("19", "combo"     , "sCUS_CNFM"            , "center"  , ["yesNo_YN", "label", "label"], false),
						fn_SetSBGridCol("20", "output"    , "sPRG_TYPE"            , "center"  , null, true), 
						fn_SetSBGridCol("21", "output"    , "sIMP_RT"              , "center"  , null, true),
						fn_SetSBGridCol("22", "output"    , "sDEV_USER_ID"         , "center"  , null, true),
						fn_SetSBGridCol("23", "input"     , "sPROGRESS_RT"         , "center"  , null, true),
						fn_SetSBGridCol("24", "output"    , "sTASK_ID"             , "center"  , null, true),
						fn_SetSBGridCol("25", "output"    , "sSEG_ID"              , "center"  , null, true),
						fn_SetSBGridCol("26", "output"    , "sSEG_SUB_ID"          , "center"  , null, true)
	                ];

	objSBGrid.createColumns(objColumnsInfo);
	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
	
	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "DV031101.jsp";
};

function fn_Init_Data(){
	fn_File_Clear();
};

function fn_File_Clear() {
	$("#fileSection input[type=text], #fileSection select, #fileSection textarea").val("");
	
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
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sDEV_STAGE").val()
	};	

	fn_AjaxSend(sendData, "DV031111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.prjtPrgmInfo;
    objSBGrid.rebuild();
};

function fn_ModifyPrjtTaskInfo() {
	
	var arrMap = new Map();
	var arrlist = new Array(objSBGrid.rows - 2);

	arrMap.put("sPRJT_ID"	, $("#searchPrjtID").val());

	for (var i=2; i<objSBGrid.rows; i++) {
		var taskMap = new Map();

		taskMap.put("sTASK_ID"           , objSBGrid.getTextMatrix(i,24));
		taskMap.put("sSEG_ID"            , objSBGrid.getTextMatrix(i,25));
		taskMap.put("sSEG_SUB_ID"        , objSBGrid.getTextMatrix(i,26));
		taskMap.put("sPRG_ID"            , objSBGrid.getTextMatrix(i,1));
		taskMap.put("sPRG_NM"            , objSBGrid.getTextMatrix(i,2));
		taskMap.put("sPRG_EXTN"          , objSBGrid.getTextMatrix(i,3));
		taskMap.put("sPRG_TYPE_NM"       , objSBGrid.getTextMatrix(i,4));
		taskMap.put("sIMP_RT_NM"         , objSBGrid.getTextMatrix(i,5));
		taskMap.put("sPRJ_PLAN_STRT_DT"  , objSBGrid.getTextMatrix(i,6));
		taskMap.put("sPRJ_PLAN_END_DT"   , objSBGrid.getTextMatrix(i,7));
		taskMap.put("sPRJ_DEV_STRT_DT"   , objSBGrid.getTextMatrix(i,8));
		taskMap.put("sPRJ_DEV_END_DT"    , objSBGrid.getTextMatrix(i,9));
		taskMap.put("sBEFORE_PGM"        , objSBGrid.getTextMatrix(i,10));
		taskMap.put("sAFTER_PGM"         , objSBGrid.getTextMatrix(i,11));
		taskMap.put("sTEST_PLAN_STRT_DT" , objSBGrid.getTextMatrix(i,12));
		taskMap.put("sTEST_PLAN_END_DT"  , objSBGrid.getTextMatrix(i,13));
		taskMap.put("sTEST_DEV_STRT_DT"  , objSBGrid.getTextMatrix(i,14));
		taskMap.put("sTEST_DEV_END_DT"   , objSBGrid.getTextMatrix(i,15));
		taskMap.put("sDEV_USER_NM"       , objSBGrid.getTextMatrix(i,16));
		taskMap.put("sPROGRESS_RT"       , objSBGrid.getTextMatrix(i,23));

		arrlist[i-2] = taskMap;
	};
	
	arrMap.putMapList("sPRG_INFO", arrlist);
	
	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "DV031122", fn_SelectPrjtInfo, PMS_PROC_INSERT);
};

function fn_InsertPrjtFile() {
	
	if ($("#sFILE_NM").val() == "") {
		alert("일괄 저장할 파일을 선택하여 주십시오.");
		return;
	}
	
	fn_InsertUploadFile("DV0311", fn_ExcelDataLoad);
};

function fn_ExcelDataLoad(){
	
	var sendData = {
		sFILE_NM : fn_GetFileName($("#sFILE_NM").val())
	};	

	fn_AjaxSend(sendData, "DV031153", fn_SetDataExcelDataLoad, null);
};

function fn_SetDataExcelDataLoad(result) {
	resultData = result.prjtPrgmInfo;
	objSBGrid.rebuild();
};

function fn_SelectListInfo() {
	
	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;

	var nSelRow = objSBGrid.row;
	var nSelCol = objSBGrid.col;
	
	var popupUrl = "PU010112.jsp?nSelRow="+nSelRow;
	
	if (nSelCol== 17) {
		window.open(popupUrl,"",popupStyle);
	}
};

function fn_ExcelDownload() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};
	
	fn_AjaxSend(sendData, "DV031154", fn_ProcDataExcelDownload, null);
};

function fn_ProcDataExcelDownload(result) {
	var fileName = result.fileName;
	fn_FileDownload(fileName);
};

function fn_FileDownload(args) {
	var downloadFile= args;
	fn_DownloadFile("DV0311", downloadFile);
};

function fn_TempletDownload() {
	var downloadFile= "uni_pms_dev_schedule_total.xls";
	fn_DownloadFile("DV0311_TL", downloadFile);
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
			<jsp:include page="../common/layout_left_dv.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[DV03] 개발일정 일괄 등록</h2>
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
	    		        <div id="prjtDevInfo">
						</div>
	    		    </div>
	    		    
	    		    <div id="fileSection" class="section">
						<table class="table01" border="0" cellspacing="0" summary="">
							<tr>
								<th>일괄등록</th>
								<td>
									<div class="inputfileMR3">
										<input type="text" class="txtinp w370" id="sFILE_NM" name="sFILE_NM" readOnly/>
										<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>  					
									</div>
								</td>
								<td>
									<ul class="taseb right">
										<li><a href="javascript:fn_TempletDownload();" class="btn01">작성방법</a></li>
										<li><a href="javascript:fn_ExcelDownload();" class="btn01">Download</a></li>
										<li><a href="javascript:fn_InsertPrjtFile();" class="btn01">양식Upload</a></li>
									</ul>
								</td>
							</tr>
						</table>   
					</div>

    		        <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_ModifyPrjtTaskInfo();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div>
    		        <!-- END : button section -->
    		        <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sDEV_STAGE" name="sDEV_STAGE"/>
					</div>
	    		    
				</div><!--//pixbox-->
				</form>
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