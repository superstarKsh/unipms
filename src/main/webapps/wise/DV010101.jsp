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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('P 1X(){$(\'Y:1W[1V=1U]:Y[1h=1]\').2b("1n",25);19();1H()};P 19(){7 a="1G";7 b=1A.1Y;a=b-1K;B(a<1K){a="1G"}20 a};P 1w(a){7 b="";7 c="";7 d="";7 e="";7 f="";7 g="";7 h="";7 j="";R=a.1J;7 k=a.1L;7 l=a.1O;7 m=0;B(l.M==\'0\'){e+="단계^E^E^시작일자^종료일자";h+="15,F,F,T,T";7 i=0;H(i=0;i<k.D;i++){b+="^"+k[i].X;d+="^"+k[i].1N;c+="^"+k[i].10+"."+k[i].11;g+=",1M"}f=e+c+"|"+e+d+"|"+e+b;j=h+g+","+h+g+","+h+g;m=5}I{e+="단계^E^E^E^시작일자^종료일자";h+="15,F,F,F,V,V";7 i=0;H(i=0;i<k.D;i++){b+="^"+k[i].X;d+="^"+k[i].1N;c+="^"+k[i].10+"."+k[i].11;g+=",1M"}f=e+c+"|"+e+d+"|"+e+b;j=h+g+","+h+g+","+h+g;m=6}7 n=19();Q=1I("1F","z",f,j,n+"1E","R",9,m);B(1u.1p(Q.1o)){z.1k()}z=1j(Q);B(l.M==\'0\'){J=[y("18","x","1a","C",A,9),y("1c","x","1d","G",A,9),y("1f","x","1g","G",A,9),y("1e","x","1b","C","O.L.N",9),y("S","x","16","C","O.L.N",9)]}I{J=[y("18","x","1a","C",A,9),y("1c","x","1d","G",A,9),y("1f","x","1g","G",A,9),y("1e","x","1l","G",A,9),y("S","x","1b","C","O.L.N",9),y("1m","x","16","C","O.L.N",9)]}7 o="";H(i=0;i<k.D;i++){7 p={};p.14=\'1q\'+(i+6).1r();p.1s=\'1t\';p.13="x";o+="<Y 13=\'1v\' 14=\'12"+i+"\' 1h=\'"+k[i].1x+"\'/>";J.1y(p);p=A}1z.1i("1B").1C=o;z.1D(J);7 q=R.D+3;7 r=0;B(l.M==\'0\')r=k.D+5;I r=k.D+6;H(7 s=3;s<q;s++){H(7 t=6;t<r;t++){7 u="";7 v="";B(l.M==\'0\'){u=z.K(s,3);v=z.K(s,4)}I{u=z.K(s,4);v=z.K(s,5)}7 w=$("#12"+(t-6)).U();B(u<=w&&v>=w){z.17(\'Z-W\',s,t,s,t,\'#1P\')}B(k[t-6].1Q==\'1\'){z.17(\'Z-W\',s,t,s,t,\'#1R\')}}}};P 1S(a){7 b="";7 c="";7 d="";7 e="";7 f="";7 g="";7 h="";R=a.1J;7 j=a.1L;7 k=a.1O;7 l=0;B(k.M==\'0\'){d+="단계^E^E^시작일자^종료일자";g+="15,F,F,V,V";7 i=0;H(i=0;i<j.D;i++){b+="^"+j[i].X;c+="^"+j[i].10+"."+j[i].11;f+=",8"}e=d+c+"|"+d+b;h=g+f+","+g+f;l=5}I{d+="단계^E^E^E^시작일자^종료일자";g+="15,F,F,F,T,T";7 i=0;H(i=0;i<j.D;i++){b+="^"+j[i].X;c+="^"+j[i].10+"."+j[i].11;f+=",8"}e=d+c+"|"+d+b;h=g+f+","+g+f;l=6}7 m=19();Q=1I("1F","z",e,h,m+"1E","R",9,l);B(1u.1p(Q.1o)){z.1k()}z=1j(Q);B(k.M==\'0\'){J=[y("18","x","1a","C",A,9),y("1c","x","1d","G",A,9),y("1f","x","1g","G",A,9),y("1e","x","1b","C","O.L.N",9),y("S","x","16","C","O.L.N",9)]}I{J=[y("18","x","1a","C",A,9),y("1c","x","1d","G",A,9),y("1f","x","1g","G",A,9),y("1e","x","1l","G",A,9),y("S","x","1b","C","O.L.N",9),y("1m","x","16","C","O.L.N",9)]}7 n="";H(i=0;i<j.D;i++){7 o={};o.14=\'1q\'+(i+6).1r();o.1s=\'1t\';o.13="x";n+="<Y 13=\'1v\' 14=\'12"+i+"\' 1h=\'"+j[i].1x+"\'/>";J.1y(o);o=A}1z.1i("1B").1C=n;z.1D(J);7 p=R.D+3;7 q=0;B(k.M==\'0\')q=j.D+5;I q=j.D+6;H(7 r=2;r<p;r++){H(7 s=6;s<q;s++){7 t="";7 u="";B(k.M==\'0\'){t=z.K(r,3);u=z.K(r,4)}I{t=z.K(r,4);u=z.K(r,5)}7 v=$("#12"+(s-6)).U();B(t<=v&&u>=v){z.17(\'Z-W\',r,s,r,s,\'#1P\')}B(j[s-6].1Q==\'1\'){z.17(\'Z-W\',r,s,r,s,\'#1R\')}}}};P 1H(){7 a={21:$("#22").U()};23(a,"24",1T,A)};P 1T(a){B($("#26:1n").U()==0){1w(a)}I{1S(a)}};P 27(){1A.28("29.2a","",1Z)};',62,136,'|||||||var||false||||||||||||||||||||||||output|fn_SetSBGridCol|objSBGrid|null|if|center|length|TASK|150|left|for|else|objColumnsInfo|getTextMatrix|mm|sSEG_SUB_ID|dd|yyyy|function|objGridInitInfo|resultData|04|100|val|80|color|sPRJT_WEEK|input|background|sCURR_YYYY|sCURR_MM|sCURR_DD_|type|id|50|sTASK_END_DT|setCellStyle|00|fn_InitHeight|sPRJT_STAGE_NM|sTASK_STRT_DT|01|sTASK_NM|03|02|sSEG_NM|value|getElementById|createSBDataGrid|destroy|sSEG_SUB_NM|05|checked|strId|getGrid|col|toString|ref|sZEROSTRING|SBGrid|hidden|fn_InitGrid|sCURR_DT|push|document|window|hiddenColumn|innerHTML|createColumns|px|wbsInfo|700|fn_SelectPrjtInfo|fn_InitSBGrid|prjtInfo|300|prjtDaySchl|30|sCURR_DD|prjtSubSegCnt|D7908C|sHDAY_TYPE|E6E6E6|fn_InitGridWeek|fn_SetDataSelectPrjtInfo|searchType|name|radio|fn_InitLoad|innerHeight|popupStyle|return|sPRJT_ID|searchPrjtID|fn_AjaxSend|DV010111|true|searchDevCmpl|fn_SearchPrjtInfo|open|PU010101|jsp|prop'.split('|'),0,{}))

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