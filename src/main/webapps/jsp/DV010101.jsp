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
	fn_InitHeight();
	fn_SelectPrjtInfo();
};

function fn_InitHeight() {
	var initHeightSize = "700";

	var height = window.innerHeight;
	initHeightSize = height - 300;
	if(initHeightSize < 300) {
		initHeightSize = "700";
	}
	
	return initHeightSize;
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
  	var prjtSubSegCnt = result.prjtSubSegCnt;
  	
  	var fronzenCol = 0;
  	
  	if (prjtSubSegCnt.sSEG_SUB_ID == '0') {

	  	strCaptionI += "단계^TASK^TASK^시작일자^종료일자";
	  	strColWidthI += "50,150,150,100,100";
	  	
	  	var i = 0;
	  	for (i=0; i < prjtDaySchl.length; i++) {
	  		strCaption 	+= "^" + prjtDaySchl[i].sPRJT_WEEK;
	  		strCaption2 += "^" + prjtDaySchl[i].sCURR_DD;
	  		strCaption1 += "^" + prjtDaySchl[i].sCURR_YYYY + "." + prjtDaySchl[i].sCURR_MM;
	  		
	  		strColWidth += ",30";
	  	}
	  	
	  	strCaptionT 	= strCaptionI + strCaption1 + "|" + strCaptionI +  strCaption2 + "|" + strCaptionI + strCaption;
	  	strColWidthT 	= strColWidthI + strColWidth + "," + strColWidthI + strColWidth + "," + strColWidthI + strColWidth;
	  	fronzenCol = 5;
  	} else {
  		strCaptionI += "단계^TASK^TASK^TASK^시작일자^종료일자";
	  	strColWidthI += "50,150,150,150,80,80";
	  	
	  	var i = 0;
	  	for (i=0; i < prjtDaySchl.length; i++) {
	  		strCaption 	+= "^" + prjtDaySchl[i].sPRJT_WEEK;
	  		strCaption2 += "^" + prjtDaySchl[i].sCURR_DD;
	  		strCaption1 += "^" + prjtDaySchl[i].sCURR_YYYY + "." + prjtDaySchl[i].sCURR_MM;
	  		
	  		strColWidth += ",30";
	  	}
	  	
	  	strCaptionT 	= strCaptionI + strCaption1 + "|" + strCaptionI +  strCaption2 + "|" + strCaptionI + strCaption;
	  	strColWidthT 	= strColWidthI + strColWidth + "," + strColWidthI + strColWidth + "," + strColWidthI + strColWidth;
	  	fronzenCol = 6;
  	}
  	
  	var initHeightSize = fn_InitHeight();
  	
  	objGridInitInfo = fn_InitSBGrid("wbsInfo", "objSBGrid", strCaptionT, strColWidthT, initHeightSize+"px", "resultData", false, fronzenCol);
  	if(SBGrid.getGrid(objGridInitInfo.strId)){
  		objSBGrid.destroy();
  	}
	objSBGrid = createSBDataGrid(objGridInitInfo);

	if (prjtSubSegCnt.sSEG_SUB_ID == '0') {
		objColumnsInfo = [
							fn_SetSBGridCol("00", "output", "sPRJT_STAGE_NM" , "center", null, false),
							fn_SetSBGridCol("01", "output", "sTASK_NM"       , "left"  , null, false),
							fn_SetSBGridCol("02", "output", "sSEG_NM"        , "left"  , null, false),
							fn_SetSBGridCol("03", "output", "sTASK_STRT_DT"  , "center", "yyyy.mm.dd", false),
							fn_SetSBGridCol("04", "output", "sTASK_END_DT"   , "center", "yyyy.mm.dd", false)
		                 ];
	} else {
		objColumnsInfo = [
							fn_SetSBGridCol("00", "output", "sPRJT_STAGE_NM" , "center", null, false),
							fn_SetSBGridCol("01", "output", "sTASK_NM"       , "left"  , null, false),
							fn_SetSBGridCol("02", "output", "sSEG_NM"        , "left"  , null, false),
							fn_SetSBGridCol("03", "output", "sSEG_SUB_NM"    , "left"  , null, false),
							fn_SetSBGridCol("04", "output", "sTASK_STRT_DT"  , "center", "yyyy.mm.dd", false),
							fn_SetSBGridCol("05", "output", "sTASK_END_DT"   , "center", "yyyy.mm.dd", false)
		                 ];
	}

	var tempString = "";
	for (i=0; i< prjtDaySchl.length; i++) {
		var objTemp = {};
		objTemp.id = 'col' + ( i + 6).toString();
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
	
	if (prjtSubSegCnt.sSEG_SUB_ID == '0')
		tempCol = prjtDaySchl.length+5;
	else
		tempCol = prjtDaySchl.length+6;
	
	for (var irow=3; irow <tempRow; irow++) {
		for (var icol=6; icol <tempCol; icol++) {
			var strtdt 	= "";
			var enddt 	= "";
			if (prjtSubSegCnt.sSEG_SUB_ID == '0') {
				strtdt 	= objSBGrid.getTextMatrix(irow,3);
				enddt 	= objSBGrid.getTextMatrix(irow,4);
			} else {
				strtdt 	= objSBGrid.getTextMatrix(irow,4);
				enddt 	= objSBGrid.getTextMatrix(irow,5);
			}
			var basedt 	= $("#sCURR_DD_"+(icol-6)).val();  
			
			if (strtdt <= basedt && enddt >= basedt) {
				objSBGrid.setCellStyle( 'background-color', irow, icol, irow, icol, '#D7908C');
			}
			if (prjtDaySchl[icol-6].sHDAY_TYPE == '1') {
				objSBGrid.setCellStyle( 'background-color', irow, icol, irow, icol, '#E6E6E6');
			}
		}
	}
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
  	
  	var prjtDaySchl = result.prjtDaySchl;
  	var prjtSubSegCnt = result.prjtSubSegCnt;
  	
  	var fronzenCol = 0;
  	
  	if (prjtSubSegCnt.sSEG_SUB_ID == '0') {

	  	strCaptionI += "단계^TASK^TASK^시작일자^종료일자";
	  	strColWidthI += "50,150,150,80,80";
	  	
	  	var i = 0;
	  	for (i=0; i < prjtDaySchl.length; i++) {
	  		strCaption 	+= "^" + prjtDaySchl[i].sPRJT_WEEK;
	  		strCaption1 += "^" + prjtDaySchl[i].sCURR_YYYY + "." + prjtDaySchl[i].sCURR_MM;
	  		
	  		strColWidth += ",8";
	  	}
	  	
	  	strCaptionT 	= strCaptionI + strCaption1 + "|" + strCaptionI + strCaption;
	  	strColWidthT 	= strColWidthI + strColWidth + "," + strColWidthI + strColWidth;
	  	
	  	fronzenCol = 5;
  	} else {
  		strCaptionI += "단계^TASK^TASK^TASK^시작일자^종료일자";
	  	strColWidthI += "50,150,150,150,100,100";
	  	
	  	var i = 0;
	  	for (i=0; i < prjtDaySchl.length; i++) {
	  		strCaption 	+= "^" + prjtDaySchl[i].sPRJT_WEEK;
	  		strCaption1 += "^" + prjtDaySchl[i].sCURR_YYYY + "." + prjtDaySchl[i].sCURR_MM;
	  		
	  		strColWidth += ",8";
	  	}
	  	
	  	strCaptionT 	= strCaptionI + strCaption1 + "|" + strCaptionI + strCaption;
	  	strColWidthT 	= strColWidthI + strColWidth + "," + strColWidthI + strColWidth;
	  	
	  	fronzenCol = 6;
  	}

	var initHeightSize = fn_InitHeight();
  	
  	objGridInitInfo = fn_InitSBGrid("wbsInfo", "objSBGrid", strCaptionT, strColWidthT, initHeightSize+"px", "resultData", false, fronzenCol);
  	if(SBGrid.getGrid(objGridInitInfo.strId)){
  		objSBGrid.destroy();
  	}
	objSBGrid = createSBDataGrid(objGridInitInfo);

	if (prjtSubSegCnt.sSEG_SUB_ID == '0') {
		objColumnsInfo = [
							fn_SetSBGridCol("00", "output", "sPRJT_STAGE_NM" , "center", null, false),
							fn_SetSBGridCol("01", "output", "sTASK_NM"       , "left"  , null, false),
							fn_SetSBGridCol("02", "output", "sSEG_NM"        , "left"  , null, false),
							fn_SetSBGridCol("03", "output", "sTASK_STRT_DT"  , "center", "yyyy.mm.dd", false),
							fn_SetSBGridCol("04", "output", "sTASK_END_DT"   , "center", "yyyy.mm.dd", false)
		                 ];
	} else {
		objColumnsInfo = [
							fn_SetSBGridCol("00", "output", "sPRJT_STAGE_NM" , "center", null, false),
							fn_SetSBGridCol("01", "output", "sTASK_NM"       , "left"  , null, false),
							fn_SetSBGridCol("02", "output", "sSEG_NM"        , "left"  , null, false),
							fn_SetSBGridCol("03", "output", "sSEG_SUB_NM"    , "left"  , null, false),
							fn_SetSBGridCol("04", "output", "sTASK_STRT_DT"  , "center", "yyyy.mm.dd", false),
							fn_SetSBGridCol("05", "output", "sTASK_END_DT"   , "center", "yyyy.mm.dd", false)
		                 ];
	}

	var tempString = "";
	for (i=0; i< prjtDaySchl.length; i++) {
		var objTemp = {};
		objTemp.id = 'col' + ( i + 6).toString();
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
	
	if (prjtSubSegCnt.sSEG_SUB_ID == '0')
		tempCol = prjtDaySchl.length+5;
	else
		tempCol = prjtDaySchl.length+6;
	
	for (var irow=2; irow <tempRow; irow++) {
		for (var icol=6; icol <tempCol; icol++) {
			var strtdt 	= "";
			var enddt 	= "";
			if (prjtSubSegCnt.sSEG_SUB_ID == '0') {
				strtdt 	= objSBGrid.getTextMatrix(irow,3);
				enddt 	= objSBGrid.getTextMatrix(irow,4);
			} else {
				strtdt 	= objSBGrid.getTextMatrix(irow,4);
				enddt 	= objSBGrid.getTextMatrix(irow,5);
			}
			var basedt 	= $("#sCURR_DD_"+(icol-6)).val();  
			
			if (strtdt <= basedt && enddt >= basedt) {
				objSBGrid.setCellStyle( 'background-color', irow, icol, irow, icol, '#D7908C');
			}
			if (prjtDaySchl[icol-6].sHDAY_TYPE == '1') {
				objSBGrid.setCellStyle( 'background-color', irow, icol, irow, icol, '#E6E6E6');
			}
		}
	}
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "DV010111", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {

	if ($("#searchDevCmpl:checked").val() == 0) {
		fn_InitGrid(result);
	} else {
		fn_InitGridWeek(result);
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
			<jsp:include page="../common/layout_left_dv.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[DV01] WBS</h2>
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
</div><!--//wrap-->
<!--footer-->
<div id="footer">
	<jsp:include page="../common/layout_footer.jsp" flush="true" />
</div><!--//footer-->
</body>
</html>