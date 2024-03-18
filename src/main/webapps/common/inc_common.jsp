<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link type="text/css" rel="stylesheet" href="../css/common.css">
<link type="text/css" rel="stylesheet" href="../SBGrid/kr/co/softbowl/css/Sbgrid_default.css">
<link type="text/css" rel="stylesheet" href="../js/jquery-ui-1.11.1/jquery-ui.css" >
<script type="text/javascript" src="../js/jquery-1.11.1.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../js/json2.js" charset="utf-8"></script>
<script type="text/javascript" src="../SBGrid/kr/co/softbowl/js/Library/json-minified.js"></script> 
<script type="text/javascript" src="../SBGrid/kr/co/softbowl/SBGrid.js"></script>
<script type="text/javascript" src="../js/pms_common.js"></script>
<script type="text/javascript" src="../js/pms_define.js"></script>
<script type="text/javascript" src="../js/pms_protocol.js"></script>
<script type="text/javascript" src="../js/jquery-ui-1.11.1/jquery-ui.js"></script>

<script type="text/javascript">

	var currContextRoot = "<%= request.getContextPath()%>";
	SBGrid.DEF.DOMAIN = currContextRoot + "/SBGrid/";
	
	var strContentType = "application/json;charset=utf-8";

	var objSBGrid;
	var resultData = [];
	var objGridInitInfo;
	var objColumnsInfo;

	var objSBGridDetail;
	var resultDataDetail = [];
	var objGridInitInfoDetail;
	var objColumnsInfoDetail;
		
	var objSBGridStat;
	var resultDataStat = [];
	var objGridInitInfoStat;
	var objColumnsInfoStat;
	
	var objSBGridNext;
	var resultDataNext = [];
	var objGridInitInfoNext;
	var objColumnsInfoNext;
		
	var objSBGridExcel;
	var resultDataExcel = [];
	var objGridInitInfoExcel;
	var objColumnsInfoExcel;

	var paramP = getParameter("p");

	var wagt = window.navigator.userAgent.toLowerCase();
	var brswType = '';
	if (wagt.indexOf("msie") != -1) {
		brswType = '1';
	} else {
		brswType = '0';
	}
	
	var offset=location.href.indexOf(location.host)+location.host.length;
	var UniPath=location.href.substring(offset,location.href.indexOf('/',offset+1));
	
	var offsetUniPath=location.href.substring(0,location.href.indexOf('/',offset+1)).length;
	var domainPath=location.href.substring(offsetUniPath + 1,location.href.indexOf('/',offsetUniPath+1));
	
	var posX = window.screenX+150;
	var posY = window.screenY+100;
	var popupStyle = "toolbar=no,directories=no,scrollbars=yes,resizable=no,status=no,menubar=no,width=520,height=620,top="+posY+",left="+posX;
	
	var userPopupStyle = "toolbar=no,directories=no,scrollbars=yes,resizable=no,status=no,menubar=no,width=1024,height=620,top="+posY+",left="+posX;
	
</script>
