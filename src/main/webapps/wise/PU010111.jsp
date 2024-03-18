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

	fn_InitGrid();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('p G(){7 a="1e^이름^부서^직급";7 b="s,E,E,s,s";D=M("N","5",a,b,"1a","A",t,g);5=Q(D);w=[i("1d","h","I","q",g,o),i("P","h","u","F",g,o),i("S","h","U","F",g,o),i("X","h","Z","q",g,o),i("10","h","11","q",g,t)];5.12(w);5.14("18","B","","");y()};p y(){7 a={u:$("#k").1f()};1i(a,"H",v,g)};p v(a){A=a.J;5.K()};p B(){7 a=5.L();f(a<=0)O;7 b=5.n(a,0);7 c=5.n(a,1);7 d=T.2.V.W;f(d.9("Y")!=-1){2.x.6=b;2.z.6=c}j f(d.9("13")!=-1){2.r.6=b;2.k.6=c}j f(d.9("15")!=-1){2.r.6=b;2.k.6=c}j f(d.9("16")!=-1){2.x.6=b;2.z.6=c}j f(d.9("17.C")!=-1||d.9("19.C")!=-1){7 e=1b("1c");2.5.m(l(e),0,b);2.5.m(l(e),1,c);2.5.m(l(e),8,5.n(a,4));2.5.m(l(e),3,5.n(a,3))}j f(d.9("1g")!=-1){2.r.6=b;2.k.6=c}1h.R()};',62,81,'||opener|||objSBGrid|value|var||indexOf||||||if|null|output|fn_SetSBGridCol|else|searchUserNM|parseInt|setTextMatrix|getTextMatrix|false|function|center|searchUserID|100|true|sUSER_NM|fn_SetDataSelectPrjtInfo|objColumnsInfo|sPRJT_MANG_ID|fn_SelectPrjtInfo|sPRJT_MANG_NM|resultData|fn_SelectListInfo|jsp|objGridInitInfo|150|left|fn_InitGrid|PU010111|sUSER_ID|userList|rebuild|getRow|fn_InitSBGrid|listInfo|return|01|createSBDataGrid|close|02|window|sBIZ_QUARTER|document|URL|03|AD010101|sUSER_PSTN_NM|04|sUSER_PSTN|createColumns|AD020101|addEventListener|AD020111|PJ010101|PJ020101|onclick|PJ020201|400px|getParameter|nSelRow|00|ID|val|WSAD020101|self|fn_AjaxSend'.split('|'),0,{}))

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div class="popup">
	<div class="section" style="display:none">
    	 <div class="search">
    		   <div class="box">
    		      <ul>
    		         <li class="name"><span>프로젝트ID</span></li>
    		         <li><input type="text" class="txtinp w100" id="searchPrjtID" name="searchPrjtID" readOnly/></li>
    		         <li><input type="text" class="txtinp w200" id="searchPrjtNM"  name="searchPrjtNM" readOnly/></li>
    		         <li><a href="javascript:fn_SearchPrjtInfo();" class="btn01">검색</a></li>
    		      </ul>
    		   </div>
    	</div><!--//search-->
    </div><!--//section-->
	<h2>사용자조회</h2>
	<div class="section">
		<div class="search">
			<div class="box">
				<ul>
					<li class="name"><span>이름</span></li>
					<li><input type="text" class="txtinp w300" id="searchUserNM" name="searchUserNM"></li>
				</ul>
			</div>
		</div><!--//search-->
	</div><!--//section-->
	<div class="section">
		<ul class="btnbox right">
			<li class="pr10"><a href="#" class="btn_search imgbtn_black">조회</a></li>
		</ul>
	</div><!--//section-->
	<div class="section">
        <div id="listInfo"></div>
    </div><!--//section-->
</div>
</body>
</html>