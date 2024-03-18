<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- start : Html Header -->
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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('4 X(){$("#r").o();1 a={y:$("#x").k()};u(a,"1F",I,e)};4 I(c){1 d=\'<f n="">선 택</f>\';$.F(c.1A,4(a,b){d=d+\'<f n="\'+b.m+\'">\'+b.m+\'</f>\';$("#r").o().Q(d)});B()};4 1z(){$("#A").o();1 a={y:$("#x").k(),m:$("#r f:v").k()};u(a,"1u",K,e)};4 K(c){1 d=\'<f n="">선 택</f>\';$.F(c.1r,4(a,b){d=d+\'<f n="\'+b.w+b.t+\'">\'+R(b.w,".")+" ~ "+R(b.t,".")+\'</f>\';$("#A").o().Q(d)})};4 B(){1 a="주차^주차^시작일자^종료일자^1q^첨부파일^^";1 b="15%,1o%,15%,15%,15%,10%,10%,10%";E=1l("G","9",a,b,"1i","J",s,e);9=1h(E);M=[g("1g","i","1e","h",e,j),g("1c","i","Z","h",e,j),g("1p","i","w","h","P.V.U",j),g("11","i","t","h","P.V.U",j),g("12","i","13","h",e,j),g("14","16","17","h",e,j),g("18","i","19","h",e,s),g("1a","i","m","h",e,s)];9.1b(M);9.T("1d","z","","");9.T("1f","O","","");L()};4 L(){1 a=$("#A f:v").k();1 b="";l(a==e){b=""}1j{b=a.1k(0,8)}1 c={y:$("#x").k(),m:$("#r f:v").k(),1m:b};u(c,"1n",C,e)};4 C(a){J=a.G;9.W()};4 z(){1 a=9.S();l(a<=0)N;1 b="";b+="1s=Y";b+="&";b+="1t="+9.q(a,2);b+="&";b+="1v="+9.q(a,3);b+="&";b+="1w="+9.q(a,7);1x(b,"1y.p","H.p",e)};4 O(){1 a=9.S();1 b=9.1B();l(b==5){1 c=9.q(a,6);l(c=="")N;1C("1D",c)}l(b==0){z()}};4 1E(){D.1G="H.p"};4 1H(){D.1I("1J.p","",1K)};',62,109,'|var|||function|||||objSBGrid|||||null|option|fn_SetSBGridCol|center|output|false|val|if|sPRJT_YEAR|value|empty|jsp|getTextMatrix|searchPrjtRptYear|true|sEND_DT|fn_AjaxSend|selected|sSTRT_DT|searchPrjtID|sPRJT_ID|fn_SelectListInfo|searchPrjtRptDt|fn_InitGrid|fn_SetDataSelectPrjtInfo|window|objGridInitInfo|each|prjtWeekRptInfo|CF010102|fn_SetDataInitLoad|resultData|fn_SetDataSelectPrjtYear|fn_SelectPrjtInfo|objColumnsInfo|return|fn_GridFileDown|yyyy|append|fn_SetDateType|getRow|addEventListener|dd|mm|rebuild|fn_InitLoad||sWEEK_ORDER||03|04|sPRJT_MANG_NM|05||imageF|sIMG_URL|06|sFILE_NM|07|createColumns|01|ondblclick|sPRJT_WEEK|onclick|00|createSBDataGrid|500px|else|substring|fn_InitSBGrid|sCURR_DT|CF010111|30|02|PM|prjtWeekInfo|sSEARCH_YN|sSEARCH_RPRT_STRT_DT|CF010182|sSEARCH_RPRT_END_DT|sSEARCH_RPRT_YEAR|fn_AjaxSendSesUrl|pms_session_cf0101|fn_SelectPrjtYear|prjtYearInfo|getCol|fn_DownloadFile|CF01|fn_InsertPrjt|CF010181|location|fn_SearchPrjtInfo|open|PU010101|popupStyle'.split('|'),0,{}))

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
			<jsp:include page="../common/layout_left_cf.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[CF01] 주간보고</h2>
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
    		                        <li class="name"><span>주</span></li>
    		                        <li><select class="selectbox w100" id="searchPrjtRptYear" name="searchPrjtRptYear" onchange="javascript:fn_SelectPrjtYear()"></select></li>
    		                        <li><select class="selectbox w300" id="searchPrjtRptDt" name="searchPrjtRptDt"></select></li>
    		                    </ul>
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        <div class="section">
                        <ul class="btnbox right">
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                     	</ul>
                    </div>
    		        <!-- END : search section -->
					<!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtWeekRptInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		    
	    		    <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">등록</a></li>
    		            </ul>
    		        </div><!--//section-->
    		    
    		    </div><!--//pixbox-->
    		    <div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sSEQ_NO" name="sSEQ_NO"/>
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