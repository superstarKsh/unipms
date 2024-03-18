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
	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");
	
	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('4 F(){2 a={l:$("#o").6()};z(a,"17",j,5)};4 j(c){2 d=v("w");2 e=\'<7 i="">선 택</7>\';$.13(c.12,4(a,b){e=e+\'<7 i="\'+b.Y+\'">\'+b.U+\'</7>\';$("#8").T().N(e)});$("#8").6(d);r()};4 r(){2 a="s M^s 명^업무내용";2 b="15%,I%,G%";x=C("B","3",a,b,"W","y",D,5);3=E(x);u=[g("H","f","J","K",5,9),g("L","f","t","q",5,9),g("O","f","P","q",5,9)];3.Q(u);3.R("S","p","","");n()};4 n(){2 a={l:$("#o").6(),w:$("#8 7:V").6(),t:$("#A").6()};z(a,"X",m,5)};4 m(a){y=a.Z;3.10()};4 p(){2 a=3.11();k(a<=1)14;2 b=16.h.18.19;2 c=3.1a(a,0);k(b.1b("1c.1d")!=-1){2 d=v("1e");h.3.1f(1g(d),1,c)}1h.1i()};',62,81,'||var|objSBGrid|function|null|val|option|searchPrjtStage|false||||||output|fn_SetSBGridCol|opener|value|fn_SetDataInitLoad|if|sPRJT_ID|fn_SetDataSelectPrjtInfo|fn_SelectPrjtInfo|searchPrjtID|fn_SelectListInfo|left|fn_InitGrid|TASK|sTASK_NM|objColumnsInfo|getParameter|sPRJT_STAGE|objGridInitInfo|resultData|fn_AjaxSend|searchTaskNm|listInfo|fn_InitSBGrid|true|createSBDataGrid|fn_InitLoad|50|00|35|sTASK_ID|center|01|ID|append|02|sTASK_DESC|createColumns|addEventListener|onclick|empty|sCODE_NM|selected|400px|PU010131|sCODE|taskInfo|rebuild|getRow|prjtStage|each|return||window|PU010130|document|URL|getTextMatrix|indexOf|DV050101|jsp|nSelRow|setTextMatrix|parseInt|self|close'.split('|'),0,{}))

</script>
</head>

<body onload="fn_Init()"  oncontextmenu="return false">
<div class="popup">
	<h2>TASK 조회</h2>
	<div class="section">
		<div class="search">
			<div class="box">
				<ul>
					<li class="name"><span>프로젝트ID</span></li>
					<li><input type="text" class="txtinp w100" id="searchPrjtID" name="searchPrjtID" readOnly></li>
					<li><input type="text" class="txtinp w200" id="searchPrjtNM" name="searchPrjtNM" readOnly></li>
				</ul>
				<ul>
					<li class="name"><span>진행단계</span></li>
					<li>
						<select class="selectbox" name="selectbox" id="searchPrjtStage" name="searchPrjtStage">
						</select>
					</li>
				</ul>
				<ul>
					<li class="name"><span>TASK 명</span></li>
					<li><input type="text" class="txtinp w300" id="searchTaskNm" name="searchTaskNm"></li>
				</ul>
			</div>
		</div><!--//search-->
	</div><!--//section-->
	
	<div class="section">
		<ul class="btnbox right">
			<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
		</ul>
	</div><!--//section-->
	
	<div class="section">
        <div id="listInfo"></div>
    </div><!--//section-->
</div>
</body>
</html>