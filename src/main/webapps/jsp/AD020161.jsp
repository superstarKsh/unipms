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

	$("#searchUserID").val('<%=(String) session.getAttribute("sSEARCH_USER_ID")%>');
	$("#searchUserNM").val('<%=(String) session.getAttribute("sSEARCH_USER_NM")%>');
	$("#sSEARCH_YN").val('<%=(String) session.getAttribute("sSEARCH_YN")%>');
	$("#sSEARCH_PARAM").val('<%=(String) session.getAttribute("sSEARCH_PARAM")%>');
	
	fn_InitLoad();
};

function fn_InitLoad() {

	if ($("#sSEARCH_PARAM").val() == "H") {
		var searchSection = document.getElementById("searchSection");
		searchSection.setAttribute("style", "display:none");
		var searchBSection = document.getElementById("searchBSection");
		searchBSection.setAttribute("style", "display:none");
		var searchBSection = document.getElementById("btnMoveList");
		searchBSection.setAttribute("style", "display:none");
	}
	
	var sendData = {
		sUSER_ID : $("#searchUserID").val()
	};

	fn_AjaxSend(sendData, "AD020102E", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var prjtCarrSeq = result.prjtCarrSeq;
	$("#sSEQ_NO").val(prjtCarrSeq.sSEQ_NO);
	
	fn_InitGrid();
};

function fn_InitGrid() {
	
	var caption = "순번^프로젝트명^시작년월^종료년월^발주기관명^수행기관명^역할^담당업무^Server^OS^언어^DBMS^비고";
	var colWidth = "10%,30%,10%,10%,20%,20%,10%,10%,15%,15%,15%,15%,30%";
	
	objGridInitInfo = fn_InitSBGrid("prjtUserInfo", "objSBGrid", caption, colWidth, "350px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
		fn_SetSBGridCol("00", "input", "sSEQ_NO"       , "center", null, false),
		fn_SetSBGridCol("01", "input", "sPRJT_NM"      , "left"  , null, false),
		fn_SetSBGridCol("02", "input", "sSTRT_YYYYMM"  , "center", "yyyy.mm", false),
		fn_SetSBGridCol("03", "input", "sEND_YYYYMM"   , "center", "yyyy.mm", false),
		fn_SetSBGridCol("04", "input", "sORDER_ORG_NM" , "left"  , null, false),
		fn_SetSBGridCol("05", "input", "sEXEC_ORG_NM"  , "left"  , null, false),
		fn_SetSBGridCol("06", "input", "sPRJT_PSTN"    , "left"  , null, false),
		fn_SetSBGridCol("07", "input", "sASSGN_BIZ"    , "left"  , null, false),
		fn_SetSBGridCol("08", "input", "sSERVER"       , "left"  , null, false),
		fn_SetSBGridCol("09", "input", "sOS"           , "left"  , null, false),
		fn_SetSBGridCol("10", "input", "sPRG_LANG"     , "left"  , null, false),
		fn_SetSBGridCol("11", "input", "sDBMS"         , "left"  , null, false),
		fn_SetSBGridCol("12", "input", "sETC_INFO"     , "left"  , null, false)
	];
	objSBGrid.createColumns(objColumnsInfo);
	
	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");

	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "AD020161.jsp";
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sUSER_ID : $("#searchUserID").val()
	};
	
	fn_AjaxSend(sendData, "AD020111E", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.prjtCarrInfo;
	objSBGrid.rebuild();
};

function fn_InsertPrjt() {

	var sendData = {
		sUSER_ID 		: $("#searchUserID").val(),
		sSEQ_NO 		: $("#sSEQ_NO").val(),
		sPRJT_NM 		: $("#sPRJT_NM").val(),
		sSTRT_YYYYMM 	: $("#sSTRT_YYYYMM").val(),
		sEND_YYYYMM 	: $("#sEND_YYYYMM").val(),
		sORDER_ORG_NM 	: $("#sORDER_ORG_NM").val(),
		sEXEC_ORG_NM 	: $("#sEXEC_ORG_NM").val(),
		sPRJT_PSTN 		: $("#sPRJT_PSTN").val(),
		sASSGN_BIZ 		: $("#sASSGN_BIZ").val(),
		sSERVER 		: $("#sSERVER").val(),
		sOS 			: $("#sOS").val(),
		sPRG_LANG 		: $("#sPRG_LANG").val(),
		sDBMS 			: $("#sDBMS").val(),
		sETC_INFO 		: $("#sETC_INFO").val()
	};

	fn_AjaxSend(sendData, "AD020121E", fn_Init, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {

	var sendData = {
		sUSER_ID : $("#searchUserID").val(),
		sSEQ_NO : $("#sSEQ_NO").val()
	};
	
	fn_AjaxSend(sendData, "AD020141E", fn_Init, PMS_PROC_DELETE);
};

function fn_ModifyPrjt() {

	var arrMap = new Map();
	var arrlist = new Array();

	arrMap.put("sUSER_ID", $("#searchUserID").val());

	for (var i=1; i<objSBGrid.rows; i++) {

		var taskMap = new Map();

		taskMap.put("sSEQ_NO"       , objSBGrid.getTextMatrix(i,0));
		taskMap.put("sPRJT_NM"      , objSBGrid.getTextMatrix(i,1));
		taskMap.put("sSTRT_YYYYMM"  , objSBGrid.getTextMatrix(i,2));
		taskMap.put("sEND_YYYYMM"   , objSBGrid.getTextMatrix(i,3));
		taskMap.put("sORDER_ORG_NM" , objSBGrid.getTextMatrix(i,4));
		taskMap.put("sEXEC_ORG_NM"  , objSBGrid.getTextMatrix(i,5));
		taskMap.put("sPRJT_PSTN"    , objSBGrid.getTextMatrix(i,6));
		taskMap.put("sASSGN_BIZ"    , objSBGrid.getTextMatrix(i,7));
		taskMap.put("sSERVER"       , objSBGrid.getTextMatrix(i,8));
		taskMap.put("sOS"           , objSBGrid.getTextMatrix(i,9));
		taskMap.put("sPRG_LANG"     , objSBGrid.getTextMatrix(i,10));
		taskMap.put("sDBMS"         , objSBGrid.getTextMatrix(i,11));
		taskMap.put("sETC_INFO"     , objSBGrid.getTextMatrix(i,12));

		arrlist[i-1] = taskMap;
	}

	arrMap.putMapList("sPRJT_CARR_INFO", arrlist);

	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "AD020122E", fn_Init, PMS_PROC_INSERT);
};

function fn_SelectListInfo() {

	var nClickedRow = objSBGrid.getRow();

	if (nClickedRow <= 0 )
		return;

	$("#sSEQ_NO").val(objSBGrid.getTextMatrix(nClickedRow,0));
	$("#sPRJT_NM").val(objSBGrid.getTextMatrix(nClickedRow,1));
	$("#sSTRT_YYYYMM").val(fn_SetMonType(objSBGrid.getTextMatrix(nClickedRow,2), "."));
	$("#sEND_YYYYMM").val(fn_SetMonType(objSBGrid.getTextMatrix(nClickedRow,3), "."));
	$("#sORDER_ORG_NM").val(objSBGrid.getTextMatrix(nClickedRow,4));
	$("#sEXEC_ORG_NM").val(objSBGrid.getTextMatrix(nClickedRow,5));
	$("#sPRJT_PSTN").val(objSBGrid.getTextMatrix(nClickedRow,6));
	$("#sASSGN_BIZ").val(objSBGrid.getTextMatrix(nClickedRow,7));
	$("#sSERVER").val(objSBGrid.getTextMatrix(nClickedRow,8));
	$("#sOS").val(objSBGrid.getTextMatrix(nClickedRow,9));
	$("#sPRG_LANG").val(objSBGrid.getTextMatrix(nClickedRow,10));
	$("#sDBMS").val(objSBGrid.getTextMatrix(nClickedRow,11));
	$("#sETC_INFO").val(objSBGrid.getTextMatrix(nClickedRow,12));
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

function fn_MovePage(args) {
	var content = "";
	content += "sSEARCH_YN=Y";
	content += "&";
	content += "sSEARCH_USER_ID=" + $("#searchUserID").val();
	content += "&";
	content += "sSEARCH_USER_NM=" + $("#searchUserNM").val();
	content += "&";
	content += "sSEARCH_PARAM=L";
	
	fn_AjaxSendSesUrl(content, "pms_session_ad0201.jsp", args + "?p=" + paramP, null);
};

function fn_SearchUser() {
	window.open("PU010111.jsp","",popupStyle);
};

function fn_MoveToList() {
	
	var content = "";
	content += "sSEARCH_YN=N";
	
	fn_AjaxSendSesUrl(content, "pms_session_ad0201.jsp", "AD020101.jsp", null);
};

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div id="wrap">

	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header_admin.jsp" flush="true" />
	</div>
	<!-- END : include -->

	<div id="container">

		<div id="leftWrap">
			<jsp:include page="../common/layout_left_ad.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[AD02] 인력정보 등록</h2>
    		        <!-- END : title -->

					<!-- START : search section -->
    		        <div id="searchSection" class="section">
    		            <div class="search">
    		                <div class="box">
    		                    <ul>
    		                        <li class="name"><span>아이디/이름</span></li>
    		                        <li><input type="text" class="txtinp w100" id="searchUserID" name="searchUserID" readOnly/></li>
    		                        <li><input type="text" class="txtinp w200" id="searchUserNM"  name="searchUserNM" readOnly/></li>
    		                        <li><a href="javascript:fn_SearchUser();" class="btn01">검색</a></li>
    		                    </ul>
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        <div id="searchBSection" class="section">
                        <ul class="btnbox right">
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                     	</ul>
                    </div>
    		        <!-- END : search section -->

					<!-- START : input table section -->
    		        <div id="section" class="section">
						<ul class="tab">
							<li><a href="javascript:fn_MovePage('AD020111.jsp')">기본정보</a></li>
							<li><a href="javascript:fn_MovePage('AD020121.jsp')">학력</a></li>
							<li><a href="javascript:fn_MovePage('AD020131.jsp')">자격증</a></li>
							<li><a href="javascript:fn_MovePage('AD020141.jsp')">교육이수</a></li>
							<li><a href="javascript:fn_MovePage('AD020151.jsp')">경력</a></li>
							<li class="on"><a href="javascript:fn_MovePage('AD020161.jsp')">프로젝트경력</a></li>
						</ul><!--//tab-->
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">프로젝트명</th>
    		                        <td>
                                        <input type="text" class="txtinp w200" id="sPRJT_NM" name="sPRJT_NM"/>
                                    </td>
    		                        <th class="w100">순번</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100"  id="sSEQ_NO" name="sSEQ_NO"/>
    		                        </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">시작월</th>
    		                        <td>
                                        <input type="text" class="txtinp w100"  id="sSTRT_YYYYMM" name="sSTRT_YYYYMM"/>
                                    </td>
                                    <th class="w100">종료월</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100"  id="sEND_YYYYMM" name="sEND_YYYYMM"/>
                                    </td>
    		                    </tr>
    		                    <tr>
                                    <th class="w100">고객사</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sORDER_ORG_NM" id="sORDER_ORG_NM"/>
                                    </td>
    		                        <th class="w100">소속사</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sEXEC_ORG_NM" id="sEXEC_ORG_NM"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">역할</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sPRJT_PSTN" id="sPRJT_PSTN"/>
                                    </td>
    		                        <th class="w100">담당업무</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sASSGN_BIZ" id="sASSGN_BIZ"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">Server</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sSERVER" id="sSERVER"/>
                                    </td>
    		                        <th class="w100">OS</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sOS" id="sOS"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">언어</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sPRG_LANG" id="sPRG_LANG"/>
                                    </td>
    		                        <th class="w100">DBMS</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sDBMS" id="sDBMS"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">기타</th>
    		                        <td colspan="3">
    		                        	<input type="text" class="txtinp w700" name="sETC_INFO" id="sETC_INFO"/>
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
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        
    		        <div class="section">
    		            <ul class="btnbox_top right">
    		                <li><a href="javascript:fn_AddRow();" class="btn02">행추가</a></li>
    		                <li><a href="javascript:fn_DelRow();" class="btn03">행삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        
    		        <!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtUserInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		    
	    		    <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		            	<li id="btnMoveList"><a href="javascript:fn_MoveToList();" class="btnimg03">목록</a></li>
    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div><!--//section-->

    		    </div><!--//pixbox-->
    		    <div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
					<input type="hidden" class="inputType" id="sSEARCH_PARAM" name="sSEARCH_PARAM"/>
				</div>
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