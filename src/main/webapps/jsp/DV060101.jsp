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

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "DV060101", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var selPrjtStage = '<option value="">선 택</option>';
	var selYesNoYn = '<option value="">선 택</option>';
	$.each(result.prjtStage,function(key, value) {
		selPrjtStage = selPrjtStage + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#searchPrjtStage").empty().append(selPrjtStage);
	});
	$.each(yesNo_YN,function(key, value) {
		selYesNoYn = selYesNoYn + '<option value="' + value.label + '">' + value.value + '</option>';
		$("#sMAKE_YN").empty().append(selYesNoYn);
	});		  	

	fn_InitGrid();
};

function fn_InitGrid() {
	var caption = "산출물ID^산출물명^진행단계^완료구분^TASK_ID";
	var colWidth = "45%,55%,10%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtOutputInfo", "objSBGrid", caption, colWidth, "550px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);
	
	objColumnsInfo = [
						fn_SetSBGridCol("00", "output" , "sOUTPUT_ID"   , "left"  , null, false),
						fn_SetSBGridCol("01", "output" , "sOUTPUT_NM"   , "left"  , null, false),
						fn_SetSBGridCol("02", "output" , "sPRJT_STAGE"  , "center", null, true),
						fn_SetSBGridCol("03", "output" , "sMAKE_YN"     , "center", null, true),
						fn_SetSBGridCol("04", "output" , "sTASK_ID"     , "center", null, true)
	                ];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");

	caption = "id^Version^산출물명^첨부파일^파일명^완료구분^담당자^완료일자";
	colWidth = "10%,30%,50%,20%,10%,10%,10%,10%";
	
	objGridInitInfoDetail = fn_InitSBGrid("prjtOutputVerInfo", "objSBGridDetail", caption, colWidth, "360px", "resultDataDetail", true, null);
	objSBGridDetail = createSBDataGrid(objGridInitInfoDetail);

	objColumnsInfoDetail = [
						fn_SetSBGridCol("00", "output" , "sOUTPUT_ID"    , "center" , null, true),
						fn_SetSBGridCol("01", "output" , "sOUTPUT_VER"   , "center" , null, false),
						fn_SetSBGridCol("02", "output" , "sOUTPUT_NM"    , "left"   , null, false),
						fn_SetSBGridCol("03", "imageF" , "sIMG_URL"      , "center" , null, false),
						fn_SetSBGridCol("04", "output" , "sFILE_NM"      , "left"   , null, true),
						fn_SetSBGridCol("05", "output" , "sMAKE_YN"      , "center" , null, false),
						fn_SetSBGridCol("06", "output" , "sMAKE_USER_ID" , "center" , null, true),
						fn_SetSBGridCol("07", "output" , "sMAKE_DT"      , "center" , null, true),
						fn_SetSBGridCol("08", "output" , "sMAKE_USER_NM" , "center" , null, true),
						fn_SetSBGridCol("09", "output" , "sPRJT_STAGE"   , "center" , null, true),
						fn_SetSBGridCol("10", "output" , "sTASK_ID"      , "center" , null, true)
	                ];

	objSBGridDetail.createColumns(objColumnsInfoDetail);
	objSBGridDetail.addEventListener("onclick", "fn_SelectListInfoDetail", "","");

	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "DV060101.jsp";
};

function fn_Init_Data(){
	$("#tableSection input[type=text], #tableSection select, #tableSection textarea").val("");
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

	var sendData = {
		sPRJT_ID 	: $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#searchPrjtStage option:selected").val()
	};

	fn_AjaxSend(sendData, "DV060111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.outputInfo;
	objSBGrid.rebuild();
	fn_SetGridGroup();
};

function fn_SelectPrjtInfoDetail() {

	var sendData = {
		sPRJT_ID 	: $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#searchPrjtStage option:selected").val()
	};

	fn_AjaxSend(sendData, "DV060112", fn_SetDataSelectPrjtInfoDetail, null);
};

function fn_SetDataSelectPrjtInfoDetail(result) {
	resultDataDetail = result.outputVerInfo;
    objSBGridDetail.rebuild();
};

function fn_InsertPrjt() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#sPRJT_STAGE").val(),
		sTASK_ID : $("#sTASK_ID").val(),
		sOUTPUT_ID : $("#sOUTPUT_ID").val(),
		sOUTPUT_VER : $("#sOUTPUT_VER").val(),
		sMAKE_USER_ID : $("#sMAKE_USER_ID").val(),
		sMAKE_DT : $("#sMAKE_DT").val(),
		sMAKE_YN : $("#sMAKE_YN option:selected").val(),
		sFILE_NM : fn_GetFileName($("#sFILE_NM").val())
	};

	fn_AjaxSend(sendData, "DV060121", fn_SelectListInfo, PMS_PROC_INSERT);
};

function fn_SetGridGroup() {
	for(var i=1; i<objSBGrid.rows; i++)
	{	
		if( objSBGrid.getTextMatrix(i,0).length == 1)
			objSBGrid.setGroupLevel(i, 1);
		else if( objSBGrid.getTextMatrix(i,0).length == 3)
			objSBGrid.setGroupLevel(i, 2);
		else 
			objSBGrid.setGroupLevel(i, 3);
	}
	objSBGrid.setGroup("complete");
};

function fn_SelectListInfo() {

	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;
	
	fn_Init_Data();
	
	var outputID = objSBGrid.getTextMatrix(nClickedRow,0);
	
	if (outputID.length > 3) {
		
		$("#sPRJT_STAGE").val(objSBGrid.getTextMatrix(nClickedRow,2));
		$("#sTASK_ID").val(objSBGrid.getTextMatrix(nClickedRow,4));
		$("#sOUTPUT_ID").val(objSBGrid.getTextMatrix(nClickedRow,0));
		
		var sendData = {
			sPRJT_ID : $("#searchPrjtID").val(),
			sPRJT_STAGE : $("#sPRJT_STAGE").val(),
			sTASK_ID : $("#sTASK_ID").val(),
			sOUTPUT_ID : $("#sOUTPUT_ID").val()
		};

		fn_AjaxSend(sendData, "DV060112", fn_SetDataSelectListInfo, null);
	}
};

function fn_SetDataSelectListInfo(result) {
	resultDataDetail = result.outputVerInfo;
	resultData =result.outputVerIDInfo;
	$("#sOUTPUT_VER").val(resultData.sOUTPUT_VER);
	
	objSBGridDetail.rebuild();
};

function fn_SelectListInfoDetail() {

	var nClickedRow = objSBGridDetail.getRow();
	var nClickedCol = objSBGridDetail.getCol();

	if (nClickedRow <= 0 )
		return;
	
	fn_Init_Data();
	
	$("#sOUTPUT_ID").val(objSBGridDetail.getTextMatrix(nClickedRow, 0));
	$("#sOUTPUT_VER").val(objSBGridDetail.getTextMatrix(nClickedRow, 1));
	$("#sFILE_NM").val(objSBGridDetail.getTextMatrix(nClickedRow, 4));
	$("#sMAKE_YN").val(objSBGridDetail.getTextMatrix(nClickedRow, 5));
	$("#sMAKE_USER_ID").val(objSBGridDetail.getTextMatrix(nClickedRow, 6));
	$("#sMAKE_DT").val(fn_SetDateType(objSBGridDetail.getTextMatrix(nClickedRow, 7)));
	$("#sMAKE_USER_NM").val(objSBGridDetail.getTextMatrix(nClickedRow, 8));
	
	if (nClickedCol == 3) {
		var downloadFile = objSBGridDetail.getTextMatrix(nClickedRow, 4);
		if (downloadFile == "")
			return;
		
		fn_DownloadFile("DV06", downloadFile);
	}

};

function fn_InsertPrjtFile() {
	fn_InsertUploadFile("DV06", fn_InsertPrjt);
};

$(function() {
    $( "#sMAKE_DT" ).datepicker(setCalendar);
});

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
};

function fn_SearchUser() {
	window.open("PU010112.jsp","",popupStyle);
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
	    		        <h2>[DV06] 산출물등록</h2>
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
	    		                    <!-- 
	    		                    <ul>
	    		                        <li class="name"><span>진행단계</span></li>
	    		                        <li><select class="selectbox" id="searchPrjtStage" name="searchPrjtStage"></select></li>
	    		                    </ul>
	    		                     --> 
	    		                </div>
	    		            </div><!--//search-->
	    		        </div><!--//section-->
	    		        <div class="section">
	                        <ul class="btnbox right">
	                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
	                     	</ul>
	                    </div>
					
		    		    <div id="section" class="section">
		    		    	<div id="prjtOutputInfo" style="float:left; width:40%;">
							</div>
							<div id="tableSection" style="float:left; width:55%; padding-left:5%;">
								<table class="table01" border="0" cellspacing="0" summary="">
									<tbody>
					    		    	<tr>
											<th class="w100">Version</th>
											<td >
												<input  type="text" class="txtinp w100" id="sOUTPUT_VER" name="sOUTPUT_VER"   > 
											</td>
										</tr>
					    		        <tr>
											<th class="w100">작성일자</th>
											<td >
												<input  type="text" class="txtinp w100" id="sMAKE_DT" name="sMAKE_DT"   > 
											</td>
										</tr>
					    		        <tr>
											<th class="w100">완료구분</th>
											<td >
			                                    <select class="selectbox" name="selectbox" id="sMAKE_YN" name="sMAKE_YN">
												</select> 
											</td>
										</tr>
					    		        <tr>
											<th class="w100">작성자</th>
											<td >
												<input type="hidden" class="txtinp w100" id="sMAKE_USER_ID" name="sMAKE_USER_ID"   >
												<input type="text" class="txtinp w100" id="sMAKE_USER_NM" name="sMAKE_USER_NM" readOnly  > 
												<a href="javascript:fn_SearchUser();" class="btn01" >검 색</a> 
											</td>
										</tr>
										<tr>	
											<th class="w100">파일명</th>
											<td >
												<div class="inputfileM">
													<input type="text" class="txtinp w200" id="sFILE_NM" readOnly/>
													<p><input type="file" class="file_add" id="uploadFile" name="uploadFile" onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
											    </div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div id="prjtOutputVerInfo" style="float:left; width:55%; padding-left:5%; margin-top:20px">
							</div>
	   		           	</div>
	   		            
	   		            <!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
	    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
	    		            </ul>
	    		        </div>
	    		        <!-- END : button section -->
	    		        
					</div><!--//pixbox-->
					<div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sPRJT_STAGE" name="sPRJT_STAGE"/>
						<input type="hidden" class="inputType" id="sTASK_ID" name="sTASK_ID"/>
						<input type="hidden" class="inputType" id="sOUTPUT_ID" name="sOUTPUT_ID"/>
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