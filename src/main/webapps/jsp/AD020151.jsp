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

	fn_InitGrid();
};

function fn_InitGrid() {

	var caption = "순번^회사명^입사년월^퇴사년월^최종직위^담당업무";
	var colWidth = "10%,25%,15%,15%,10%,25%";
	
	objGridInitInfo = fn_InitSBGrid("prjtUserInfo", "objSBGrid", caption, colWidth, "350px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
		fn_SetSBGridCol("00", "input", "sSEQ_NO"        , "center", null, false),
		fn_SetSBGridCol("01", "input", "sCORP_NM"       , "left"  , null, false),
		fn_SetSBGridCol("02", "input", "sCORP_JOIN_DT"  , "center", "yyyy.mm", false),
		fn_SetSBGridCol("03", "input", "sCORP_RTRE_DT"  , "center", "yyyy.mm", false),
		fn_SetSBGridCol("04", "input", "sLAST_PSTN"     , "center", null, false),
		fn_SetSBGridCol("05", "input", "sASSGN_BIZ"     , "left"  , null, false)
	];
	objSBGrid.createColumns(objColumnsInfo);
	
	fn_SelectPrjtInfo();
};

function fn_Init_Clear() {
	window.location = "AD020151.jsp";
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sUSER_ID : $("#searchUserID").val()
	};

	fn_AjaxSend(sendData, "AD020111D", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.carrInfo;
	objSBGrid.rebuild();
};

function fn_ModifyPrjt() {
	
	var arrMap = new Map();
	var arrlist = new Array();

	arrMap.put("sUSER_ID", $("#searchUserID").val());
	
	for (var i=1; i < objSBGrid.rows; i++) {
		var taskMap = new Map();
		
		taskMap.put("sSEQ_NO"       , objSBGrid.getTextMatrix(i,0));
		taskMap.put("sCORP_NM"      , objSBGrid.getTextMatrix(i,1));
		taskMap.put("sCORP_JOIN_DT" , objSBGrid.getTextMatrix(i,2));
		taskMap.put("sCORP_RTRE_DT" , objSBGrid.getTextMatrix(i,3));
		taskMap.put("sLAST_PSTN"    , objSBGrid.getTextMatrix(i,4));
		taskMap.put("sASSGN_BIZ"    , objSBGrid.getTextMatrix(i,5));

		arrlist[i-1] = taskMap;
	}

	arrMap.putMapList("sCARR_INFO", arrlist);

	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "AD020122D", fn_SelectPrjtInfo, PMS_PROC_INSERT);
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
    		        <div class="section">
						<ul class="tab">
							<li><a href="javascript:fn_MovePage('AD020111.jsp')">기본정보</a></li>
							<li><a href="javascript:fn_MovePage('AD020121.jsp')">학력</a></li>
							<li><a href="javascript:fn_MovePage('AD020131.jsp')">자격증</a></li>
							<li><a href="javascript:fn_MovePage('AD020141.jsp')">교육이수</a></li>
							<li class="on"><a href="javascript:fn_MovePage('AD020151.jsp')">경력</a></li>
							<li><a href="javascript:fn_MovePage('AD020161.jsp')">프로젝트경력</a></li>
						</ul><!--//tab-->
					</div>

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