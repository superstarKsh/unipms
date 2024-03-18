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
	$("#sCURR_STAGE").val("<%=(String) session.getAttribute("sCURR_STAGE")%>");
	
	fn_InitLoad();
};

function fn_InitLoad() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "DV021101", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var selCurrStage = '<option value="">선 택</option>';
	$.each(result.prjtStage,function(key, value) {
		selCurrStage = selCurrStage + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#searchPrjtStage").empty().append(selCurrStage);
	});

	$("#searchPrjtStage").val($("#sCURR_STAGE").val());
	fn_InitGrid();
};

function fn_InitGrid() {
	var caption = "TASK ID^SEG ID^SUB SEG ID^명칭^업무내용^담당자^담당자^시작일자^종료일자^범위확정^";
	var colWidth = "10%,10%,10%,30%,25%,10%,3%,12%,12%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtTaskInfoDetail", "objSBGrid", caption, colWidth, "400px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						fn_SetSBGridCol("00", "output"    , "sTASK_ID"     , "center" , null, false),
						fn_SetSBGridCol("01", "input"     , "sSEG_ID"      , "center" , null, false),
						fn_SetSBGridCol("02", "input"     , "sSEG_SUB_ID"  , "center" , null, false),
						fn_SetSBGridCol("03", "input"     , "sTASK_NM"     , "left"   , null, false),
						fn_SetSBGridCol("04", "input"     , "sTASK_DESC"   , "left"   , null, false),
						fn_SetSBGridCol("05", "output"    , "sCORP_MNG_NM" , "center" , null, false),
						fn_SetSBGridCol("06", "imageS"    , ""             , "center" , null, false),
						fn_SetSBGridCol("07", "inputdate" , "sSTRT_DT"     , "center" , "yyyy.mm.dd", false),
						fn_SetSBGridCol("08", "inputdate" , "sEND_DT"      , "center" , "yyyy.mm.dd", false),
						fn_SetSBGridCol("09", "combo"     , "sDEF_YN"      , "center" , ["yesNo", "label", "value"], false),
						fn_SetSBGridCol("10", "output"    , "sCORP_MNG_ID" , "center" , null, true)
	                ];

	objSBGrid.createColumns(objColumnsInfo);
	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");

	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "DV021101.jsp";
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
		sPRJT_STAGE : $("#searchPrjtStage option:selected").val()
	};
	
	fn_AjaxSend(sendData, "DV021111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.taskInfo;
	objSBGrid.rebuild();
};

function fn_ModifyPrjtTaskInfo() {
	
	if($("#searchPrjtStage").val() == null || $("#searchPrjtStage").val() == "") {
		alert(SELECT_PRJT_STAGE);
		return;
	}

	var arrMap = new Map();
	var arrlist = new Array(objSBGrid.rows - 1);

	arrMap.put("sPRJT_ID"	, $("#searchPrjtID").val());
	arrMap.put("sPRJT_STAGE", $("#searchPrjtStage option:selected").val());

	for (var i=1; i<objSBGrid.rows; i++) {
		
		var taskMap = new Map();

		taskMap.put("sTASK_ID"    , objSBGrid.getTextMatrix(i,0));
		taskMap.put("sSEG_ID"     , objSBGrid.getTextMatrix(i,1));
		taskMap.put("sSEG_SUB_ID" , objSBGrid.getTextMatrix(i,2));
		taskMap.put("sTASK_NM"    , objSBGrid.getTextMatrix(i,3));
		taskMap.put("sTASK_DESC"  , objSBGrid.getTextMatrix(i,4));
		taskMap.put("sCORP_MNG_NM", objSBGrid.getTextMatrix(i,5));
		taskMap.put("sSTRT_DT"    , objSBGrid.getTextMatrix(i,7));
		taskMap.put("sEND_DT"     , objSBGrid.getTextMatrix(i,8));
		taskMap.put("sDEF_YN"     , objSBGrid.getTextMatrix(i,9));
		
		arrlist[i-1] = taskMap;
	}
	
	arrMap.putMapList("sPRJT_TASK_INFO", arrlist);
	
	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "DV021122", fn_SelectPrjtInfo, PMS_PROC_INSERT);
};

function fn_SelectListInfo() {
	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;

	var nSelRow = objSBGrid.row;
	var nSelCol = objSBGrid.col;

	var popupUrl = "PU010112.jsp?nSelRow="+nSelRow;
	
	if (nSelCol== 6) {
		window.open(popupUrl,"",popupStyle);
	}
};

function fn_InsertPrjtFile() {
	if($("#searchPrjtStage").val() == null || $("#searchPrjtStage").val() == ""  ) {
		alert(SELECT_PRJT_STAGE);
		return;
	}
	
	if ($("#sFILE_NM").val() == "") {
		alert(SELECT_MODIFY_FILE);
		return;
	}

	fn_InsertUploadFile("DV0211", fn_ExcelDataLoad);
};


function fn_ExcelDataLoad(){
	
	var sendData = {
		sFILE_NM : fn_GetFileName($("#sFILE_NM").val())
	};	

	fn_AjaxSend(sendData, "DV021153", fn_SetDataExcelDataLoad, null);
};

function fn_SetDataExcelDataLoad(result) {
	resultData = result.taskInfo;
	objSBGrid.rebuild();
};

function fn_FileDownLoad() {
	var downloadFile= "uni_pms_mass_enrollment.xls";
	fn_DownloadFile("DV0211", downloadFile);
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
	    		        <h2>[DV02] TASK 일괄 등록</h2>
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
	    		                        <li class="name"><span>진행단계</span></li>
	    		                    	<li><select class="selectbox" id="searchPrjtStage" name="searchPrjtStage" ></select></li>
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
		    		        <div id="prjtTaskInfoDetail">
							</div>
		    		    </div>
		    		    
		    		    <div id="fileSection" class="section">
							<table class="table01" border="0" cellspacing="0" summary="">
								<tr>
									<th>일괄등록</th>
									<td>
										<div class="inputfileMR">
											<input type="text" class="txtinp w400" id="sFILE_NM" name="sFILE_NM" readOnly/>
											<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>  					
										</div>
									</td>
									<td>
										<ul class="tase right">
											<li><a href="javascript:fn_FileDownLoad()" class="btn01">양식 Download</a></li>
											<li><a href="javascript:fn_InsertPrjtFile()" class="btn01">양식Upload</a></li>
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
							<input type="hidden" class="inputType" id="sCURR_STAGE" name="sCURR_STAGE"/>
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