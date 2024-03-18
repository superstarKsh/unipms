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

var excelUploadYn = "";

function fn_InitLoad() {
	excelUploadYn = "N";

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTASK_LEVEL : "2"
	};
	
	fn_AjaxSend(sendData, "MG010102", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var taskInfo = result.taskInfo;
	$("#sTASK_LEVEL").val("2");
	$("#sTASK_ID").val(taskInfo.sTASK_ID);

	fn_InitGrid();
};

function fn_InitGrid() {
	var caption = "TASK ID^상위 TASK ID^TASK 명^TASK LEVEL^시작일자^종료일자^진행률(%)^TASK 설명^선행작업^산출물^메모^^";
	var colWidth = "25%,15%,30%,10%,15%,15%,10%,20%,10%,10%,20%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtTaskInfo", "objSBGrid", caption, colWidth, "400px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
				fn_SetSBGridCol("00", "input"     , "sTASK_ID"        , "left"  , null, false),
				fn_SetSBGridCol("01", "input"     , "sUPPER_TASK_ID"  , "center", null, true),
				fn_SetSBGridCol("02", "input"     , "sTASK_NM"        , "left"  , null, false),
				fn_SetSBGridCol("03", "input"     , "sTASK_LEVEL"     , "center", null, false),
				fn_SetSBGridCol("04", "inputdate" , "sSTRT_DT"        , "center", "yyyy.mm.dd", false),
				fn_SetSBGridCol("05", "inputdate" , "sEND_DT"         , "center", "yyyy.mm.dd", false),
				fn_SetSBGridCol("06", "input"     , "sPROGRESS_RT"    , "right" , null, false),
				fn_SetSBGridCol("07", "input"     , "sTASK_DESC"      , "left"  , null, false),
				fn_SetSBGridCol("08", "input"     , "sBEFORE_TASK_ID" , "center", null, false),
				fn_SetSBGridCol("09", "input"     , "sOUTPUT_LIST"    , "left"  , null, true),
				fn_SetSBGridCol("10", "input"     , "sMEMO"           , "left"  , null, false),
				fn_SetSBGridCol("11", "output"    , "sFILE_NM"        , "left"  , null, true)
			];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");

	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "MG010101.jsp";
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};
	
	fn_AjaxSend(sendData, "MG010111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.taskInfo;
	excelUploadYn = "N";
	
	objSBGrid.rebuild();
	fn_SetGridGroup();
};

function fn_InsertPrjt() {

	if($("#sTASK_LEVEL").val() == null || $("#sTASK_LEVEL").val() == ""  ) {
		alert(INSERT_TASK_LEVEL);
		return;
	} else 	if($("#sTASK_ID").val() == null || $("#sTASK_ID").val() == ""  ) {
		alert(INSERT_TASK_ID);
		return;
	}
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTASK_LEVEL : $("#sTASK_LEVEL").val(),
		sTASK_ID : $("#sTASK_ID").val(),
		sUPPER_TASK_ID : $("#sUPPER_TASK_ID").val(),
		sTASK_NM : $("#sTASK_NM").val(),
		sSTRT_DT : $("#sSTRT_DT").val(),
		sEND_DT : $("#sEND_DT").val(),
		sPROGRESS_RT : $("#sPROGRESS_RT").val(),
		sTASK_DESC : $("#sTASK_DESC").val(),
		sBEFORE_TASK_ID : $("#sBEFORE_TASK_ID").val(),
		sOUTPUT_LIST : $("#sOUTPUT_LIST").val(),
		sMEMO : $("#sMEMO").val(),
		sFILE_NM : fn_GetFileName($("#sFILE_NM").val())
	};
	
	fn_AjaxSend(sendData, "MG010121", fn_Init, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTASK_ID : $("#sTASK_ID").val()
	};
	
	fn_AjaxSend(sendData, "MG010141", fn_Init, PMS_PROC_DELETE);
};

function fn_ModifyPrjt() {

	var arrMap = new Map();
	var arrlist = new Array(objSBGrid.rows - 1);

	arrMap.put("sPRJT_ID"	, $("#searchPrjtID").val());

	for (var i=1; i < objSBGrid.rows; i++) {
		var taskMap = new Map();
		
		if(objSBGrid.getTextMatrix(i,0) == "") {
			alert(INSERT_TASK_ID);
			return;
		}
		
		taskMap.put("sTASK_ID"     		, objSBGrid.getTextMatrix(i,0));
		taskMap.put("sUPPER_TASK_ID"    , objSBGrid.getTextMatrix(i,1));
		taskMap.put("sTASK_NM" 		    , objSBGrid.getTextMatrix(i,2));
		taskMap.put("sTASK_LEVEL" 		, objSBGrid.getTextMatrix(i,3));
		taskMap.put("sSTRT_DT" 		    , objSBGrid.getTextMatrix(i,4));
		taskMap.put("sEND_DT"  		    , objSBGrid.getTextMatrix(i,5));
		taskMap.put("sPROGRESS_RT"      , objSBGrid.getTextMatrix(i,6));
		taskMap.put("sTASK_DESC"  		, objSBGrid.getTextMatrix(i,7));
		taskMap.put("sBEFORE_TASK_ID"   , objSBGrid.getTextMatrix(i,8));
		taskMap.put("sOUTPUT_LIST"      , objSBGrid.getTextMatrix(i,9));
		taskMap.put("sMEMO"      		, objSBGrid.getTextMatrix(i,10));
		taskMap.put("sFILE_NM"      	, objSBGrid.getTextMatrix(i,11));

		arrlist[i-1] = taskMap;
	}

	arrMap.putMapList("sPRJT_TASK_INFO", arrlist);
	
	var sendData = arrMap.jsonParse();

	if(excelUploadYn == "Y")
		fn_AjaxSend(sendData, "MG010122A", fn_Init, PMS_PROC_INSERT);
	else
		fn_AjaxSend(sendData, "MG010122", fn_Init, PMS_PROC_INSERT);
};

function fn_SetGridGroup() {
	objSBGrid.setGroup("none");
	
	for(var i=1; i<objSBGrid.rows; i++)
	{
		objSBGrid.setGroupLevel(i, objSBGrid.getTextMatrix(i,0).length/2 );
	}
	objSBGrid.setGroup("complete");
};

function fn_SelectListInfo() {
	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;
	
	$("#sTASK_ID").val(objSBGrid.getTextMatrix(nClickedRow,0));
	$("#sUPPER_TASK_ID").val(objSBGrid.getTextMatrix(nClickedRow,1));
	$("#sTASK_NM").val(objSBGrid.getTextMatrix(nClickedRow,2));
	$("#sTASK_LEVEL").val(objSBGrid.getTextMatrix(nClickedRow,3));
	$("#sSTRT_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRow,4)));
	$("#sEND_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRow,5)));
	$("#sPROGRESS_RT").val(objSBGrid.getTextMatrix(nClickedRow,6));
	$("#sTASK_DESC").val(objSBGrid.getTextMatrix(nClickedRow,7));
	$("#sBEFORE_TASK_ID").val(objSBGrid.getTextMatrix(nClickedRow,8));
	$("#sOUTPUT_LIST").val(objSBGrid.getTextMatrix(nClickedRow,9));
	$("#sMEMO").val(objSBGrid.getTextMatrix(nClickedRow,10));
	$("#sFILE_NM").val(objSBGrid.getTextMatrix(nClickedRow,11));
};

function fn_InsertPrjtFile() {
	fn_InsertUploadFile("MG01IN", fn_InsertPrjt);
};

function fn_InsertOutputFile() {
	if ($("#sUPLOAD_FILE").val() == "") {
		alert(SELECT_MODIFY_FILE);
		return;
	}
	
	fn_InsertUploadFile("MG01OUT", fn_ExcelDataLoad);
};

function fn_ExcelDataLoad() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sFILE_NM : fn_GetFileName($("#sUPLOAD_FILE").val())
	};
	
	fn_AjaxSend(sendData, "MG010153", fn_SetDataExcelDataLoad, null);
};

function fn_SetDataExcelDataLoad(result) {
	resultData = result.mg010101ovo_excel;
	excelUploadYn = "Y";
	objSBGrid.rebuild();
};

function fn_AddRow() {
	if(objSBGrid.selectedRow(0) == '-1'){
		objSBGrid.addItem();
	}else{
		objSBGrid.insertItem( objSBGrid.selectedRow(0) , "below");
	}
	fn_SetGridGroup();
};

function fn_DelRow() {
	var nRow = objSBGrid.getClickedRow();
	objSBGrid.deleteItem(nRow);
	fn_SetGridGroup();
};

$(function() {
    $( "#sSTRT_DT" ).datepicker(setCalendar);
    $( "#sEND_DT" ).datepicker(setCalendar);
});

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
	    		        <h2>[MG01] 사업관리 등록</h2>
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
	                    
					<!-- START : input table section -->
						<br/>
	    		        <div class="section">
	    		            <table class="table01" border="0" cellspacing="0" summary="">

	    		                <tbody>
		    		                <tr>
										<th class="w100"><pk>*</pk> TASK LEVEL</th>
										<td >
											<input type="text" class="txtinp w100" id="sTASK_LEVEL" name="sTASK_LEVEL" /> 
										</td>
										<th class="w100"><pk>*</pk> TASK ID</th>
										<td >
											<input type="text" class="txtinp w100" id="sTASK_ID" name="sTASK_ID"/> 
										</td>
									</tr>
		    		                <tr>
		    		                	<!--
										<th class="w100"><pk>*</pk> 상위 TASK ID</th>
										<td >
											<input type="text" class="txtinp w100" id="sUPPER_TASK_ID" name="sUPPER_TASK_ID" /> 
										</td>
										-->
										<th class="w100">TASK 명</th>
										<td colspan="3">
											<input type="text" class="txtinp w600" id="sTASK_NM" name="sTASK_NM"/> 
										</td>
									</tr>
		    		                <tr>
										<th class="w100">TASK 설명</th>
										<td colspan="3">
											<input type="text" class="txtinp w600" id="sTASK_DESC" name="sTASK_DESC"/> 
										</td>
									</tr>
		    		                <tr>
										<th class="w100">시작일자</th>
										<td >
											<input type="text" class="txtinp w100" id="sSTRT_DT" name="sSTRT_DT" /> 
										</td>
										<th class="w100">종료일자</th>
										<td >
											<input type="text" class="txtinp w100" id="sEND_DT" name="sEND_DT"/> 
										</td>
									</tr>
		    		                <tr>
		    		                	<th class="w100">선행작업</th>
										<td >
											<input type="text" class="txtinp w100" id="sBEFORE_TASK_ID" name="sBEFORE_TASK_ID"/> 
										</td>
										<th class="w100">진행률</th>
										<td >
											<input type="text" class="txtinp w100" id="sPROGRESS_RT" name="sPROGRESS_RT" /> % 
										</td>
									</tr>
									<tr>
										<th class="w100">메모</th>
										<td colspan="3">
											<input type="text" class="txtinp w600" id="sMEMO" name="sMEMO"/> 
										</td>									
									</tr>
									<tr>
										<th class="w100">첨부파일</th>
										<td colspan="3">
											<div class="inputfile">
												<input type="text" class="txtinp w590" id="sFILE_NM" name="sFILE_NM" readOnly/>
												<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>  					
											</div>
										</td>
									</tr>
					 			</tbody>
	    		            </table>
	    		        </div><!--//section-->

    		        <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div>
    		        <!-- END : button section -->

	   		        <!--//section-->
	   		        <div class="section">
	   		            <ul class="btnbox_top right">
	   		                <li><a href="javascript:fn_AddRow();" class="btn02">행추가</a></li>
	   		                <li><a href="javascript:fn_DelRow();" class="btn03">행삭제</a></li>
	   		            </ul>
	   		        </div><!--//section-->
	   		        <!-- END : button section -->

					<!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtTaskInfo">
						</div>
	    		    </div>


	    		    <div class="section">
						<table class="table01" border="0" cellspacing="0" summary="">
							<tr>
								<td>
									<div class="inputfileR">
										<input type="text" class="txtinp w470" id="sUPLOAD_FILE" name="sUPLOAD_FILE" readOnly/>
										<p><input type="file" class="file_add" id="uploadWbsFile" name="uploadWbsFile"  onchange="document.getElementById('sUPLOAD_FILE').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>  					
									</div>
								</td>
								<td>
									<ul class="tase right">
										<li><a href="javascript:fn_InsertOutputFile()" class="btn01">양식Upload</a></li>
									</ul>
								</td>
							</tr>
						</table>     					
					</div>
					
    		        <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div>
    		        <!-- END : button section -->
	    		    </div>
	    		</form>
	    	</div>
	    </div>

	    <div id="hiddenColumn">
		</div>
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