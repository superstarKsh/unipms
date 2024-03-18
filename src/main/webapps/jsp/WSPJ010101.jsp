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

var objSBGridMmth;
var objResultMmthData;

function fn_InitLoad() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "WSPJ010101", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var selCurrStage = '<option value="00">선 택</option>';
	
	$.each(result.prjtStage,function(key, value) {
		selCurrStage = selCurrStage + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sCURR_STAGE").empty().append(selCurrStage);
	});
	
	fn_InitGrid();
};

function fn_InitGrid() {
	
	var caption = "단계^시작일자^종료일자^비고^";
	var colWidth = "15%,15%,15%,55%,10%";
	
	objGridInitInfo = fn_InitSBGrid("prjtStageInfo", "objSBGrid", caption, colWidth, "205px", "resultData", true, null);
	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						fn_SetSBGridCol("00", "output"    , "sPRJT_STAGE_NM"  , "center" , null, false),
						fn_SetSBGridCol("01", "inputdate" , "sSTRT_DT"        , "center" , "yyyy.mm.dd", false),
						fn_SetSBGridCol("02", "inputdate" , "sEND_DT"         , "center" , "yyyy.mm.dd", false),
						fn_SetSBGridCol("03", "input"     , "sETC_DISC"       , "left"   , null, false),
						fn_SetSBGridCol("04", "output"    , "sPRJT_STAGE"     , "center" , null, true)
	                ];
	objSBGrid.createColumns(objColumnsInfo);

	objSBGrid.addEventListener("onvaluechanged","fn_ObjSBGridChangeGrid","","");
	
	fn_SelectPrjtInfo();
};

function fn_CreateMnthGrid(result) {

	objResultMmthData = [{"col0":"M / M"}];
	
	var strCaption = "";
	var strWidth = "";
	var i = 0;
	
	strCaption = "월";
	strWidth = "10%";
	
	var mmSum = 0.0;
	
	for (i=0; i<result.length; i++) {
		strCaption += "^" + result[i].sYYYYMM.substring(0,4) + "." + result[i].sYYYYMM.substring(4,6);
		if (result.length == 1)
			strWidth += ",45%";
		else if (result.length == 2)
			strWidth += ",30%";
		else if (result.length == 3)
			strWidth += ",20%";
		else
			strWidth += ",15%";
		objResultMmthData[0]["col" + (i+1).toString()] = result[i].sMAN_MONTH;
		
		if (result[i].sMAN_MONTH != "")
			mmSum += parseFloat(result[i].sMAN_MONTH);
	}
	
	strCaption += "^계";
	if (result.length == 1)
		strWidth += ",45%";
	else if (result.length == 2)
		strWidth += ",30%";
	else if (result.length == 3)
		strWidth += ",30%";
	else
		strWidth += ",15%";
	
	objResultMmthData[0]["col" + (result.length + 1).toString()] = mmSum;

	objGridInitInfoMmInfo = fn_InitSBGrid("mmthInfo", "objSBGridMmth", strCaption, strWidth, "75px", "objResultMmthData", false, null);
	if(SBGrid.getGrid(objGridInitInfoMmInfo.strId)){
		objSBGridMmth.destroy();
  	}

	objSBGridMmth = createSBDataGrid(objGridInitInfoMmInfo);
	
	var objColumnsInfoMmth = [
	       						{"id": "col0","type": "output", "ref": "col0","style": "text-align:center;background-color:#EAEFF3"}
	       	                ];
	
	var objTemp;

	for (i=0; i< result.length; i++) {
		objTemp = {};
		objTemp.id = 'col' + (i+1).toString();
		objTemp.ref = 'col' + (i+1).toString();
		objTemp.type = "input";
		objTemp.style = "text-align:center;";

		objColumnsInfoMmth.push(objTemp);
		objTemp = null;
	}
	
	objTemp = {};
	objTemp.id = 'col' + (result.length + 1).toString();
	objTemp.ref = 'col' + (result.length + 1).toString();
	objTemp.type = "input";
	objTemp.style = "text-align:center;";

	objColumnsInfoMmth.push(objTemp);
	objTemp = null;

	objSBGridMmth.createColumns(objColumnsInfoMmth);
};

function fn_Init_Clear() {
	window.location = "WSPJ010101.jsp";
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};
	
	fn_AjaxSend(sendData, "WSPJ010111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	var prjtInfo = result.prjtInfo;
	if (prjtInfo == null)
		return;
	
	$("#sPRJT_ID").val(prjtInfo.sPRJT_ID);
	$("#sPRJT_NM").val(prjtInfo.sPRJT_NM);
	$("#sCURR_STAGE").val(prjtInfo.sCURR_STAGE);
	$("#sPRJT_MANG_ID").val(prjtInfo.sPRJT_MANG_ID);
	$("#sPRJT_MANG_NM").val(prjtInfo.sPRJT_MANG_NM);
	$("#sBIZ_AMOUNT").val(prjtInfo.sBIZ_AMOUNT);
	$("#sMAN_MONTH").val(prjtInfo.sMAN_MONTH);
	$("#sCUS_CD").val(prjtInfo.sCUS_CD);
	$("#sCUS_NM").val(prjtInfo.sCUS_NM);
	$("#sMAIN_BIZ_PART_CD").val(prjtInfo.sMAIN_BIZ_PART_CD);
	$("#sMAIN_BIZ_PART_NM").val(prjtInfo.sMAIN_BIZ_PART_NM);
	$("#sPRJT_STRT_DT").val(fn_SetDateType(prjtInfo.sPRJT_STRT_DT, "."));
	$("#sPRJT_END_DT").val(fn_SetDateType(prjtInfo.sPRJT_END_DT, "."));
	$("#sDEV_METHOD").val(prjtInfo.sDEV_METHOD);
	$("#sUSE_TOOL").val(prjtInfo.sUSE_TOOL);
	$("#sSERVER_TYPE").val(prjtInfo.sSERVER_TYPE);
	$("#sOS_TYPE").val(prjtInfo.sOS_TYPE);
	$("#sPRGM_LANG").val(prjtInfo.sPRGM_LANG);
	$("#sDBMS_TYPE").val(prjtInfo.sDBMS_TYPE);
	$("#sETC_TYPE").val(prjtInfo.sETC_TYPE);
	$("#sPRJT_DISC").val(prjtInfo.sPRJT_DISC);
	$("#sETC_DISC").val(prjtInfo.sETC_DISC);

	resultData = result.prjtStageInfo;
	objSBGrid.rebuild();
	
	fn_CreateMnthGrid(result.prjtMmthInfo);
};

function fn_InsertPrjt() {
	
	if($("#sCURR_STAGE").val() == null || $("#sCURR_STAGE").val() == ""  ) {
		alert(SELECT_PRJT_STAGE);
		return;
	}
	
	if($("#sPRJT_ID").val() == null || $("#sPRJT_ID").val() == ""  ) {
		alert(INSERT_PRJT_ID);
		return;
	}
	
	var sendData = {
		sPRJT_ID : $("#sPRJT_ID").val(),
		sPRJT_NM : $("#sPRJT_NM").val(),
		sCURR_STAGE : $("#sCURR_STAGE option:selected").val(),
		sPRJT_MANG_ID : $("#sPRJT_MANG_ID").val(),
		sBIZ_AMOUNT : $("#sBIZ_AMOUNT").val(),
		sMAN_MONTH : $("#sMAN_MONTH").val(),
		sCUS_CD : $("#sCUS_CD").val(),
		sMAIN_BIZ_PART_CD : $("#sMAIN_BIZ_PART_CD").val(),
		sPRJT_STRT_DT : $("#sPRJT_STRT_DT").val(),
		sPRJT_END_DT : $("#sPRJT_END_DT").val(),
		sDEV_METHOD : $("#sDEV_METHOD").val(),
		sUSE_TOOL : $("#sUSE_TOOL").val(),
		sSERVER_TYPE : $("#sSERVER_TYPE").val(),
		sOS_TYPE : $("#sOS_TYPE").val(),
		sPRGM_LANG : $("#sPRGM_LANG").val(),
		sDBMS_TYPE : $("#sDBMS_TYPE").val(),
		sETC_TYPE : $("#sETC_TYPE").val(),
		sPRJT_DISC : $("#sPRJT_DISC").val(),
		sETC_DISC : $("#sETC_DISC").val()
	};	

	fn_AjaxSend(sendData, "WSPJ010121", fn_SelectPrjtInfo, PMS_PROC_INSERT);
};

function fn_ModifyPrjtMM() {

	var arrYyyymm = objSBGridMmth.getCaption().split('^');
	
	var arrMap = new Map();
	var arrlist = new Array(arrYyyymm.length - 2);

	arrMap.put("sPRJT_ID", $("#sPRJT_ID").val());
	
	for (var i=1; i<arrYyyymm.length - 1; i++) {
		var mmMap = new Map();
		mmMap.put("sYYYYMM"    , fn_SearchNum(arrYyyymm[i]));
		mmMap.put("sMAN_MONTH" , objSBGridMmth.getTextMatrix(1,i));
		
		arrlist[i-1] = mmMap;
	}
	
	arrMap.putMapList("sPRJT_MMONTH", arrlist);

	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "WSPJ010122A", fn_SetDataModifyPrjtMM, PMS_PROC_INSERT);
};

function fn_SetDataModifyPrjtMM(result) {
	fn_CreateMnthGrid(result.prjtMmthInfo);
};

function fn_ModifyPrjtStage() {
	
	var arrMap = new Map();
	var arrlist = new Array(objSBGrid.rows - 1);

	arrMap.put("sPRJT_ID", $("#sPRJT_ID").val());

	for (var i=1; i<objSBGrid.rows; i++) {
		var stageMap = new Map();

		stageMap.put("sPRJT_STAGE" , objSBGrid.getTextMatrix(i,4));
		stageMap.put("sSTRT_DT"    , objSBGrid.getTextMatrix(i,1));
		stageMap.put("sEND_DT"     , objSBGrid.getTextMatrix(i,2));
		stageMap.put("sETC_DISC"   , objSBGrid.getTextMatrix(i,3));

		arrlist[i-1] = stageMap;
	}
	
	arrMap.putMapList("sPRJT_STAGE_INFO", arrlist);

	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "WSPJ010122B", fn_SetDataModifyPrjtStage, PMS_PROC_INSERT);
};

function fn_SetDataModifyPrjtStage(result) {
	resultData = result.prjtStageInfo;
	objSBGrid.rebuild();
};

function fn_ObjSBGridChangeGrid(event) {
	var nRow = objSBGrid.getMouseRow();
	var nCol = objSBGrid.getMouseCol();

	objSBGrid.setCellStyle("background-color", nRow, nCol, nRow, nCol, "#F3F781");
};

function fn_ObjSBGridMmthChangeGrid(event) {
	var nRow = objSBGridMmth.getMouseRow();
	var nCol = objSBGridMmth.getMouseCol();
	
	if (nCol != 0) {
		objSBGridMmth.setCellStyle("background-color", nRow, nCol, nRow, nCol, "#F3F781");
	}
};

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
};

function fn_SearchUser() {
	window.open("PU010111.jsp","", popupStyle);
};

function fn_SearchCoop(args) {
	var popUpUrl = "PU010121.jsp?PJ010101="+args;
	window.open(popUpUrl,"", popupStyle);
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
			<jsp:include page="../common/layout_left_wspj.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[PJ01] 프로젝트정보관리</h2>
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
			
					<div class="section">
	    		        <table class="table01" border="0" cellspacing="0" summary="">
	    		            <tbody>
	    		                <tr>
									<th class="w100"><pk>*</pk> 프로젝트명</th>
									<td colspan="3">
										<input type="text" class="txtinp w100" name="sPRJT_ID" id="sPRJT_ID"/>
										<input type="text" class="txtinp w500"  name="sPRJT_NM" id="sPRJT_NM"/>
									</td>
								</tr>
								<tr>
									<th class="w100">진행단계</th>
									<td >
										<select class="selectbox" id="sCURR_STAGE" name="sCURR_STAGE">
										</select>
									</td>	
									<th>PM</th>
									<td>
										<input type="text" class="txtinp w100" id="sPRJT_MANG_NM" name="sPRJT_MANG_NM" readOnly/>
										<input type="hidden" class="txtinp w100" id="sPRJT_MANG_ID" name="sPRJT_MANG_ID"/>
									</td>
								</tr>
								<!--tr>
									<th class="w100">사업본부 </th>
									<td>
										<select class="selectbox" id="sBIZ_QUARTER" name="sBIZ_QUARTER">
										</select>
									</td>
									<th class="w100">사업구분</th>
									<td>
										<select class="selectbox" id="sBIZ_TYPE" name="sBIZ_TYPE">
										</select>
									</td>
								</tr-->
								<tr>
									<th class="w100">총사업금액</th>
									<td><input type="text" class="txtinp w100" id="sBIZ_AMOUNT" name="sBIZ_AMOUNT"/></td>
									<th class="w100">투입인원 </th>
									<td><input type="text" class="txtinp w100" id="sMAN_MONTH"  name="sMAN_MONTH">&nbsp;M/M</td>
								</tr>
								<tr>
									<th class="w100">고객사</th>
									<td>
										<input type="text" class="txtinp w100" id="sCUS_NM" name="sCUS_NM" readOnly/>
										<input type="hidden" class="txtinp w100" id="sCUS_CD" name="sCUS_CD"/>
									</td>		
									<th class="w100">주사업자</th>
									<td>
										<input type="text" class="txtinp w100" id="sMAIN_BIZ_PART_NM" name="sMAIN_BIZ_PART_NM" readOnly/>
										<input type="hidden" id="sMAIN_BIZ_PART_CD" name="sMAIN_BIZ_PART_CD"/>
									</td>
								</tr>
								<tr>	
									<th class="w100">시작일자</th>
									<td><input type="text" class="txtinp w100" id="sPRJT_STRT_DT" name="sPRJT_STRT_DT" /></td>
									<th class="w100">종료일자</th>
									<td><input type="text" class="txtinp w100" id="sPRJT_END_DT" name="sPRJT_END_DT" /></td>
								</tr>
								<tr>
									<th class="w100">개발방법론</th>
									<td><input type="text" class="txtinp w200" id="sDEV_METHOD" name="sDEV_METHOD"/></td>
									<th class="w100">언어</th>
									<td><input type="text" class="txtinp w200" id="sPRGM_LANG" name="sPRGM_LANG" /></td>
								</tr>
								<tr>	
									<th class="w100">서버</th>
									<td><input type="text" class="txtinp w200" id="sSERVER_TYPE" name="sSERVER_TYPE" /></td>	
									<th class="w100">OS</th>
									<td><input type="text" class="txtinp w200" id="sOS_TYPE" name="sOS_TYPE" /></td>	
								</tr>
								<tr>
									<th class="w100">TOOL </th>
									<td><input type="text" class="txtinp w200" id="sUSE_TOOL" name="sUSE_TOOL" /></td>
									<th class="w100">DBMS</th>
									<td><input type="text" class="txtinp w200" id="sDBMS_TYPE" name="sDBMS_TYPE" /></td>
								</tr>
								<tr>
									<th class="w100">미들웨어/기타</th>
									<td colspan="3">
										<input type="text" class="txtinp w700"  id="sETC_TYPE"  name="sETC_TYPE"/>
									</td>
								</tr>
								<tr>
									<th class="w100">프로젝트설명</th>
									<td colspan="3">
										<textarea class="txtinp w700" cols="100" rows="5" name="sPRJT_DISC" id="sPRJT_DISC" ></textarea>
									</td>
								</tr>		
								<tr>
									<th class="w100">기타사항</th>
									<td colspan="3">
										<textarea class="txtinp w700" cols="100" rows="5" name="sETC_DISC" id="sETC_DISC" ></textarea>
									</td>
				   		          </tr>
				        	</tbody>
				        </table>
				    </div><!--//section-->
					<!-- END : input table section -->
			
					<div class="section">
		   		    	<ul class="btnbox right">
    		            	<li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
		   		        	<li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
		   		        </ul>
		    	    </div>
		    	    <!--//section-->
		   			<div class="section">
			        	<h3>인력투입계획</h3>
			            <div id="mmthInfo">
						</div>
			    	</div>
			    		
				   	<!-- START : button section -->
		   		    <div class="section">
		   		        <ul class="btnbox right">
		                    <li><a href="javascript:fn_ModifyPrjtMM();" class="btnimg03">저장</a></li>
		   	            </ul>
			        </div><!--//section-->

		    		<!--//section-->
			    	<div class="section">
		    		    <h3>일정정보현황</h3>
						<div id="prjtStageInfo">
						</div>
				   	</div>
			    		
					<!-- START : button section -->
		   	        <div class="section">
			            <ul class="btnbox right">
			                <li><a href="javascript:fn_ModifyPrjtStage();" class="btnimg03">저장</a></li>
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