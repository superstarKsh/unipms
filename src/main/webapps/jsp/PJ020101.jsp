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

var prjtRoll = [];
var prjtTeam = [];

function fn_InitLoad() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "PJ020101", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	prjtRoll = result.prjtRoll;
	prjtPstn = result.prjtPstn;
	prjtTeam = result.teamInfo;
	
	fn_InitGrid();
};

function fn_InitGrid() {
	var caption = "*ID^*이름^*이름^직급^역할^시작일자^종료일자^팀^";
	var colWidth = "15%,12%,3%,10%,15%,15%,15%,15%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtPartInfo", "objSBGrid", caption, colWidth, "450px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
		          		fn_SetSBGridCol("00", "output"    , "sUSER_ID"          , "center", null, false),
		          		fn_SetSBGridCol("01", "output"    , "sUSER_NM"          , "center", null, false),
		          		fn_SetSBGridCol("02", "imageS"    , ""                  , "center", null, false),
		          		fn_SetSBGridCol("03", "output"    , "sUSER_PSTN_NM"     , "center", null, false),
		          		fn_SetSBGridCol("04", "combo"     , "sPRJT_ROLE"        , "center", ["prjtRoll", "sCODE_NM", "sCODE"], false),
		          		fn_SetSBGridCol("05", "inputdate" , "sSTRT_DT"          , "center", "yyyy.mm.dd", false),
		          		fn_SetSBGridCol("06", "inputdate" , "sEND_DT"           , "center", "yyyy.mm.dd", false),
		          		fn_SetSBGridCol("07", "combo"     , "sPRJT_SUB_PART_ID" , "center", ["prjtTeam", "sCODE_NM", "sCODE"], false),
		          		fn_SetSBGridCol("08", "output"    , "sUSER_PSTN"        , "center", null, true)
		          	];

	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
	
	fn_SelectPrjtInfo();

};

function fn_SelectPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};
	
	fn_AjaxSend(sendData, "PJ020111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	resultData = result.prjtTeamInfo;
	objSBGrid.rebuild();
};

function fn_ModifyPrjt() {
	var arrMap = new Map();
	var arrlist = new Array(objSBGrid.rows - 1);

	arrMap.put("sPRJT_ID", $("#searchPrjtID").val());
	
	for (var i=1; i<objSBGrid.rows; i++) {
		var taskMap = new Map();
	
		taskMap.put("sUSER_ID"           , objSBGrid.getTextMatrix(i,0));
		taskMap.put("sPRJT_ROLE"         , objSBGrid.getTextMatrix(i,4));
		taskMap.put("sSTRT_DT"           , objSBGrid.getTextMatrix(i,5));
		taskMap.put("sEND_DT"            , objSBGrid.getTextMatrix(i,6));
		taskMap.put("sPRJT_SUB_PART_ID"  , objSBGrid.getTextMatrix(i,7));

		arrlist[i-1] = taskMap;
	}

	arrMap.putMapList("sPART_USER", arrlist);

	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "PJ020122", fn_SelectPrjtInfo, PMS_PROC_INSERT);
};

function fn_SelectListInfo() {
	var nClickedRow = objSBGrid.getRow();
	var nClickedCol = objSBGrid.getCol();
	
	if (nClickedCol==2) {
		var popupUrl = "PU010111.jsp?nSelRow="+nClickedRow;
		window.open(popupUrl,"",popupStyle);
	}
};

function fn_AddRow() {
	if(objSBGrid.selectedRow(0) == '-1'){
		objSBGrid.addItem();
		objSBGrid.setTextMatrix(objSBGrid.getRows()-1, 2, PMS_SEARCH_IMAGE);
	}else{
		objSBGrid.insertItem(objSBGrid.selectedRow(0) , "below");
		objSBGrid.setTextMatrix(objSBGrid.selectedRow(0), 2, PMS_SEARCH_IMAGE);
	}
};

function fn_DelRow() {
	var nRow = objSBGrid.getClickedRow();
	objSBGrid.deleteItem(nRow);
};

function fn_ChangeVal(){
	fn_SelectPrjtInfo();
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
			<jsp:include page="../common/layout_left_pj.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[PJ02] 프로젝트인력관리</h2>
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

    		        <!-- END : search section -->

					<!-- START : input table section -->
    		        <!-- div class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w120"><pk>*</pk> 프로젝트 팀(Part)</th>
    		                        <td colspan="3">
                                        <select class="selectbox" onChange="javascript:fn_ChangeVal();" name="selectbox" id="sPRJT_SUB_PART_ID" name="sPRJT_SUB_PART_ID">
										</select>
                                    </td>
    		                    </tr>
    		                </tbody>
    		            </table>
    		        </div--><!--//section-->
    		        <!-- END : input table section -->

					<!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox_top right">
    		                <li><a href="javascript:fn_AddRow();" class="btn02">행추가</a></li>
    		                <li><a href="javascript:fn_DelRow();" class="btn03">행 삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        
    		        <!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtPartInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		    
	    		    <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div><!--//section-->

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