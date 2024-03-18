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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('C 1S(){j a="1j^이름^부서^직급";j b="I,X,X,I,I";V=1p("1t","l",a,b,"1h","U",Q,s);l=1w(V);M=[v("1i","w","1k","E",s,z),v("1u","w","1b","14",s,z),v("1y","w","1E","14",s,z),v("1I","w","1L","E",s,z),v("1U","w","1Y","E",s,Q)];l.1e(M);l.1f("1g","13","","");Y()};C Y(){j a={1b:$("#D").g(),1l:$("#1m").g()};1n(a,"1o",O,s)};C O(a){U=a.1q;l.1r()};C 13(){j a=l.1s();h(a<=0)1v;j b=l.T(a,0);j c=l.T(a,1);j d=1G.6.1J.1K;h(d.k("1N")!=-1||d.k("1P")!=-1||d.k("1Q")!=-1||d.k("1R")!=-1||d.k("23")!=-1||d.k("1T")!=-1){6.$("#S").g(b);6.$("#D").g(c);6.1X(b,c)}i h(d.k("1Z.p")!=-1){6.$("#S").g(b);6.$("#D").g(c)}i h(d.k("N.p")!=-1){j e=o("r");j f=o("N");h(f=="B"){6.l.n(m(e),8,b);6.l.n(m(e),3,c)}i h(f=="A"){6.$("#F").g(b);6.$("#G").g(c)}}i h(d.k("P.p")!=-1){j e=o("r");j f=o("P");h(f=="B"){6.u.n(m(e),9,b);6.u.n(m(e),4,c)}i h(f=="A"){6.$("#F").g(b);6.$("#G").g(c)}}i h(d.k("R.p")!=-1){j e=o("r");j f=o("R");h(f=="B"){6.u.n(m(e),10,b);6.u.n(m(e),5,c)}i h(f=="A"){6.$("#F").g(b);6.$("#G").g(c)}}i h(d.k("L.p")!=-1){j e=o("r");j f=o("L");h(f=="B"){6.l.n(m(e),16,b);6.l.n(m(e),17,c)}i h(f=="A"){6.$("#q").g(b);6.$("#x").g(c)}}i h(d.k("1z.p")!=-1){6.$("#1A").g(b);6.$("#1B").g(c)}i h(d.k("1C.p")!=-1){j e=o("r");6.l.n(m(e),10,b);6.l.n(m(e),5,c)}i h(d.k("1D.p")!=-1){j e=o("r");6.l.n(m(e),22,b);6.l.n(m(e),16,c)}i h(d.k("W.p")!=-1){j f=o("W");j e=o("r");h(f=="1F"){6.l.n(m(e),10,b);6.l.n(m(e),2,c)}i h(f=="1H"){6.l.n(m(e),11,b);6.l.n(m(e),7,c)}i h(f=="y"){6.$("#y").g(b);6.$("#H").g(c)}i h(f=="Z"){6.$("#Z").g(b);6.$("#1M").g(c)}}i h(d.k("12.p")!=-1){j f=o("12");h(f=="1O"){j e=o("r");6.u.n(m(e),7,b);6.u.n(m(e),2,c)}i h(f=="t"){6.$("#t").g(b);6.$("#J").g(c)}}i h(d.k("15.p")!=-1){j f=o("15");h(f=="t"){6.$("#t").g(b);6.$("#J").g(c)}i h(f=="q"){6.$("#q").g(b);6.$("#x").g(c)}}i h(d.k("18.p")!=-1){j f=o("18");h(f=="t"){6.$("#t").g(b);6.$("#J").g(c)}i h(f=="q"){6.$("#q").g(b);6.$("#x").g(c)}}i h(d.k("19.p")!=-1){j f=o("19");6.$("#q").g(b);6.$("#x").g(c);h(f=="y"){6.$("#y").g(b);6.$("#H").g(c)}i h(f=="1a"){6.$("#1a").g(b);6.$("#1V").g(c)}}i h(d.k("1W.p")!=-1){6.$("#K").g(b);6.$("#1c").g(c)}i h(d.k("1d.p")!=-1){j f=o("1d");h(f=="K"){6.$("#K").g(b);6.$("#1c").g(c)}i h(f=="q"){6.$("#q").g(b);6.$("#x").g(c)}}i h(d.k("20.p")!=-1){6.$("#y").g(b);6.$("#H").g(c)}i{}21.1x()};',62,128,'||||||opener||||||||||val|if|else|var|indexOf|objSBGrid|parseInt|setTextMatrix|getParameter|jsp|sDEV_USER_ID|nSelRow|null|sTEST_USER_ID|objSBGridDetail|fn_SetSBGridCol|output|sDEV_USER_NM|sREG_USER_ID|false|sTEXT_INFO|sGRID_INFO|function|searchUserNM|center|sCORP_MNG_ID|sCORP_MNG_NM|sREG_USER_NM|100|sTEST_USER_NM|sCNTL_USER_ID|DV030101|objColumnsInfo|DV020101|fn_SetDataSelectPrjtInfo|DV020102|true|DV020103|searchUserID|getTextMatrix|resultData|objGridInitInfo|TS010101|150|fn_SelectPrjtInfo|sCNFM_USER_ID|||TS010201|fn_SelectListInfo|left|TS010302|||TS020102|CF030102|sCHRG_USER_ID|sUSER_NM|sCNTL_USER_NM|QT020101|createColumns|addEventListener|onclick|400px|00|ID|sUSER_ID|sPRJT_ID|searchPrjtID|fn_AjaxSend|PU010112|fn_InitSBGrid|userList|rebuild|getRow|listInfo|01|return|createSBDataGrid|close|02|DV060101|sMAKE_USER_ID|sMAKE_USER_NM|DV021101|DV031101|sBIZ_QUARTER|sREG_USER_ID_GRID|window|sCNFM_USER_ID_GRID|03|document|URL|sUSER_PSTN_NM|sCNFM_USER_NM|AD020111|sTEST_USER_ID_GRID|AD020121|AD020131|AD020141|fn_InitGrid|AD020161|04|sCHRG_USER_NM|QT010101|fn_SearchSessionCreate|sUSER_PSTN|AD020101|NT010102|self||AD020151'.split('|'),0,{}))

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
			<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();"  class="btn_search imgbtn_black">조회</a></li>
		</ul>
	</div><!--//section-->
	<div class="section">
        <div id="listInfo"></div>
    </div><!--//section-->
</div>
</body>
</html>