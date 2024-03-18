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
	$("#sPRJT_ID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	fn_InitGrid();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('g K(){e a="프로젝트명^진행단계^시작일자^종료일자^E^m^o^p^j";e b="W,f,n,n,n,f,f,f,f";B=11("1c","2",a,b,"R","A",i,3);2=1a(B);w=[4("Q","9","q","T",3,h),4("Z","9","10","c",3,h),4("15","9","16","c","r.x.s",h),4("F","9","G","c","r.x.s",h),4("H","9","I","c",3,h),4("J","9","m","c",3,i),4("1l","9","o","c",3,i),4("L","9","p","c",3,i),4("M","9","j","c",3,i)];2.N(w);2.O("P","t","","");u()};g u(){e a={q:$("#v").l()};U(a,"V",D,3)};g D(a){A=a.X;2.Y()};g t(){e a=2.y();z(a<=0)12;e b="";b+="13=14";b+="&";b+="m="+2.d(a,5);b+="&";b+="q="+2.d(a,0);b+="&";b+="o="+2.d(a,6);b+="&";b+="p="+2.d(a,7);b+="&";b+="j="+2.d(a,8);17(b,"18.19",3,C)};g C(){e a=2.y();e b=1b.k.1d.1e;z(b.1f("1g")!=-1){1h()}1i{k.$("#1j").l(2.d(a,5));k.$("#v").l(2.d(a,0))}1k.S()};',62,84,'||objSBGrid|null|fn_SetSBGridCol|||||output|||center|getTextMatrix|var|80|function|false|true|sTEST_STAGE|opener|val|sPRJT_ID|100|sCURR_STAGE|sDEV_STAGE|sPRJT_NM|yyyy|dd|fn_SelectListInfo|fn_SelectPrjtInfo|searchPrjtNM|objColumnsInfo|mm|getRow|if|resultData|objGridInitInfo|fn_InputPrjtInfoGrid|fn_SetDataSelectPrjtInfo|PM|03|sPRJT_END_DT|04|sPRJT_MANG_NM|05|fn_InitGrid|07|08|createColumns|addEventListener|onclick|00|400px|close|left|fn_AjaxSend|PU010101|200|prjtInfo|rebuild|01|sCURR_STAGE_NM|fn_InitSBGrid|return|sPARAM|PRJTSEL|02|sPRJT_STRT_DT|fn_AjaxSendSesUrl|pms_common_session|jsp|createSBDataGrid|window|prjtListInfo|document|URL|indexOf|AD020111|fn_Init_Clear|else|searchPrjtID|self|06'.split('|'),0,{}))

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
    <div id="hiddenColumn">
		<input type="hidden" class="inputType" id="sPRJT_ID" name="sPRJT_ID"/>
	</div>
</div>
</body>
</html>