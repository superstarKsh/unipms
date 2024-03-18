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

	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");

	fn_InitLoad();
};

function fn_InitLoad() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};
	
	fn_AjaxSend(sendData, "AD040101", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var selPrjtStage = '<option value="">선 택</option>';
	$.each(result.prjtStage,function(key, value) {
		selPrjtStage = selPrjtStage + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';

		$("#searchPrjtStage").empty().append(selPrjtStage);
		$("#sPRJT_STAGE").empty().append(selPrjtStage);
	});

	fn_InitGrid();
};

function fn_InitGrid() {
	
	var caption = "진행단계^산출물ID^산출물명^첨부파일^비고^진행단계CODE^파일명";
	var colWidth = "15%,15%,30%,10%,30%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtOutputInfo", "objSBGrid", caption, colWidth, "300px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
		fn_SetSBGridCol("00", "output", "sPRJT_STAGE_NM"  , "center", null, false),
		fn_SetSBGridCol("01", "output", "sOUPUT_POOL_ID"  , "center", null, false),
		fn_SetSBGridCol("02", "input" , "sOUTPUT_NM"      , "left"  , null, false),
		fn_SetSBGridCol("03", "imageF", "sIMG_URL"        , "center", null, false),
		fn_SetSBGridCol("04", "input" , "sOUTPUT_DESC"    , "left"  , null, false),
		fn_SetSBGridCol("05", "output", "sPRJT_STAGE"     , "left"  , null, true),
		fn_SetSBGridCol("06", "output", "sFILE_NM"        , "left"  , null, true)
	];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");

	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "AD040101.jsp";
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_ID 	: $("#searchPrjtID").val()
	};
	
	fn_AjaxSend(sendData, "AD040111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.outputInfo;
    objSBGrid.rebuild();
};

function fn_SearchOutputId() {
	
	var sendData = {
		sPRJT_ID 	: $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sPRJT_STAGE option:selected").val()
	};
	
	fn_AjaxSend(sendData, "AD040102", fn_SetDataSearchOutputId, null);
};

function fn_SetDataSearchOutputId(result) {
	var outputPoolID = result.outputPoolID;
	$("#sOUPUT_POOL_ID").val(outputPoolID.sOUPUT_POOL_ID);
};

function fn_InsertPrjt() {
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sPRJT_STAGE option:selected").val(),
		sOUPUT_POOL_ID : $("#sOUPUT_POOL_ID").val(),
		sOUTPUT_NM : $("#sOUTPUT_NM").val(),
		sFILE_NM : fn_GetFileName($("#sFILE_NM").val()),
		sOUTPUT_DESC : $("#sOUTPUT_DESC").val()
	};
	
	fn_AjaxSend(sendData, "AD040121", fn_Init, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sPRJT_STAGE option:selected").val(),
		sOUPUT_POOL_ID : $("#sOUPUT_POOL_ID").val()
	};
	
	fn_AjaxSend(sendData, "AD040141", fn_Init, PMS_PROC_DELETE);
};

function fn_ModifyPrjt() {
	
	var arrMap = new Map();
	var arrlist = new Array(objSBGrid.rows-1);

	arrMap.put("sPRJT_ID", $("#searchPrjtID").val());

	for (var i=1; i<objSBGrid.rows; i++) {

		var taskMap = new Map();

		taskMap.put("sPRJT_STAGE"    , objSBGrid.getTextMatrix(i,5));
		taskMap.put("sOUPUT_POOL_ID" , objSBGrid.getTextMatrix(i,1));
		taskMap.put("sOUTPUT_NM"     , objSBGrid.getTextMatrix(i,2));
		taskMap.put("sFILE_NM"       , objSBGrid.getTextMatrix(i,6));
		taskMap.put("sOUTPUT_DESC"   , objSBGrid.getTextMatrix(i,4));

		arrlist[i-1] = taskMap;
	};
	
	arrMap.putMapList("sPRJT_OUTPUT", arrlist);

	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "AD040122", fn_Init, PMS_PROC_INSERT);
};

function fn_SelectListInfo() {
	
	var nClickedRow = objSBGrid.getRow();
	var nClickedCol = objSBGrid.getCol();
	
	$("#sPRJT_STAGE").val(objSBGrid.getTextMatrix(nClickedRow,5));
	$("#sOUPUT_POOL_ID").val(objSBGrid.getTextMatrix(nClickedRow,1));
	$("#sOUTPUT_NM").val(objSBGrid.getTextMatrix(nClickedRow,2));
	$("#sFILE_NM").val(objSBGrid.getTextMatrix(nClickedRow,6));
	$("#sOUTPUT_DESC").val(objSBGrid.getTextMatrix(nClickedRow,4));
	
	if (brswType == 1) {
		document.getElementById("uploadFile").select();
		document.selection.clear();
	} else {
		$("#uploadFile").val("");
	}

	if (nClickedRow <= 0 )
		return;
	
	if (nClickedCol == 3) {
		var downloadFile = objSBGrid.getTextMatrix(nClickedRow, 6);
		if (downloadFile == "")
			return;
		
		fn_DownloadFile("AD04", downloadFile);
	}
};

function fn_InsertPrjtFile() {
	fn_InsertUploadFile("AD04", fn_InsertPrjt);
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
		<jsp:include page="../common/layout_header_admin.jsp" flush="true" />
	</div>

	<div id="container">

		<div id="leftWrap">
			<jsp:include page="../common/layout_left_ad.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
    			<!-- Form -->
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
	    		    <div class="fixbox">
	
						<!-- START : title -->
	    		        <h2>[AD04] 산출물 POOL 관리</h2>
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
	    		        <!-- END : search section -->
						<!-- START : input table section -->
	    		        <div id="section" class="section">
	    		            <table class="table01" border="0" cellspacing="0" summary="">
	    		                <tbody>
	    		                    <tr>
	    		                        <th class="w100">진행단계</th>
	    		                        <td>
	    		                        	<select class="selectbox" id="sPRJT_STAGE" name="sPRJT_STAGE" onchange="javascript:fn_SearchOutputId();">
											</select>
	    		                        </td>
	    		                        <th class="w100">산출물 ID</th>
	    		                        <td>
	                                        <input type="text" class="txtinp w100" id="sOUPUT_POOL_ID" name="sOUPUT_POOL_ID"/>
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
												<input type="text" class="txtinp w590" id="sFILE_NM" name="sFILE_NM" readOnly/>
												<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
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
	    		        </div><!--//section-->
	    		        <!-- END : button section -->
	    		    
	    		    </div><!--//pixbox-->
	    		    <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sSEQ_NO" name="sSEQ_NO"/>
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