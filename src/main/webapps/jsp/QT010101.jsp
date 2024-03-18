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

	$("#sCNTL_TYPE").empty();
	$("#sTARGET_TYPE").empty();

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "QT010101", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var selSearchQtType = '<option value="00">선 택</option>';
	var selSearchQtTarget = '<option value="00">선 택</option>';

	$.each(result.qultyType,function(key, value) {
		selSearchQtType = selSearchQtType + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sCNTL_TYPE").empty().append(selSearchQtType);
	});
	$.each(result.qultyTarget,function(key, value) {
		selSearchQtTarget = selSearchQtTarget + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sTARGET_TYPE").empty().append(selSearchQtTarget);
	});

	fn_InitGrid();
};

function fn_InitGrid() {
	var caption = "품질관리ID^품질관리명^시작일자^종료일자^점검구분^점검자^대상구분^비고^^";
	var colWidth = "10%,20%,13%,13%,10%,10%,10%,20%,10%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtQtInfo", "objSBGrid", caption, colWidth, "350px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						fn_SetSBGridCol("00", "output" , "sQULTY_ID"        , "center", null, false),
						fn_SetSBGridCol("01", "output" , "sTITLE"           , "left"  , null, false),
						fn_SetSBGridCol("02", "output" , "sSTRT_DT"         , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("03", "output" , "sEND_DT"          , "center", "yyyy.mm.dd", false),
						fn_SetSBGridCol("04", "output" , "sCNTL_TYPE_NM"    , "center", null, false),
						fn_SetSBGridCol("05", "output" , "sCNTL_USER_NM"    , "center", null, false),
						fn_SetSBGridCol("06", "output" , "sTARGET_TYPE_NM"  , "center", null, false),
						fn_SetSBGridCol("07", "output" , "sCONTENTS"        , "left"  , null, false),
						fn_SetSBGridCol("08", "output" , "sCNTL_TYPE"       , "center", null, true),
						fn_SetSBGridCol("09", "output" , "sTARGET_TYPE"     , "center", null, true),
						fn_SetSBGridCol("10", "output" , "sCNTL_USER_ID"    , "center", null, true)
	                ];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");

	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "QT010101.jsp";
};

function fn_SelectInitID () {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sCNTL_TYPE : $("#sCNTL_TYPE option:selected").val()
	};

	fn_AjaxSend(sendData, "QT010102", fn_SetDataSelectInitID, null);
};

function fn_SetDataSelectInitID(result) {
	var qultyID = result.qultyID;
	$("#sQULTY_ID").val(qultyID.sQULTY_ID);
};

function fn_SelectPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "QT010111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.qultyInfo;
    objSBGrid.rebuild();
};

function fn_InsertPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sQULTY_ID : $("#sQULTY_ID").val(),
		sTITLE : $("#sTITLE").val(),
		sSTRT_DT : $("#sSTRT_DT").val(),
		sEND_DT : $("#sEND_DT").val(),
		sEND_DT : $("#sEND_DT").val(),
		sCNTL_TYPE : $("#sCNTL_TYPE option:selected").val(),
		sCNTL_USER_ID : $("#sCNTL_USER_ID").val(),
		sTARGET_TYPE : $("#sTARGET_TYPE option:selected").val(),
		sCONTENTS : $("#sCONTENTS").val()
	};

	fn_AjaxSend(sendData, "QT010121", fn_Init_Clear, PMS_PROC_INSERT);
};

function fn_DeletePrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sQULTY_ID : $("#sQULTY_ID").val()
	};

	fn_AjaxSend(sendData, "QT010141", fn_Init_Clear, PMS_PROC_DELETE);
};

function fn_SelectListInfo() {	
	var nClickedRow = objSBGrid.getRow();
	if (nClickedRow <= 0 )
		return;	
	$("#sCNTL_TYPE").val(objSBGrid.getTextMatrix(nClickedRow,8));
	$("#sQULTY_ID").val(objSBGrid.getTextMatrix(nClickedRow,0));
	$("#sTITLE").val(objSBGrid.getTextMatrix(nClickedRow,1));
	$("#sSTRT_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRow,2)));
	$("#sEND_DT").val(fn_SetDateType(objSBGrid.getTextMatrix(nClickedRow,3)));
	$("#sTARGET_TYPE").val(objSBGrid.getTextMatrix(nClickedRow,9));
	$("#sCNTL_USER_NM").val(objSBGrid.getTextMatrix(nClickedRow,5));
	$("#sCNTL_USER_ID").val(objSBGrid.getTextMatrix(nClickedRow,10));
	$("#sCONTENTS").val(objSBGrid.getTextMatrix(nClickedRow,7));
};

$(function() {
    $( "#sSTRT_DT" ).datepicker(setCalendar);
    $( "#sEND_DT" ).datepicker(setCalendar);
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
			<jsp:include page="../common/layout_left_qt.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[QT01] 일정등록</h2>
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
    		                        <th class="w120"><pk>*</pk> 품질점검구분</th>
    		                        <td>
                                        <select class="selectbox" name="selectbox" id="sCNTL_TYPE" name="sCNTL_TYPE" onChange="javascript:fn_SelectInitID();">
										</select>
                                    </td>
                                    <th class="w120"><pk>*</pk> 품질관리 ID</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100"  id="sQULTY_ID" name="sQULTY_ID"/>
    		                        </td>
    		                    </tr>
    		                    <tr>
                                    <th class="w120">품질관리명</th>
    		                        <td colspan="3">
    		                        	<input type="text" class="txtinp w700"  id="sTITLE" name="sTITLE"/>
                                    </td>
    		                    </tr>
    		                    <tr>
                                    <th class="w120">시작일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sSTRT_DT" id="sSTRT_DT"/>
                                    </td>
    		                        <th class="w120">종료일자</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sEND_DT" id="sEND_DT"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w120">점검대상</th>
    		                        <td>
    		                        	<select class="selectbox" name="selectbox" id="sTARGET_TYPE" name="sTARGET_TYPE">
										</select>
                                    </td>
    		                        <th class="w120">점검자</th>
    		                        <td>
                                        <ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sCNTL_USER_NM" name="sCNTL_USER_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser();" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" class="txtinp w100" id="sCNTL_USER_ID" name="sCNTL_USER_ID"/></li>
										</ul>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w120">비고</th>
    		                        <td colspan="3">
										<textarea class="txtinp w700" cols="100" rows="5" name="sCONTENTS" id="sCONTENTS" ></textarea>
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
    		                <li><a href="javascript:fn_InsertPrjtInfo();" class="btnimg03">저장</a></li>
    		                <li><a href="javascript:fn_DeletePrjtInfo();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        
    		        <!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtQtInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->

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