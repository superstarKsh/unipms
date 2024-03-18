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
	fn_Init_CodeType();
	fn_Init_CodeDetail(); 

	fn_InitGrid();
};

function fn_InitGrid() {

	var caption = "코드ID^코드명^코드설명^사용여부^sCODE^sUSE_ORDER^sRPLC_CODE";
	var colWidth = "15%,25%,50%,10%,10%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("codeTypeInfo", "objSBGrid", caption, colWidth, "200px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
	          		fn_SetSBGridCol("00", "output", "sCODE_TYPE"  , "center", null, false),
	          		fn_SetSBGridCol("01", "input" , "sCODE_NAME"  , "left"  , null, false),
	          		fn_SetSBGridCol("02", "input" , "sCODE_DESC"  , "left"  , null, false),
	          		fn_SetSBGridCol("03", "input" , "sUSE_YN"     , "center", null, false),
	          		fn_SetSBGridCol("04", "output", "sCODE"       , "left"  , null, true),
	          		fn_SetSBGridCol("05", "output", "sUSE_ORDER"  , "left"  , null, true),
	          		fn_SetSBGridCol("06", "output", "sRPLC_CODE"  , "left"  , null, true)
				];
	objSBGrid.createColumns(objColumnsInfo);	

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");

	caption = "상세코드ID^상세코드명^상세코드설명^사용여부^순서^고정ID^sCODE_TYPE";
	colWidth = "10%,25%,35%,10%,10%,10%,10%";
	
	objGridInitInfoDetail = fn_InitSBGrid("codeDetailInfo", "objSBGridDetail", caption, colWidth, "200px", "resultDataDetail", true, null);
	objSBGridDetail = createSBDataGrid(objGridInitInfoDetail);

	objColumnsInfoDetail = [
		          	fn_SetSBGridCol("00", "input" , "sCODE"       , "center", null, false),
		          	fn_SetSBGridCol("01", "input" , "sCODE_NAME"  , "left"  , null, false),
		          	fn_SetSBGridCol("02", "input" , "sCODE_DESC"  , "left"  , null, false),
		          	fn_SetSBGridCol("03", "input" , "sUSE_YN"     , "center", null, false),
		          	fn_SetSBGridCol("04", "input" , "sUSE_ORDER"  , "center", null, false),
		          	fn_SetSBGridCol("05", "output", "sRPLC_CODE"  , "left"  , null, false),
		          	fn_SetSBGridCol("06", "output", "sCODE_TYPE"  , "left"  , null, true)
				];
	objSBGridDetail.createColumns(objColumnsInfoDetail);	

	objSBGridDetail.addEventListener("onclick", "fn_SelectListInfoDetail", "","");
	
	fn_SelectPrjtInfo();
};

function fn_Init_CodeType() {
	$("#codeTypeSection input[type=text], #container select, #container textarea").val("");
};

function fn_Init_CodeDetail() {
	$("#codeSection input[type=text], #container select, #container textarea").val("");
	
	var selUseYnDtl = '<option value="">선 택</option>';
	$.each(yesNo_YN,function(key, value) {
		selUseYnDtl = selUseYnDtl + '<option value="' + value.label + '">' + value.value + '</option>';
		$("#sUSE_YN_DTL").empty().append(selUseYnDtl);
	});
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "AD050111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.codeTypeInfo;
	resultDataDetail = [];
	objSBGrid.rebuild();
	objSBGridDetail.rebuild();
};

function fn_SelectPrjtInfoDetail() {
	fn_Init_CodeDetail();
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sCODE_TYPE : $("#sCODE_TYPE").val()
	};
	
	fn_AjaxSend(sendData, "AD050112", fn_SetDataSelectPrjtInfoDetail, null);
};

function fn_SetDataSelectPrjtInfoDetail(result) {
	resultDataDetail = result.codeDetailInfo;
	objSBGridDetail.rebuild();
};

function fn_InsertPrjt() {
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sCODE_TYPE : $("#sCODE_TYPE").val(),
		sCODE : $("#sCODE").val(),
		sCODE_NAME : $("#sCODE_NAME").val(),
		sCODE_DESC : $("#sCODE_DESC").val(),
		sUSE_YN : $("#sUSE_YN").val(),
		sUSE_ORDER : $("#sUSE_ORDER").val(),
		sRPLC_CODE : $("#sRPLC_CODE").val()
	};
	
	fn_AjaxSend(sendData, "AD050121", fn_Init, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sCODE_TYPE : $("#sCODE_TYPE").val(),
		sCODE : $("#sCODE").val()
	};
	
	fn_AjaxSend(sendData, "AD050141", fn_Init, PMS_PROC_DELETE);
};

function fn_InsertPrjtDetail() {
	
	var sendData = {
		sPRJT_ID 	: $("#searchPrjtID").val(),
		sCODE_TYPE 	: $("#sCODE_TYPE").val(),
		sCODE 		: $("#sCODE_DTL").val(),
		sCODE_NAME 	: $("#sCODE_NAME_DTL").val(),
		sCODE_DESC 	: $("#sCODE_DESC_DTL").val(),
		sUSE_YN 	: $("#sUSE_YN_DTL option:selected").val(),
		sUSE_ORDER 	: $("#sUSE_ORDER_DTL").val(),
		sRPLC_CODE 	: $("#sRPLC_CODE_DTL").val()
	};
	
	fn_AjaxSend(sendData, "AD050121", fn_SelectPrjtInfoDetail, PMS_PROC_INSERT);
};

function fn_DeletePrjtDetail() {
	
	if ($("#sRPLC_CODE_DTL").val() != "") {
		alert(PMS_RPLC_CODE);
		return;
	}
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sCODE_TYPE : $("#sCODE_TYPE").val(),
		sCODE : $("#sCODE_DTL").val()
	};
	
	fn_AjaxSend(sendData, "AD050141", fn_SelectPrjtInfoDetail, PMS_PROC_DELETE);
};

function fn_ModifyPrjt() {

	var arrMap = new Map();
	var arrlist = new Array();

	arrMap.put("sPRJT_ID", $("#searchPrjtID").val());
	arrMap.put("sCODE_TYPE", $("#sCODE_TYPE").val());
	
	for (var i=1; i < objSBGridDetail.rows; i++) {

		var taskMap = new Map();
		
		taskMap.put("sCODE"        , objSBGridDetail.getTextMatrix(i,0));
		taskMap.put("sCODE_NAME"   , objSBGridDetail.getTextMatrix(i,1));
		taskMap.put("sCODE_DESC"   , objSBGridDetail.getTextMatrix(i,2));
		taskMap.put("sUSE_YN"      , objSBGridDetail.getTextMatrix(i,3));
		taskMap.put("sUSE_ORDER"   , objSBGridDetail.getTextMatrix(i,4));
		taskMap.put("sRPLC_CODE"   , objSBGridDetail.getTextMatrix(i,5));
		
		arrlist[i-1] = taskMap;
	}
	
	arrMap.putMapList("sCODE_DETAIL", arrlist);

	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "AD050122", fn_SelectPrjtInfoDetail, PMS_PROC_INSERT);
};	

function fn_SelectListInfo() {
	
	var nClickedRow = objSBGrid.getRow();
	
	$("#sCODE_TYPE").val(objSBGrid.getTextMatrix(nClickedRow,0));
	$("#sCODE_NAME").val(objSBGrid.getTextMatrix(nClickedRow,1));
	$("#sCODE_DESC").val(objSBGrid.getTextMatrix(nClickedRow,2));
	$("#sUSE_YN").val(objSBGrid.getTextMatrix(nClickedRow,3));
	$("#sCODE").val(objSBGrid.getTextMatrix(nClickedRow,4));
	$("#sUSE_ORDER").val(objSBGrid.getTextMatrix(nClickedRow,5));
	$("#sRPLC_CODE").val(objSBGrid.getTextMatrix(nClickedRow,6));
	
	fn_Init_CodeDetail();

	fn_SelectPrjtInfoDetail();
};

function fn_SelectListInfoDetail() {
	var nClickedRow = objSBGridDetail.getRow();
	
	$("#sCODE_DTL").val(objSBGridDetail.getTextMatrix(nClickedRow,0));
	$("#sCODE_NAME_DTL").val(objSBGridDetail.getTextMatrix(nClickedRow,1));
	$("#sCODE_DESC_DTL").val(objSBGridDetail.getTextMatrix(nClickedRow,2));
	$("#sUSE_YN_DTL").val(objSBGridDetail.getTextMatrix(nClickedRow,3));
	$("#sRPLC_CODE_DTL").val(objSBGridDetail.getTextMatrix(nClickedRow,5));
	$("#sUSE_ORDER_DTL").val(objSBGridDetail.getTextMatrix(nClickedRow,4));
	$("#sCODE_TYPE_DTL").val(objSBGridDetail.getTextMatrix(nClickedRow,6));
};

function fn_AddRow() {
	if(objSBGrid.selectedRow(0) == '-1'){
		objSBGrid.addItem();
	}else{
		objSBGrid.insertItem( objSBGrid.selectedRow(0) , "below");
	}
};

function fn_DelRow() {
	var nRow = objSBGrid.selectedRow(0);
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
		<jsp:include page="../common/layout_header_admin.jsp" flush="true" />
	</div>

	<div id="container">

		<div id="leftWrap">
			<jsp:include page="../common/layout_left_ad.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
    			<!-- Form -->
    		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[AD05] 공통코드 관리</h2>
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
    		        <div id="codeTypeSection" class="section">
    		        	<h3>공통코드</h3>
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">코드ID</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sCODE_TYPE" name="sCODE_TYPE" readOnly/>
    		                        </td>
    		                        <th class="w100">코드명</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" id="sCODE_NAME" name="sCODE_NAME"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">코드설명</th>
    		                        <td colspan="3">
										<input type="text" class="txtinp w700" name="sCODE_DESC" id="sCODE_DESC" />
                                    </td>
    		                    </tr>
    		                    <div id="hiddenCodeType">
    		                    	<input type="hidden" class="txtinp w100" name="sUSE_YN" id="sUSE_YN" />
	    		                    <input type="hidden" class="txtinp w100" name="sCODE" id="sCODE" />
	    		                    <input type="hidden" class="txtinp w100" name="sUSE_ORDER" id="sUSE_ORDER" />
	    		                    <input type="hidden" class="txtinp w100" name="sRPLC_CODE" id="sRPLC_CODE" />
    		                    </div>
    		                </tbody>
    		            </table>
    		        </div><!--//section-->
    		        <!-- END : input table section -->

					<!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_CodeType();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        <!-- END : button section -->

	    		    <!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="codeTypeInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		    <br/>
	    		    <!-- START : input table section -->
    		        <div id="codeSection" class="section">
    		        	<h3>상세코드</h3>
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">코드</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sCODE_DTL" name="sCODE_DTL" />
    		                        </td>
    		                        <th class="w100">코드명</th>
    		                        <td>
                                        <input type="text" class="txtinp w200" id="sCODE_NAME_DTL" name="sCODE_NAME_DTL"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">코드설명</th>
    		                        <td>
										<input type="text" class="txtinp w200" name="sCODE_DESC_DTL" id="sCODE_DESC_DTL" />
                                    </td>
                                    <th class="w100">사용여부</th>
    		                        <td>
										<select class="selectbox" id="sUSE_YN_DTL" name="sUSE_YN_DTL">
										</select>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">정렬순서</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sUSE_ORDER_DTL" name="sUSE_ORDER_DTL" />
    		                        </td>
    		                        <th class="w100">고정 ID</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" id="sRPLC_CODE_DTL" name="sRPLC_CODE_DTL" readOnly/>
                                    </td>
    		                    </tr>
    		                    <div id="hiddenCodeDetail">
	    		                    <input type="hidden" class="txtinp w100" name="sCODE_TYPE_DTL" id="sCODE_TYPE_DTL" />
    		                    </div>
    		                </tbody>
    		            </table>
    		        </div><!--//section-->
    		        <!-- END : input table section -->

					<!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_CodeDetail();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjtDetail();" class="btnimg03">저장</a></li>
    		                <li><a href="javascript:fn_DeletePrjtDetail();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        <!-- END : button section -->

	    		    <!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="codeDetailInfo">
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
    		</div><!--//cont-->
		</div><!--//content-->
    </div><!--//container-->
</div><!--//wrap-->
<!--footer-->
<div id="footer">
	<jsp:include page="../common/layout_footer.jsp" flush="true" />
</div><!--//footer-->
</body>
</html>
