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
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#searchPrjtStage option:selected").val()
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
	var caption = "*TASK ID^TASK 명^업무내용^담당자^담당자^시작일자^종료일자^범위확정^";
	var colWidth = "10%,35%,27%,10%,3%,12%,12%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtTaskInfo", "objSBGrid", caption, colWidth, "400px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
	  				fn_SetSBGridCol("00", "input"     , "sTASK_ID"     , "center", null, false),
	  				fn_SetSBGridCol("01", "input"     , "sTASK_NM"     , "left"  , null, false),
	  				fn_SetSBGridCol("02", "input"     , "sTASK_DESC"   , "left"  , null, false),
	  				fn_SetSBGridCol("03", "output"    , "sCORP_MNG_NM" , "center", null, false),
	  				fn_SetSBGridCol("04", "imageS"    , ""             , "center", null, false),
	  				fn_SetSBGridCol("05", "inputdate" , "sSTRT_DT"     , "center", "yyyy.mm.dd", false),
	  				fn_SetSBGridCol("06", "inputdate" , "sEND_DT"      , "center", "yyyy.mm.dd", false),
	  				fn_SetSBGridCol("07", "combo"     , "sDEF_YN"      , "center", ["yesNo", "label", "value"], false),
	  				fn_SetSBGridCol("08", "output"    , "sCORP_MNG_ID" , "center", null, true)
	  			];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
	
	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "DV020101.jsp";
};

function fn_Init_Data() {
	$("#section input[type=text], #section select, #section textarea").val("");
	fn_SelectInitID();
};

function fn_SelectInitID() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#searchPrjtStage option:selected").val()
	};

	fn_AjaxSend(sendData, "DV020102", fn_SetDataSelectInitID, null);
};

function fn_SetDataSelectInitID(result) {
	var taskInfo = result.taskInfo;
	$("#sTASK_ID").val(taskInfo.sTASK_ID);
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
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#searchPrjtStage option:selected").val(),
		sTASK_ID : $("#sTASK_ID").val(),
		sTASK_NM : $("#sTASK_NM").val(),
		sTASK_DESC : $("#sTASK_DESC").val(),
		sSTRT_DT : $("#sSTRT_DT").val(),
		sEND_DT : $("#sEND_DT").val(),
		sCORP_MNG_ID : $("#sCORP_MNG_ID").val(),
		sCORP_MNG_NM : $("#sCORP_MNG_NM").val(),
		sDEF_YN : $("#sDEF_YN").val()
	};
	
	fn_AjaxSend(sendData, "DV020121", fn_SelectPrjtInfo, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {

	var sendData = {
		sPRJT_ID 	: $("#searchPrjtID").val(),
		sPRJT_STAGE : $("#searchPrjtStage option:selected").val(),
		sTASK_ID 	: $("#sTASK_ID").val()
	};
	
	fn_AjaxSend(sendData, "DV020141", fn_SelectPrjtInfo, PMS_PROC_DELETE);
};

function fn_ModifyPrjt() {

	if($("#searchPrjtStage").val() == null || $("#searchPrjtStage").val() == ""  ) {
		alert(SELECT_PRJT_STAGE);
		return;
	}
	
	var arrMap = new Map();
	var arrlist = new Array(objSBGrid.rows - 1);

	arrMap.put("sPRJT_ID"	, $("#searchPrjtID").val());
	arrMap.put("sPRJT_STAGE", $("#searchPrjtStage option:selected").val());

	for (var i=1; i<objSBGrid.rows; i++) {
		var taskMap = new Map();
		
		if(objSBGrid.getTextMatrix(i,0) == "") {
			alert(INSERT_TASK_ID);
			return;
		}
		
		taskMap.put("sTASK_ID"     , objSBGrid.getTextMatrix(i,0));
		taskMap.put("sTASK_NM"     , objSBGrid.getTextMatrix(i,1));
		taskMap.put("sTASK_DESC"   , objSBGrid.getTextMatrix(i,2));
		taskMap.put("sSTRT_DT"     , objSBGrid.getTextMatrix(i,5));
		taskMap.put("sEND_DT"      , objSBGrid.getTextMatrix(i,6));
		taskMap.put("sDEF_YN"      , objSBGrid.getTextMatrix(i,7));
		taskMap.put("sCORP_MNG_ID" , objSBGrid.getTextMatrix(i,8));
		taskMap.put("sCORP_MNG_NM" , objSBGrid.getTextMatrix(i,3));

		arrlist[i-1] = taskMap;

	}
	
	arrMap.putMapList("sPRJT_TASK_INFO", arrlist);
	
	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "DV020122", fn_SelectPrjtInfo, PMS_PROC_INSERT);
};

function fn_SelectListInfo() {

	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;
	
	$("#sTASK_ID").val(objSBGrid.getTextMatrix(nClickedRow,0));
	$("#sTASK_NM").val(objSBGrid.getTextMatrix(nClickedRow,1));
	$("#sTASK_DESC").val(objSBGrid.getTextMatrix(nClickedRow,2));
	$("#sCORP_MNG_NM").val(objSBGrid.getTextMatrix(nClickedRow,3));
	$("#sSTRT_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRow,5)));
	$("#sEND_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRow,6)));
	$("#sDEF_YN").val(objSBGrid.getTextMatrix(nClickedRow,7));
	$("#sCORP_MNG_ID").val(objSBGrid.getTextMatrix(nClickedRow,8));
	
	var nSelCol = objSBGrid.col;
	var nSelRow = objSBGrid.row;
	
	var popupUrl = "PU010112.jsp?nSelRow="+nSelRow+"&DV020101=sGRID_INFO";
	
	if (nSelCol== 4) {
		window.open(popupUrl,"",popupStyle);
	}

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

$(function() {
    $( "#sSTRT_DT" ).datepicker(setCalendar);
    $( "#sEND_DT" ).datepicker(setCalendar);
});

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
};

function fn_SearchUser() {
	var popupUrl = "PU010112.jsp?DV020101=sTEXT_INFO";
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
    		        <h2>[DV02] TASK관리</h2>
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
    		                  
    		                    <ul>
    		                        <li class="name"><span>진행단계</span></li>
    		                        <li><select class="selectbox" id="searchPrjtStage" name="searchPrjtStage"></select></li>
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
									<th class="w100"><pk>*</pk> TASK ID</th>
									<td colspan="3">
										<input type="text" class="txtinp w100" id="sTASK_ID" name="sTASK_ID" > 
									</td>
								</tr>
								<tr>
									<th class="w100">TASK 명</th>
									<td colspan="3">
										<input type="text" class="txtinp w700" id="sTASK_NM" name="sTASK_NM"   > 
									</td>
								</tr>
								<tr>
									<th class="w100">업무내용</th>
									<td colspan="3">
										<textarea class="txtinp w700" cols="100" rows="5" name="sTASK_DESC" id="sTASK_DESC" ></textarea>
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
										<select class="selectbox"  id="sDEF_YN" name="sDEF_YN">
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
	    		        <div id="prjtTaskInfo">
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