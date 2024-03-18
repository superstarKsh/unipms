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

	var sSEARCH_YN = '<%=(String) session.getAttribute("sSEARCH_YN")%>';
	if (sSEARCH_YN != null && sSEARCH_YN=='Y') {
		$("#sSEARCH_ACTIVITY_ID").val("<%=(String) session.getAttribute("sSEARCH_ACTIVITY_ID")%>");
	}

	fn_InitLoad();
};

function fn_InitLoad() {
	var selCmplYn = '<option value="">선 택</option>';;	
	$.each(yesNo_YN,function(key, value) {
		selCmplYn = selCmplYn + '<option value="' + value.label + '">' + value.value + '</option>';
		$("#sCMPL_YN").empty().append(selCmplYn);
	});
	
	fn_InitGrid();
};

function fn_InitGrid() {
	var caption = "TASK ID^TASK 명^sCMPL_DT^sCMPL_YN^sCMPL_FILE_NM^sQTYPE^sFILE_VER^sTASK_NM^sTASK_DESC^sDEF_FILE_NM^sBIT";
	var colWidth = "40%,60%,10%,10%,10%,10%,10%,10%,10%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("mngGrid", "objSBGrid", caption, colWidth, "550px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);
	
	objColumnsInfo = [
						fn_SetSBGridCol("00", "output" , "sTASK_ID"		  , "left", null, false),
						fn_SetSBGridCol("01", "output" , "sTASK_NM"		  , "left", null, false),
						fn_SetSBGridCol("02", "output" , "sCMPL_DT"    	  , "left", null, true),
						fn_SetSBGridCol("03", "output" , "sCMPL_YN"    	  , "left", null, true),
						fn_SetSBGridCol("04", "output" , "sCMPL_FILE_NM"  , "left", null, true),
						fn_SetSBGridCol("05", "output" , "sQTYPE"    	  , "left", null, true),
						fn_SetSBGridCol("06", "output" , "sFILE_VER"      , "left", null, true),
						fn_SetSBGridCol("07", "output" , "sTASK_NM"    	  , "left", null, true),
						fn_SetSBGridCol("08", "output" , "sTASK_DESC"     , "left", null, true),
						fn_SetSBGridCol("09", "output" , "sDEF_FILE_NM"   , "left", null, true),
						fn_SetSBGridCol("10", "output" , "sBIT"    		  , "left", null, true)
	                ];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
	
	caption = "*파일버전^파일명^파일명^등록일자";
	colWidth = "25%,40%,5%,30%";
	
	objGridInitInfoDetail = fn_InitSBGrid("verGrid", "objSBGridDetail", caption, colWidth, "390px", "resultDataDetail", true, null);
	objSBGridDetail = createSBDataGrid(objGridInitInfoDetail);

	objColumnsInfoDetail = [
						fn_SetSBGridCol("00", "output" , "sFILE_VER"      , "center", null, false),
						fn_SetSBGridCol("01", "output" , "sCMPL_FILE_NM"  , "left"  , null, false),
						fn_SetSBGridCol("02", "imageS" , ""		          , "center", null, false),
						fn_SetSBGridCol("03", "output" , "sCMPL_DT"		  , "center", "yyyy.mm.dd", false)
	                ];
	objSBGridDetail.createColumns(objColumnsInfoDetail);

	objSBGridDetail.addEventListener("onclick", "fn_SelectListInfoDetail", "","");

	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "MG130101.jsp";
};

function fn_Init_Data(){
	$("#tableDiv input[type=text], #tableDiv select, #tableDiv textarea").val("");
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

function fn_SelectPrjtInfo(){
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "MG130111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.mngInfo;
	resultDataDetail = result.verInfo;

	objSBGrid.rebuild();
	objSBGridDetail.rebuild();
	
	fn_SetGridGroup();
};

function fn_InsertPrjt() {

	var sendData = {	
		sPRJT_ID : $("#searchPrjtID").val(),
		sMNG_STAGE : $("#sMNG_STAGE").val(),
		sACTIVITY_ID : $("#sACTIVITY_ID").val(),
		sQTYPE : $("#sQTYPE").val(),
		sTASK_ID : $("#sTASK_ID").val(),
		sFILE_VER : $("#sFILE_VER").val(),
		sCMPL_DT : $("#sCMPL_DT").val(),
		sCMPL_YN : $("#sCMPL_YN").val(),
		sFILE_NM : fn_GetFileName($("#sCMPL_FILE_NM").val())
	};

	fn_AjaxSend(sendData, "MG130121", fn_SelectListInfo, PMS_PROC_INSERT);
};

function fn_InsertPrjtFile() {
	fn_InsertUploadFile("MG13", fn_InsertPrjt);
};

function fn_SelectListInfo() {

	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;

	fn_Init_Data();

	$("#sQTYPE").val(objSBGrid.getTextMatrix(nClickedRow,5));
	
	var id = objSBGrid.getTextMatrix(nClickedRow,0);
	var mngState = "";
	var activityId = "";
	var taskId = "00";

	if(id.length == 1  ){
		mngState = id;
	}else {
		if(id.substring(3,5) == "00"  ){
			mngState = id.substring(0,1);
			activityId = id;
		}else{
			mngState = id.substring(0,1);
			activityId = id.substring(0,3) + "00";
			taskId = id;
		}
	}

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sMNG_STAGE : mngState,
		sACTIVITY_ID : activityId,
		sTASK_ID : taskId
	};

	fn_AjaxSendParam(sendData, "MG130112", fn_SetDataSelectListInfo, null, mngState, activityId, taskId);
};

function fn_SetDataSelectListInfo(result, mngState, activityId, taskId) {
	resultDataDetail = result.verInfo;

	var nClickedRow = objSBGrid.getRow();
	if(nClickedRow >= 1)
		$("#sFILE_VER").val(result.FileVerInfo.sFILE_VER);
	
	$("#sCMPL_YN").val(objSBGrid.getTextMatrix(nClickedRow,3));
	$("#sMNG_STAGE").val(mngState);
	$("#sACTIVITY_ID").val(activityId);
	$("#sTASK_ID").val(taskId);

	objSBGridDetail.rebuild();
};

function fn_SelectListInfoDetail() {

	var nClickedRow = objSBGridDetail.getRow();
	if (nClickedRow <= 0 )
		return;

	fn_Init_Data();

	var nClickedRow2 = objSBGrid.getRow();
	var id = objSBGrid.getTextMatrix(nClickedRow2,0);
	var mngState = "";
	var activityId = "";
	var taskId = "00";

	if(id.length == 1  ){
		mngState = id;
	}else {
		if(id.substring(3,5) == "00"  ){
			mngState = id.substring(0,1);
			activityId = id;
		}else{
			mngState = id.substring(0,1);
			activityId = id.substring(0,3) + "00";
			taskId = id;
		}
	}

	$("#sFILE_VER").val(objSBGridDetail.getTextMatrix(nClickedRow,0));
	$("#sCMPL_FILE_NM").val(objSBGridDetail.getTextMatrix(nClickedRow,1));
	$("#sCMPL_DT").val(fn_SetDateType(objSBGridDetail.getTextMatrix(nClickedRow,3)));
	$("#sMNG_STAGE").val(mngState);
	$("#sACTIVITY_ID").val(activityId);
	$("#sTASK_ID").val(taskId);
	$("#sCMPL_YN").val(objSBGrid.getTextMatrix(nClickedRow2,3));
	
	var nClickedCol = objSBGridDetail.getCol();
	if(nClickedCol == '2'){
		var downloadFile = objSBGridDetail.getTextMatrix(nClickedRow, 1);
		if (downloadFile == "")
			return;
		
		fn_DownloadFile("MG13", downloadFile);
	}
};

function fn_SetGridGroup() {

	var row = "";

	for(var i=1; i<objSBGrid.rows; i++)
	{
		if( objSBGrid.getTextMatrix(i,0).length == 1)
			objSBGrid.setGroupLevel(i, 1);
		else if( objSBGrid.getTextMatrix(i,0).substr( objSBGrid.getTextMatrix(i,0).length-2,2 ) == "00" )
			objSBGrid.setGroupLevel(i, 2);
		else
			objSBGrid.setGroupLevel(i, 3);

		if($("#sSEARCH_ACTIVITY_ID").val() == objSBGrid.getTextMatrix(i,0)){
			row = i;
		}
	}

	objSBGrid.setGroup("complete");
	
	if($("#sSEARCH_ACTIVITY_ID").val() != ""){
		if(row != ""){
			objSBGrid.setTopRow(row);
			fn_SelectListInfo();
		};
		
		$("#sSEARCH_ACTIVITY_ID").val("");
		
		fn_SessionCheck();
	}
};

function fn_SessionCheck() {
	
	var content = "";
	content += "sSEARCH_YN=N";

	fn_AjaxSendSesUrl(content, "pms_session_mg1401.jsp", null, null);
};

$(function() {
    $( "#sCMPL_DT" ).datepicker(setCalendar);
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
	    		        <h2>[MG13] 프로젝트사업관리</h2>
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
		    		        <div id="mngGrid" style="float:left; width:40%;">
							</div>
			    		    <div id="tableDiv" style="float:left; width:55%; padding-left:5%;">
								<table class="table01" border="0" cellspacing="0" summary="">
				    		    	<tbody>
										<tr>
											<th class="w100"><pk>*</pk> 파일버전</th>
											<td >
												<input  type="text" class="txtinp w100" id="sFILE_VER" name="sFILE_VER" /> 
											</td>
										</tr>
										<tr>	
											<th class="w100"><pk>*</pk> 파일명</th>
											<td >
												<div class="inputfileM" >
													<input type="text" class="txtinp w200" id="sCMPL_FILE_NM" name="sCMPL_FILE_NM" readOnly/>
													<p><input type="file" class="file_add"  id="uploadFile" name="uploadFile"  onchange="document.getElementById('sCMPL_FILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
										        </div>
											</td>
										</tr>
										<tr>
											<th class="w100">등록일자</th>
											<td >
												<input  type="text" class="txtinp w100" id="sCMPL_DT" name="sCMPL_DT"   > 
											</td>
										</tr>
										<tr>	
											<th class="w100">완료구분</th>
											<td >
												<select class="selectbox" id="sCMPL_YN" name="sCMPL_YN">
												</select>
											</td>
										</tr>
									</tbody>
			   		            </table>
		   		            </div>
							<div id="verGrid" style="float:left; width:55%; padding-left:5%; margin-top:20px">
							</div>
		 		      	</div>
						<!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
	    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
	    		            </ul>
	    		        </div>
					</div><!--//pixbox-->
					 <div id="hiddenColumn">
						<input  type="hidden" class="txtinp w100" id="sMNG_STAGE" name="sMNG_STAGE" /> 
						<input  type="hidden" class="txtinp w100" id="sACTIVITY_ID" name="sACTIVITY_ID" /> 
						<input  type="hidden" class="txtinp w100" id="sTASK_ID" name="sTASK_ID" /> 
						<input  type="hidden" class="txtinp w100" id="sQTYPE" name="sQTYPE" />  
						<input  type="hidden" class="txtinp w100" id="sCMPL_YN_RESULT" name="sCMPL_YN_RESULT" /> 
						<input  type="hidden" class="txtinp w100" id="sSEARCH_ACTIVITY_ID" name="sSEARCH_ACTIVITY_ID" />
						<input type="hidden" class="inputType" id="sCategory" name="sCategory" value="MG13"/>
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