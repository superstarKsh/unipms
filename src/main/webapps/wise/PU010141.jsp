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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('d B(){f a="R^품질관리명^시작일자^종료일자^점검구분^점검자^대상구분^비고^^";f b="7,l,7,7,7,Q,7,l,7,7";j=S("13","6",a,b,"x","i",c,2);6=X(j);t=[4("w","3","o","8",2,5),4("T","3","k","9",2,5),4("15","3","16","8","m.n.h",5),4("y","3","z","8","m.n.h",5),4("A","3","1a","9",2,5),4("C","3","D","9",2,5),4("E","3","F","9",2,5),4("G","3","H","9",2,5),4("I","3","J","8",2,c),4("K","3","L","8",2,c),4("10","3","M","8",2,c)];6.N(t);6.O("P","p","","");q()};d q(){f a={r:$("#r").e(),k:$("#U").e()};V(a,"W",s,2)};d s(a){i=a.Y;6.Z()};d p(){f a=6.11();12(a<=0)14;g.$("#o").e(6.u(a,0));g.$("#17").e(6.u(a,1));g.18();19.v()};',62,73,'||null|output|fn_SetSBGridCol|false|objSBGrid|100|center|left|||true|function|val|var|opener|dd|resultData|objGridInitInfo|sTITLE|200|yyyy|mm|sQULTY_ID|fn_SelectListInfo|fn_SelectPrjtInfo|sPRJT_ID|fn_SetDataSelectPrjtInfo|objColumnsInfo|getTextMatrix|close|00|400px|03|sEND_DT|04|fn_InitGrid|05|sCNTL_USER_NM|06|sTARGET_TYPE_NM|07|sCONTENTS|08|sCNTL_TYPE|09|sTARGET_TYPE|sCNTL_USER_ID|createColumns|addEventListener|onclick|150|ID|fn_InitSBGrid|01|searchQTNM|fn_AjaxSend|PU010141|createSBDataGrid|qultyInfo|rebuild||getRow|if|prjtQtInfo|return|02|sSTRT_DT|sQULTY_TITLE|fn_SelectInitID|self|sCNTL_TYPE_NM'.split('|'),0,{}))

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div class="popup">
	<h2>품질관리일정</h2>
	<div class="section">
		<div class="search">
			<div class="box">
				<ul>
					<li class="name"><span>품질관리명</span></li>
					<li><input type="text" class="txtinp w300" id="searchQTNM" name="searchQTNM"></li>
				</ul>
			</div>
		</div><!--//search-->
	</div><!--//section-->
	
	<div class="section">
		<ul class="btnbox right">
			<li class="pr10"><a href="javascript:fn_SearchList();" class="btn_search imgbtn_black">조회</a></li>
		</ul>
	</div><!--//section-->
	<div class="section">
        <div id="prjtQtInfo"></div>
    </div><!--//section-->
    <div id="hiddenColumn">
		<input type="hidden" class="inputType" id="sPRJT_ID" name="sPRJT_ID"/>
	</div>
</div>
</body>
</html>