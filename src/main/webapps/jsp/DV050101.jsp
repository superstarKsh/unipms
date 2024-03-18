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

var prjtStage = [];

function fn_Init() {
	$("#container input[type=text], #container select, #container textarea").val("");

	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");
	$("#sTEST_STAGE").val("<%=(String) session.getAttribute("sTEST_STAGE")%>");

	fn_InitLoad();
};

function fn_InitLoad() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "DV050101", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	prjtStage = result.prjtStage;
	var selPrjtStage = '<option value="">선 택</option>';
	$.each(result.prjtStage,function(key, value) {
		selPrjtStage = selPrjtStage + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sPRJT_STAGE").empty().append(selPrjtStage);
	});

	fn_InitGrid();
};

function fn_InitGrid() {
	var caption = "*진행단계^TASK ID^TASK ID^*산출물ID^산출물명^첨부파일^비고^파일명";
	var colWidth = "10%,10%,3%,10%,30%,10%,40%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtOutputInfo", "objSBGrid", caption, colWidth, "400px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						fn_SetSBGridCol("00", "combo"  , "sPRJT_STAGE"   , "center", ["prjtStage", "sCODE_NM", "sCODE"], false),
						fn_SetSBGridCol("01", "output" , "sTASK_ID"      , "center", null, false),
						fn_SetSBGridCol("02", "imageS" , ""              , "center", null, false),
						fn_SetSBGridCol("03", "input"  , "sOUTPUT_ID"    , "center", null, false),
						fn_SetSBGridCol("04", "input"  , "sOUTPUT_NM"    , "left"  , null, false),
						fn_SetSBGridCol("05", "imageF" , "sDEF_IMG_URL"  , "center", null, false),
						fn_SetSBGridCol("06", "input"  , "sOUTPUT_DESC"  , "left"  , null, false),
						fn_SetSBGridCol("07", "output" , "sDEF_FILE_NM"  , "center", null, true)
	                ];

	objSBGrid.createColumns(objColumnsInfo);
	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");

	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "DV050101.jsp";
};

function fn_Init_Data() {
	$("#section input[type=text], #section select, #section textarea").val("");
	fn_File_Clear();
};

function fn_File_Clear() {
	if (brswType == 1) {
		document.getElementById("uploadFile").select();
		document.selection.clear();
		
		document.getElementById("uploadWbsFile").select();
		document.selection.clear();
	} else {
		$("#uploadFile").val("");
		$("#uploadWbsFile").val("");
	}
};

function fn_SelectInitID() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sPRJT_STAGE option:selected").val(),
		sTASK_ID : $("#sTASK_ID option:selected").val()
	};
	
	fn_AjaxSend(sendData, "DV050102", fn_SetDataSelectInitID, null);
};

function fn_SetDataSelectInitID(result) {
	var outputInfo = result.outputInfo;
	$("#sOUTPUT_ID").val(outputInfo.sOUTPUT_ID);
};

function fn_SelectInitTask(args){

	$("#sTASK_ID").empty();
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sPRJT_STAGE").val()
	};
	
	fn_AjaxSendParam(sendData, "DV050181", fn_SetDataSelectInitTask, null, args, null, null);
};

function fn_SetDataSelectInitTask(result, args, args2, args3) {
	var selTaskInfo = '<option value="">선 택</option>';
	$.each(result.prjTaskInfo,function(key, value) {
		selTaskInfo = selTaskInfo + '<option value="' + value.sTASK_ID + '">' + value.sTASK_NM + '</option>';
		$("#sTASK_ID").empty().append(selTaskInfo);
	});

	if (args == "") {
		fn_SelectInitID();
	} else {
		$("#sTASK_ID").val(args);
	}
};

function fn_SelectPrjtInfo() {
	fn_Init_Data();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sPRJT_STAGE option:selected").val()
	};

	fn_AjaxSend(sendData, "DV050111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.outputInfo;
	objSBGrid.setColHidden(1, false);
	objSBGrid.setColHidden(2, false);
    objSBGrid.rebuild();
};

function fn_SelectPrjtInitInfo() {
	fn_Init_Data();

	var sendData = {
		sPRJT_ID 	: $("#searchPrjtID").val()
	};
	
	fn_AjaxSend(sendData, "DV050114", fn_SetDataSelectPrjtInitInfo, null);
};

function fn_SetDataSelectPrjtInitInfo(result) {
	resultData = result.outputPoolInfo;
	objSBGrid.setColHidden(1, true);
	objSBGrid.setColHidden(2, true);
	objSBGrid.rebuild();
};

function fn_InsertPrjt() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sPRJT_STAGE option:selected").val(),
		sTASK_ID : $("#sTASK_ID option:selected").val(),
		sOUTPUT_ID : $("#sOUTPUT_ID").val(),
		sOUTPUT_NM : $("#sOUTPUT_NM").val(),
		sDEF_FILE_NM : fn_GetFileName($("#sDEF_FILE_NM").val()),
		sOUTPUT_DESC : $("#sOUTPUT_DESC").val()
	};

	fn_AjaxSend(sendData, "DV050121", fn_SelectPrjtInfo, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sPRJT_STAGE option:selected").val(),
		sTASK_ID : $("#sTASK_ID option:selected").val(),
		sOUTPUT_ID : $("#sOUTPUT_ID").val()
	};

	fn_AjaxSend(sendData, "DV050141", fn_SelectPrjtInfo, PMS_PROC_DELETE);
};

function fn_ModifyPrjt() {
	var arrMap = new Map();
	var arrlist = new Array(objSBGrid.rows-1);
	arrMap.put("sPRJT_ID", $("#searchPrjtID").val());

	for (var i=1; i<objSBGrid.rows; i++) {
		if(objSBGrid.getTextMatrix(i,0) == "") {
			alert(SELECT_PRJT_STAGE);
			return;
		}
		if(objSBGrid.getTextMatrix(i,3) == "") {
			alert(SELECT_OUTPUT_ID);
			return;
		}

		var taskMap = new Map();

		taskMap.put("sPRJT_STAGE"    , objSBGrid.getTextMatrix(i,0));
		taskMap.put("sTASK_ID"   	 , objSBGrid.getTextMatrix(i,1));
		taskMap.put("sOUTPUT_ID"     , objSBGrid.getTextMatrix(i,3));
		taskMap.put("sOUTPUT_NM"     , objSBGrid.getTextMatrix(i,4));
		taskMap.put("sOUTPUT_DESC"   , objSBGrid.getTextMatrix(i,6));
		taskMap.put("sDEF_FILE_NM"   , objSBGrid.getTextMatrix(i,7));

		arrlist[i-1] = taskMap;
	}
	
	arrMap.putMapList("sPRJT_OUTPUT", arrlist);

	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "DV050122", fn_SelectPrjtInfo, PMS_PROC_INSERT);
};

function fn_SelectListInfo() {
	
	var nClickedRow = objSBGrid.getRow();
	var nClickedCol = objSBGrid.getCol();

	if (nClickedRow <= 0 )
		return;

	$("#sPRJT_STAGE").val(objSBGrid.getTextMatrix(nClickedRow,0));
	var taskId = objSBGrid.getTextMatrix(nClickedRow,1);
	$("#sOUTPUT_ID").val(objSBGrid.getTextMatrix(nClickedRow,3));
	$("#sOUTPUT_NM").val(objSBGrid.getTextMatrix(nClickedRow,4));
	$("#sOUTPUT_DESC").val(objSBGrid.getTextMatrix(nClickedRow,6));
	$("#sDEF_FILE_NM").val(objSBGrid.getTextMatrix(nClickedRow,7));
	
	if (nClickedCol == 5) {
		var downloadFile = objSBGrid.getTextMatrix(nClickedRow, 7);
		if (downloadFile == "")
			return;

		fn_DownloadFile(downloadFile);
	}
	
	var nSelCol = objSBGrid.col;
	var nSelRow = objSBGrid.row;
	var sPRJT_STAGE =(objSBGrid.getTextMatrix(nClickedRow,0));

	var popupUrl = "PU010131.jsp?nSelRow="+nSelRow+"&DV050101=sTASK_INFO&sPRJT_STAGE="+sPRJT_STAGE;
	
	var posX = window.screenX+150;
	var posY = window.screenY+100;
	var popupStyles = "toolbar=no,directories=no,scrollbars=yes,resizable=no,status=no,menubar=no,width=520,height=700,top="+posY+",left="+posX;
	
	if (nSelCol== 2) {
		window.open(popupUrl,"",popupStyles);
	}
	
	fn_SelectInitTask(taskId);
};

function fn_InsertPrjtFile() {
	if($("#sPRJT_STAGE").val() == null || $("#sPRJT_STAGE").val() == "") {
		alert(SELECT_PRJT_STAGE);
		return;
	}

	if($("#sOUTPUT_ID").val() == null || $("#sOUTPUT_ID").val() == "") {
		alert(SELECT_OUTPUT_ID);
		return;
	}
	
	fn_InsertUploadFile("DV05", fn_InsertPrjt);
};

function fn_AddRow() {
	if(objSBGrid.selectedRow(0) == '-1'){
		objSBGrid.addItem();
	}else{
		objSBGrid.insertItem( objSBGrid.selectedRow(0) , "below");
	}
};

function fn_DelRow() {
	var nRow = objSBGrid.getClickedRow();
	objSBGrid.deleteItem(nRow);
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
    		        <h2>[DV05] 산출물정의</h2>
    		        <!-- END : title -->
					<!-- START : search section -->
    		        <div id="searchSection" class="section">
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
    		        <div id="section" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100"><pk>*</pk> 진행단계</th>
    		                        <td>
    		                        	<select class="selectbox" id="sPRJT_STAGE" name="sPRJT_STAGE" onChange="javascript:fn_SelectInitTask('');">
										</select>
    		                        </td>
    		                        <th class="w100"><pk>*</pk> 산출물 ID</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" id="sOUTPUT_ID" name="sOUTPUT_ID" />
                                    </td>
    		                    </tr>
    		                    <tr>
	    		                    <th class="w150">TASK ID</th>
	    		                    <td colspan="3">
	    		                       <select class="selectbox wp100" name="selectbox" id="sTASK_ID" name="sTASK_ID">
										</select>
	    		                    </td>
	    		                </tr>
    		                    <tr>
    		                        <th class="w100">산출물명</th>
    		                        <td colspan="3">
										<input type="text" class="txtinp w700" name="sOUTPUT_NM" id="sOUTPUT_NM" />
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">비고</th>
    		                        <td colspan="3">
										<textarea class="txtinp w700" cols="100" rows="5" name="sOUTPUT_DESC" id="sOUTPUT_DESC" ></textarea>
                                    </td>
    		                    </tr>
    		                    <tr>
									<th>첨부파일</th>
									<td colspan="3">
										<div class="inputfile">
											<input type="text" class="txtinp w590" id="sDEF_FILE_NM" name="sDEF_FILE_NM" readOnly/>
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
    		        </div><!--//section-->
    		        <!-- END : button section -->
    		        <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox_top right">
    		                <li><a href="javascript:fn_SelectPrjtInitInfo();" class="btn01">산출물 POOL 조회</a></li>
    		                <li><a href="javascript:fn_SelectPrjtInfo();" class="btn01">산출물 목록 조회</a></li>
    		                <li><a href="javascript:fn_AddRow();" class="btn02">행추가</a></li>
    		                <li><a href="javascript:fn_DelRow();" class="btn03">행 삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        <!-- END : button section -->

	    		    <!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtOutputInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		    <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div>
				</div><!--//pixbox-->
				<div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sTEST_STAGE" name="sTEST_STAGE"/>
				</div>
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