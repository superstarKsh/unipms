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
	$("#sPRJT_ID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");

	fn_InitGrid();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('p P(){o a="프로젝트명^시작일자^종료일자^1m^z^m^n^y^x^q^v^u^t^s^w^r^C";o b="O,k,k,k,k^k^k^k^k^k^k^k^k^k^k^k^k";F=1k("1j","e",a,b,"1h","E",l,f);e=1g(F);D=[h("1f","g","A","1b",f,B),h("17","g","m","j","I.J.K",B),h("Z","g","n","j","I.J.K",B),h("Y","g","N","j",f,l),h("U","g","z","j",f,l),h("T","g","m","j",f,l),h("S","g","n","j",f,l),h("R","g","y","j",f,l),h("Q","g","x","j",f,l),h("1l","g","q","j",f,l),h("10","g","v","j",f,l),h("11","g","u","j",f,l),h("12","g","t","j",f,l),h("13","g","s","j",f,l),h("14","g","w","j",f,l),h("15","g","r","j",f,l),h("16","g","C","j",f,l)];e.V(D);e.W("X","M","","");L()};p L(){o a={A:$("#H").18()};19(a,"1a",G,f)};p G(a){E=a.1c;e.1d()};p M(){o a=e.1e();1.2.c("1i").d=e.i(a,4);1.2.c("H").d=e.i(a,0);1.2.c("z").d=e.i(a,4);1.2.c("A").d=e.i(a,0);1.2.c("N").d=e.i(a,3);1.2.c("1n").d="";1.2.c("1o").d="";1.2.c("1p").d="";1.2.c("1q").d="";1.2.c("1r").d="";1.2.c("1s").d="";1.2.c("1t").d="";1.2.c("m").d=e.i(a,5);1.2.c("n").d=e.i(a,6);1.2.c("1u").d="";1.2.c("1v").d="";1.2.c("1w").d="";1.2.c("1x").d="";1.2.c("1y").d="";1.2.c("1z").d="";1.2.c("1A").d="";1.2.c("1B").d="";1.2.c("1C").d="";1.2.c("y").d=e.i(a,7);1.2.c("x").d=e.i(a,8);1.2.c("q").d=e.i(a,9);1.2.c("v").d=e.i(a,10);1.2.c("u").d=e.i(a,11);1.2.c("t").d=e.i(a,12);1.2.c("s").d=e.i(a,13);1.2.c("w").d=e.i(a,14);1.2.c("r").d=e.i(a,15);1.2.c("C").d=e.i(a,16);1D.1E()};',62,103,'|opener|document||||||||||getElementById|value|objSBGrid|null|output|fn_SetSBGridCol|getTextMatrix|center|100|true|sPRJT_STRT_DT|sPRJT_END_DT|var|function|sCONT_DT|sFIXD_AMT|sESTI_ED_DT|sLIVE_ED_DT|sACTIVE_TYP|sCONT_TYP|sOUTSRC_AMT|sCONT_AMT|sCONT_NO|sPRJT_ID|sPRJT_NM|false|sCIRC_AMT|objColumnsInfo|resultData|objGridInitInfo|fn_SetDataSelectPrjtInfo|searchPrjtNM|yyyy|mm|dd|fn_SelectPrjtInfo|fn_SelectListInfo|sPRJT_MANG_NM|280|fn_InitGrid|08|07|06|05|04|createColumns|addEventListener|onclick|03|02||||||||01|val|fn_AjaxSend|WSPU010101|left|prjtInfo|rebuild|getRow|00|createSBDataGrid|400px|searchPrjtID|prjtListInfo|fn_InitSBGrid|09|PM|sPRJT_MANG_ID|sBIZ_AMOUNT|sMAN_MONTH|sCUS_NM|sCUS_CD|sMAIN_BIZ_PART_NM|sMAIN_BIZ_PART_CD|sDEV_METHOD|sPRGM_LANG|sSERVER_TYPE|sOS_TYPE|sUSE_TOOL|sDBMS_TYPE|sPRJT_DISC|sETC_DISC|sETC_TYPE|self|close'.split('|'),0,{}))

</script>
</head>

<body onload="fn_Init()"  oncontextmenu="return false">
<div class="popup">

	<h2>프로젝트현황조회</h2>
	<div class="section">
		<div class="search">
			<div class="box">
				<ul>
					<li class="name"><span>프로젝트명</span></li>
					<li><input type="text" class="txtinp w300" id="searchPrjtNM" name="searchPrjtNM"></li>
				</ul>
			</div>
		</div><!--//search-->
	</div><!--//section-->
	
	<div class="section">
		<ul class="btnbox right">
			<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();"  class="btn_search imgbtn_black">조회</a></li>
		</ul>
	</div><!--//section-->
	
	<div class="section">
        <div id="prjtListInfo"></div>
    </div><!--//section-->
</div>
</body>
</html>