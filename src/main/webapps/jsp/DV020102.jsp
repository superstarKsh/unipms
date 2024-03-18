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
	
	fn_AjaxSend(sendData, "DV020101", fn_SetDataInitLoad, null);
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
	var caption = "TASK ID^TASK 명^시작일자^종료일자^담당자^범위확정^";
	var colWidth = "15%,35%,13%,13%,14%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtTaskInfo", "objSBGrid", caption, colWidth, "250px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
	  				fn_SetSBGridCol("00", "output", "sTASK_ID"     , "center", null, false),
	  				fn_SetSBGridCol("01", "output", "sTASK_NM"     , "left"  , null, false),
	  				fn_SetSBGridCol("02", "output", "sSTRT_DT"     , "center", "yyyy.mm.dd", false),
	  				fn_SetSBGridCol("03", "output", "sEND_DT"      , "center", "yyyy.mm.dd", false),
	  				fn_SetSBGridCol("04", "output", "sCORP_MNG_NM" , "left"  , null, false),
	  				fn_SetSBGridCol("05", "output", "sDEF_YN"      , "center", null, false),
	  				fn_SetSBGridCol("06", "output", "sCORP_MNG_ID" , "center", null, true)
	  			];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
	
	caption = "*TASK ID^*SEG ID^SEG 명^업무내용^담당자^담당자^시작일자^종료일자^범위확정^";
	colWidth = "12%,12%,25%,25%,12%,3%,13%,13%,10%,10%";
	
	objGridInitInfoDetail = fn_InitSBGrid("prjtSegInfo", "objSBGridDetail", caption, colWidth, "400px", "resultDataDetail", true, null);
	objSBGridDetail = createSBDataGrid(objGridInitInfoDetail);

	objColumnsInfoDetail = [
	  				fn_SetSBGridCol("00", "output"    , "sTASK_ID"     , "center", null, false),
	  				fn_SetSBGridCol("01", "input"     , "sSEG_ID"      , "center", null, false),
	  				fn_SetSBGridCol("02", "input"     , "sSEG_NM"      , "left"  , null, false),
	  				fn_SetSBGridCol("03", "input"     , "sSEG_DESC"    , "left"  , null, false),
	  				fn_SetSBGridCol("04", "output"    , "sCORP_MNG_NM" , "left"  , null, false),
	  				fn_SetSBGridCol("05", "imageS"    , ""             , "center", null, false),
	  				fn_SetSBGridCol("06", "inputdate" , "sSTRT_DT"     , "center", "yyyy.mm.dd", false),
	  				fn_SetSBGridCol("07", "inputdate" , "sEND_DT"      , "center", "yyyy.mm.dd", false),
	  				fn_SetSBGridCol("08", "combo"     , "sDEF_YN"      , "center", ["yesNo", "label", "value"], false),
	  				fn_SetSBGridCol("09", "output"    , "sCORP_MNG_ID" , "center", null, true)
	  			];

	objSBGridDetail.createColumns(objColumnsInfoDetail);

	objSBGridDetail.addEventListener("onclick", "fn_SelectListInfoDetail", "","");

	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "DV020102.jsp";
};

function fn_Init_Data() {
	$("#section input[type=text], #section select, #section textarea").val("");
};

function fn_SelectSegID() {
	
	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#searchPrjtStage option:selected").val(),
		sTASK_ID : objSBGrid.getTextMatrix(nClickedRow,0)
	};
	
	fn_AjaxSend(sendData, "DV020102A", fn_SetDataSelectSegID, null);
};

function fn_SetDataSelectSegID(result) {
	var segInfo = result.segInfo;
	$("#sSEG_ID").val(segInfo.sSEG_ID);
};

function fn_SelectPrjtInfo() {
	
	fn_Init_Data();
	
	var sendData = {
		sPRJT_ID 	: $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#searchPrjtStage option:selected").val()
	};	

	fn_AjaxSend(sendData, "DV020111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.taskInfo;
	objSBGrid.rebuild();
};

function fn_InsertPrjt() {
	
	if($("#searchPrjtStage").val() == null || $("#searchPrjtStage").val() == ""  ) {
		alert(SELECT_PRJT_STAGE);
		return;
	}
	
	if($("#sTASK_ID").val() == null || $("#sTASK_ID").val() == ""  ) {
		alert(SELECT_TASK_ID);
		return;
	}
	
	if($("#sSEG_ID").val() == null || $("#sSEG_ID").val() == ""  ) {
		alert(INSERT_SEG_ID);
		return;
	}
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#searchPrjtStage option:selected").val(),
		sTASK_ID : $("#sTASK_ID").val(),
		sSEG_ID : $("#sSEG_ID").val(),
		sSEG_NM : $("#sSEG_NM").val(),
		sSEG_DESC : $("#sSEG_DESC").val(),
		sSTRT_DT : $("#sSTRT_DT").val(),
		sEND_DT : $("#sEND_DT").val(),
		sCORP_MNG_ID : $("#sCORP_MNG_ID").val(),
		sDEF_YN : $("#sDEF_YN").val()
	};
	
	fn_AjaxSend(sendData, "DV020121A", fn_SelectListInfo, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#searchPrjtStage option:selected").val(),
		sTASK_ID : $("#sTASK_ID").val(),
		sSEG_ID : $("#sSEG_ID").val()
	};
	
	fn_AjaxSend(sendData, "DV020141A", fn_SelectListInfo, PMS_PROC_DELETE);
};

function fn_ModifyPrjt() {
	
	if($("#searchPrjtStage").val() == null || $("#searchPrjtStage").val() == ""  ) {
		alert(SELECT_PRJT_STAGE);
		return;
	}
	
	var arrMap = new Map();
	var arrlist = new Array(objSBGridDetail.rows - 1);
	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;

	arrMap.put("sPRJT_ID"	, $("#searchPrjtID").val());
	arrMap.put("sPRJT_STAGE", $("#searchPrjtStage option:selected").val());
	arrMap.put("sTASK_ID"	, $("#sTASK_ID").val());

	for (var i=1; i<objSBGridDetail.rows; i++) {
		
		var taskMap = new Map();

		if($("#sTASK_ID").val() == "") {alert("TASK ID를 입력해주세요."); return;}

		taskMap.put("sSEG_ID"      , objSBGridDetail.getTextMatrix(i,1));
		taskMap.put("sSEG_NM"      , objSBGridDetail.getTextMatrix(i,2));
		taskMap.put("sSEG_DESC"    , objSBGridDetail.getTextMatrix(i,3));
		taskMap.put("sSTRT_DT"     , objSBGridDetail.getTextMatrix(i,6));
		taskMap.put("sEND_DT"      , objSBGridDetail.getTextMatrix(i,7));
		taskMap.put("sDEF_YN"      , objSBGridDetail.getTextMatrix(i,8));
		taskMap.put("sCORP_MNG_ID" , objSBGridDetail.getTextMatrix(i,9));
		taskMap.put("sCORP_MNG_NM" , objSBGridDetail.getTextMatrix(i,4));
		
		arrlist[i-1] = taskMap;
	}
	
	arrMap.putMapList("sPRJT_TASK_SEG_INFO", arrlist);
	
	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "DV020122A", fn_SelectListInfo, PMS_PROC_INSERT);
};

function fn_SelectListInfo() {

	fn_Init_Data();

	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;

	$("#sTASK_ID").val(objSBGrid.getTextMatrix(nClickedRow,0));

	var sendData = {
		sPRJT_ID 	: $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#searchPrjtStage option:selected").val(),
		sTASK_ID 	: $("#sTASK_ID").val()
	};

	fn_AjaxSend(sendData, "DV020111A", fn_SetDataSelectListInfo, null);
};

function fn_SetDataSelectListInfo(result) {
	resultDataDetail = result.segInfo;
	objSBGridDetail.rebuild();
	fn_SelectSegID();
};

function fn_SelectListInfoDetail() {

	var nClickedRow = objSBGridDetail.getRow();
	if (nClickedRow <= 0 )
		return;

	$("#sTASK_ID").val(objSBGridDetail.getTextMatrix(nClickedRow,0));
	$("#sSEG_ID").val(objSBGridDetail.getTextMatrix(nClickedRow,1));
	$("#sSEG_NM").val(objSBGridDetail.getTextMatrix(nClickedRow,2));
	$("#sSEG_DESC").val(objSBGridDetail.getTextMatrix(nClickedRow,3));
	$("#sCORP_MNG_NM").val(objSBGridDetail.getTextMatrix(nClickedRow,4));
	$("#sSTRT_DT").val(fn_SetDateType(objSBGridDetail.getTextMatrix(nClickedRow,6)));
	$("#sEND_DT").val(fn_SetDateType(objSBGridDetail.getTextMatrix(nClickedRow,7)));
	$("#sDEF_YN").val(objSBGridDetail.getTextMatrix(nClickedRow,8));
	$("#sCORP_MNG_ID").val(objSBGridDetail.getTextMatrix(nClickedRow,9));

	var nSelCol = objSBGridDetail.col;
	var nSelRow = objSBGridDetail.row;
	
	var popupUrl = "PU010112.jsp?nSelRow="+nSelRow+"&DV020102=sGRID_INFO";
	if (nSelCol== 5) {
		window.open(popupUrl,"",popupStyle);
	}
};

function fn_AddRow() {

	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 ){
		alert("TASK ID를 선택해주세요.");
		return;
	}
	if(objSBGridDetail.selectedRow(0) == '-1'){
		objSBGridDetail.addItem();

		objSBGridDetail.setTextMatrix(objSBGridDetail.getRows()-1,0,$("#sTASK_ID").val());
	}else{
		objSBGridDetail.insertItem( objSBGridDetail.selectedRow(0) , "below");

		objSBGridDetail.setTextMatrix(objSBGridDetail.selectedRow(0),0,$("#sTASK_ID").val());
	}
};

function fn_DelRow() {
	var nRow = objSBGridDetail.getClickedRow();
	objSBGridDetail.deleteItem(nRow);
};

$(function() {
    $( "#sSTRT_DT" ).datepicker(setCalendar);
    $( "#sEND_DT" ).datepicker(setCalendar);
});

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
};

function fn_SearchUser() {
	var popupUrl = "PU010112.jsp?DV020102=sTEXT_INFO";
	window.open(popupUrl,"",popupStyle);
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
    		
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[DV02] SEGMENT관리</h2>
    		        <!-- END : title -->
					<!-- START : search section -->
    		        <div id="searchSection" class="section">
    		            <div class="search">
    		                <div class="box">
    		                    <ul>
    		                        <li class="name"><span>프로젝트ID</span></li>
    		                        <li><input type="text" class="txtinp w100" id="searchPrjtID" name="searchPrjtID" readOnly/></li>
    		                        <li><input type="text" class="txtinp w300" id="searchPrjtNM" name="searchPrjtNM" readOnly/></li>
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
	    		        <div id="prjtTaskInfo">
						</div>
	    		    </div>
    		        <!-- END : grid section -->
    		        <div id="section" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
								<tr>
									<th class="w100"><pk>*</pk> TASK ID</th>
									<td >
										<input type="text" class="txtinp w100" id="sTASK_ID" name="sTASK_ID" > 
									</td>
									<th class="w100"><pk>*</pk> SEG ID</th>
									<td >
										<input type="text" class="txtinp w100" id="sSEG_ID" name="sSEG_ID" readonly> 
									</td>
								</tr>
								<tr>
									<th class="w100">SEG 명</th>
									<td colspan="3">
										<input type="text" class="txtinp w700" id="sSEG_NM" name="sSEG_NM"   > 
									</td>
								</tr>
								<tr>
									<th class="w100">업무내용</th>
									<td colspan="3">
										<textarea class="txtinp w700" cols="100" rows="5" name="sSEG_DESC" id="sSEG_DESC" ></textarea>
									</td>
								</tr>
								<tr>
    		                        <th class="w100">시작일자</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sSTRT_DT" id="sSTRT_DT"/>
                                    </td>
                                    <th class="w100">종료일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sEND_DT" id="sEND_DT"/>
                                    </td>
    		                    </tr>
								<tr>
									<th class="w100">담당자</th>
									<td>
										<input type="hidden" class="txtinp w100" id="sCORP_MNG_ID" name="sCORP_MNG_ID"   >
										<input type="text" class="txtinp w100" id="sCORP_MNG_NM" name="sCORP_MNG_NM" readOnly  > 
										<a href="javascript:fn_SearchUser();" class="btn01" >검 색</a>
									</td>
									<th class="w100">범위확정</th>
									<td>
										<select class="selectbox" class="selectbox" id="sDEF_YN" name="sDEF_YN">
											<option value="" >선택</option>
											<option value="Y">확정</option>
											<option value="N">미확정</option>
										</select>
									</td>
								</tr>
							</tbody>
    		            </table>
    		        </div><!--//section-->
    		        <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div>
    		        <!-- END : button section -->
					<!--//section-->
    		        <div class="section">
    		            <ul class="btnbox_top right">
    		                <li><a href="javascript:fn_AddRow();" class="btn02">행추가</a></li>
    		                <li><a href="javascript:fn_DelRow();" class="btn03">행 삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
					<!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtSegInfo">
						</div>
	    		    </div>
					<!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div>
    		        <!-- END : button section -->
    		        <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sCURR_STAGE" name="sCURR_STAGE"/>
					</div>
				</div><!--//pixbox-->
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