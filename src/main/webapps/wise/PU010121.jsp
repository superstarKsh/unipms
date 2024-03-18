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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('9 C(){u()};9 u(){7 a="14^회사명^전화번호";7 b="15%,Z%,Y%";z=X("W","2",a,b,"V","r",U,e);2=T(z);w=[k("S","j","n","o",e,i),k("B","j","h","Q",e,i),k("P","j","M","o",e,i)];2.J(w);2.I("E","y","","");m()};9 m(){7 a={h:$("#A").4()};R(a,"D",x,e)};9 x(a){r=a.F;2.G()};9 y(){7 a=2.H();6(a<=0)K;7 b=L.3.N.O;6(b.d("s")!=-1){7 c=v("s");6(c=="f"){3.$("#q").4(2.5(a,0));3.$("#f").4(2.5(a,1))}8 6(c=="g"){3.$("#t").4(2.5(a,0));3.$("#g").4(2.5(a,1))}}8 6(b.d("10")!=-1){3.$("#n").4(2.5(a,0));3.$("#h").4(2.5(a,1))}8 6(b.d("11.p")!=-1||b.d("12.p")!=-1){3.$("#13").4(2.5(a,0));3.$("#A").4(2.5(a,1))}8 6(b.d("l")!=-1){7 c=v("l");6(c=="f"){3.$("#q").4(2.5(a,0));3.$("#f").4(2.5(a,1))}8 6(c=="g"){3.$("#t").4(2.5(a,0));3.$("#g").4(2.5(a,1))}}8{}16.17()};',62,70,'||objSBGrid|opener|val|getTextMatrix|if|var|else|function||||indexOf|null|sCUS_NM|sMAIN_BIZ_PART_NM|sCOOP_NM|false|output|fn_SetSBGridCol|PJ010101|fn_SelectPrjtInfo|sCOOP_ID|center|jsp|sCUS_CD|resultData|AD010101|sMAIN_BIZ_PART_CD|fn_InitGrid|getParameter|objColumnsInfo|fn_SetDataSelectPrjtInfo|fn_SelectListInfo|objGridInitInfo|searchCoopNM|01|fn_Init|PU010121|onclick|corpList|rebuild|getRow|addEventListener|createColumns|return|window|sPHONE_NUM|document|URL|02|left|fn_AjaxSend|00|createSBDataGrid|true|400px|listInfo|fn_InitSBGrid|20|65|AD020111|AD030101|AD030102|searchCoopID|ID||self|close'.split('|'),0,{}))

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div class="popup">
	<h2>협력업체정보</h2>
	<div class="section">
		<div class="search">
			<div class="box">
				<ul>
					<li class="name"><span>업체명</span></li>
					<li><input type="text" class="txtinp w300" id="searchCoopNM" name="searchCoopNM"></li>
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
        <div id="listInfo"></div>
    </div><!--//section-->
</div>
</body>
</html>