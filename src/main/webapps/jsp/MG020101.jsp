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
	$('input:radio[name=searchType]:input[value=1]').prop("checked", true);
	fn_SelectPrjtInfo();
	fn_InitHeight();
};

var initHeightSize = "700";
function fn_InitHeight() {
	var height = window.innerHeight;
	initHeightSize = height - 300;
	if(initHeightSize < 300) {
		initHeightSize = "700";
	}
};

function fn_InitGrid(result) {

	var strCaption 	= "";
	var strCaption1 = "";
	var strCaption2 = "";
	var strCaptionI = "";
	var strCaptionT = "";
	var strColWidth = "";
	var strColWidthI= "";
	var strColWidthT= "";
	
  	resultData = result.prjtInfo;
  	
  	var prjtDaySchl = result.prjtDaySchl;
  	
  	strCaptionI += "TASK_ID^TASK^시작일자^종료일자^완료율(%)^완료율(%)^^";
  	strColWidthI += "0,250,100,100,80,30,100,100";
	  	
  	var i = 0;
  	for (i=0; i < prjtDaySchl.length; i++) {
  		strCaption 	+= "^" + prjtDaySchl[i].sPRJT_WEEK;
  		strCaption2 += "^" + prjtDaySchl[i].sCURR_DD;
  		strCaption1 += "^" + prjtDaySchl[i].sCURR_YYYY + "." + prjtDaySchl[i].sCURR_MM;
	  		
  		strColWidth += ",30";
  	}
	  	
  	strCaptionT 	= strCaptionI + strCaption1 + "|" + strCaptionI +  strCaption2 + "|" + strCaptionI + strCaption;
  	strColWidthT 	= strColWidthI + strColWidth + "," + strColWidthI + strColWidth + "," + strColWidthI + strColWidth;

  	objGridInitInfo = fn_InitSBGrid("wbsInfo", "objSBGrid", strCaptionT, strColWidthT, initHeightSize+"px", "resultData", true, 6);
  	if(SBGrid.getGrid(objGridInitInfo.strId)){
  		objSBGrid.destroy();
  	} 

  	objSBGrid = createSBDataGrid(objGridInitInfo);

  	objColumnsInfo = [
  					fn_SetSBGridCol("00", "output"     , "sTASK_LEVEL"  , "left"  , null, false),
  					fn_SetSBGridCol("01", "output"     , "sTASK_NM"     , "left"  , null, false),
  					fn_SetSBGridCol("02", "output"     , "sSTRT_DT"     , "center", "yyyy.mm.dd", false),
  					fn_SetSBGridCol("03", "output"     , "sEND_DT"      , "center", "yyyy.mm.dd", false),
  					fn_SetSBGridCol("04", "input"      , "sPROGRESS_RT" , "right" , null, false),
  					fn_SetSBGridCol("05", "imageF"     , "sIMG_URL"     , "center", null, false),
  					fn_SetSBGridCol("06", "output"     , "sFILE_NM"     , "left"  , null, true),
  					fn_SetSBGridCol("07", "output"     , "sTASK_ID"     , "left"  , null, true)
  				];

	var tempString = "";
	for (i=0; i< prjtDaySchl.length; i++) {
		var objTemp = {};
		objTemp.id = 'col' + (i + 8).toString();
		objTemp.ref = 'sZEROSTRING';
		objTemp.type = "output";
		tempString += "<input type='hidden' id='sCURR_DD_" + i + "' value='"+ prjtDaySchl[i].sCURR_DT + "'/>";
		
		objColumnsInfo.push(objTemp);
		objTemp = null;
	}
	
	document.getElementById("hiddenColumn").innerHTML = tempString;
	
	objSBGrid.createColumns(objColumnsInfo);

	var tempRow = resultData.length+3;
	var tempCol = 0;
	
	tempCol = prjtDaySchl.length+8;
	
	for (var irow=3; irow <tempRow; irow++) {
		for (var icol=8; icol <tempCol; icol++) {
			var strtdt 	= "";
			var enddt 	= "";

			strtdt 	= objSBGrid.getTextMatrix(irow,2);
			enddt 	= objSBGrid.getTextMatrix(irow,3);

			var basedt 	= $("#sCURR_DD_"+(icol-8)).val();  
			
			if (strtdt <= basedt && enddt >= basedt) {
				objSBGrid.setCellStyle( 'background-color', irow, icol, irow, icol, '#D7908C');
			}
			if (prjtDaySchl[icol-8].sHDAY_TYPE == '1') {
				objSBGrid.setCellStyle( 'background-color', irow, icol, irow, icol, '#E6E6E6');
			}
		}
	}

	objSBGrid.setGroupLevelCol(0);
	objSBGrid.setGroupCol(1);
	objSBGrid.setGroup('complete');
};

function fn_InitGridWeek(result) {

	var strCaption 	= "";
	var strCaption1 = "";
	var strCaptionI = "";
	var strCaptionT = "";
	var strColWidth = "";
	var strColWidthI= "";
	var strColWidthT= "";
	
  	resultData = result.prjtInfo;
  	
  	var prjtWeekSchl = result.prjtWeekSchl;

  	strCaptionI += "TASK_ID^TASK^시작일자^종료일자^완료율(%)^완료율(%)^^";
  	strColWidthI += "0,250,100,100,80,30,100,100";
	  	
	var i = 0;
	
	for (i=0; i < prjtWeekSchl.length; i++) {
		strCaption 	+= "^" + prjtWeekSchl[i].sPRJT_WEEK;
		strCaption1 += "^" + prjtWeekSchl[i].sCURR_YYYY + "." + prjtWeekSchl[i].sCURR_MM;
	  		
		strColWidth += ",45";
	}

	strCaptionT 	= strCaptionI + strCaption1 + "|" + strCaptionI + strCaption;
	strColWidthT 	= strColWidthI + strColWidth + "," + strColWidthI + strColWidth;
	
	objGridInitInfo = fn_InitSBGrid("wbsInfo", "objSBGrid", strCaptionT, strColWidthT, initHeightSize+"px", "resultData", true, 6);
  	if(SBGrid.getGrid(objGridInitInfo.strId)){
  		objSBGrid.destroy();
  	} 

  	objSBGrid = createSBDataGrid(objGridInitInfo);

  	objColumnsInfo = [
  					fn_SetSBGridCol("00", "output"     , "sTASK_LEVEL"  , "left"  , null, false),
  					fn_SetSBGridCol("01", "output"     , "sTASK_NM"     , "left"  , null, false),
  					fn_SetSBGridCol("02", "output"     , "sSTRT_DT"     , "center", "yyyy.mm.dd", false),
  					fn_SetSBGridCol("03", "output"     , "sEND_DT"      , "center", "yyyy.mm.dd", false),
  					fn_SetSBGridCol("04", "input"      , "sPROGRESS_RT" , "right" , null, false),
  					fn_SetSBGridCol("05", "imageF"     , "sIMG_URL"     , "center", null, false),
  					fn_SetSBGridCol("06", "output"     , "sFILE_NM"     , "left"  , null, true),
  					fn_SetSBGridCol("07", "output"     , "sTASK_ID"     , "left"  , null, true)
  				];

	var tempString = "";
	for (i=0; i< prjtWeekSchl.length; i++) {
		var objTemp = {};
		objTemp.id = 'col' + (i + 8).toString();
		objTemp.ref = 'sZEROSTRING';
		objTemp.type = "output";
		tempString += "<input type='hidden' id='sSTRT_DT_" + i + "' value='"+ prjtWeekSchl[i].sSTRT_DT + "'/>";
		tempString += "<input type='hidden' id='sEND_DT_" + i + "' value='"+ prjtWeekSchl[i].sEND_DT + "'/>";
		
		objColumnsInfo.push(objTemp);
		objTemp = null;
	}
	
	document.getElementById("hiddenColumn").innerHTML = tempString;
	
	objSBGrid.createColumns(objColumnsInfo);

	var tempRow = resultData.length+3;
	var tempCol = 0;
	
	tempCol = prjtWeekSchl.length+8;
	
	for (var irow=2; irow <tempRow; irow++) {
		for (var icol=8; icol <tempCol; icol++) {
			var strtdt 	= "";
			var enddt 	= "";

			strtdt 	= objSBGrid.getTextMatrix(irow,2);
			enddt 	= objSBGrid.getTextMatrix(irow,3);

			var baseStrtDt 	= $("#sSTRT_DT_"+(icol-8)).val();
			var baseEndDt 	= $("#sEND_DT_"+(icol-8)).val();
			
			if (strtdt >= baseStrtDt && enddt <= baseEndDt) {
				objSBGrid.setCellStyle( 'background-color', irow, icol, irow, icol, '#D7908C');
			} else if (strtdt <= baseStrtDt && enddt >= baseEndDt) {
				objSBGrid.setCellStyle( 'background-color', irow, icol, irow, icol, '#D7908C');
			} 
		}
	}

	objSBGrid.setGroupLevelCol(0);
	objSBGrid.setGroupCol(1);
	objSBGrid.setGroup('complete');
	
	objSBGrid.addEventListener("onclick", "fn_SelectListInfo", "","");
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};	

	fn_AjaxSend(sendData, "MG020111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	if ($("#searchDevCmpl:checked").val() == 0)
		fn_InitGrid(result);
	else
		fn_InitGridWeek(result);
};

function fn_ModifyPrjt() {
	var arrMap = new Map();
	var arrlist = new Array(objSBGrid.rows - 2);

	arrMap.put("sPRJT_ID" , $("#searchPrjtID").val());

	for (var i=2; i<objSBGrid.rows; i++) {
		var taskMap = new Map();
		
		taskMap.put("sTASK_ID"     	, objSBGrid.getTextMatrix(i,7));
		taskMap.put("sPROGRESS_RT"  , objSBGrid.getTextMatrix(i,4));
		
		arrlist[i-2] = taskMap;
	}

	arrMap.putMapList("sPRJT_TASK_INFO", arrlist);
	
	var sendData = arrMap.jsonParse();
	fn_AjaxSend(sendData, "MG020132", fn_SelectPrjtInfo, PMS_PROC_INSERT);
};

function fn_SelectListInfo() {
	
	var nClickedRow = objSBGrid.getRow();
	var nClickedCol = objSBGrid.getCol();
	
	if (nClickedRow <= 0 )
		return;
	
	if (nClickedCol == 5) {
		var downloadFile = objSBGrid.getTextMatrix(nClickedRow, 6);
		if (downloadFile == "")
			return;
		
		fn_DownloadFile("MG02", downloadFile);
	}
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
			<jsp:include page="../common/layout_left_mg.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[MG02] WBS</h2>
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
    		                    <ul>
    		                        <li class="name"><span>조회구분</span></li>
    		                        <li><input type="radio" class="radiobox" id="searchDevCmpl" name="searchType" value="0" checked/> 일</li>
    		                        <li><input type="radio" class="radiobox" id="searchDevCmpl" name="searchType" value="1"/> 주</li>
    		                    </ul>
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        <div class="section">
                        <ul class="btnbox right">
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                        	<li class="pr10"><a href="javascript:fn_ModifyPrjt();" class="btn_search imgbtn_black">저장</a></li>
                     	</ul>
                    </div>
				</div><!--//pixbox-->
    		    <div class="freebox">
					<!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="wbsInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
				</div>
				<div id="hiddenColumn">
				</div>
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