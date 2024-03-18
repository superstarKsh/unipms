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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('B 2e(){$(\'F:2x[2o=2n]:F[Q=1]\').2l("1h",H);15();17()};9 J="1f";B 17(){9 a=1j.2k;J=a-1K;z(J<1K){J="1f"}};B 1T(a){9 b="";9 c="";9 d="";9 e="";9 f="";9 g="";9 h="";9 j="";K=a.1S;9 k=a.2h;e+="1X^1Y^시작일자^종료일자^완료율(%)^완료율(%)^^";h+="0,1b,C,C,1d,14,C,C";9 i=0;A(i=0;i<k.D;i++){b+="^"+k[i].1r;d+="^"+k[i].2f;c+="^"+k[i].1t+"."+k[i].1u;g+=",14"}f=e+c+"|"+e+d+"|"+e+b;j=h+g+","+h+g+","+h+g;M=1A("1B","u",f,j,J+"1L","K",H,6);z(1N.1O(M.1P)){u.1Q()}u=1R(M);L=[v("1U","x","1W","E",w,y),v("18","x","19","E",w,y),v("1a","x","10","N","T.S.R",y),v("1g","x","12","N","T.S.R",y),v("1i","F","13","1k",w,y),v("1l","1m","1c","N",w,y),v("1o","x","1p","E",w,H),v("1q","x","16","E",w,H)];9 l="";A(i=0;i<k.D;i++){9 m={};m.O=\'1v\'+(i+8).1x();m.1y=\'1z\';m.P="x";l+="<F P=\'11\' O=\'1C"+i+"\' Q=\'"+k[i].2d+"\'/>";L.1E(m);m=w}1F.1G("1H").1I=l;u.1J(L);9 n=K.D+3;9 o=0;o=k.D+8;A(9 p=3;p<n;p++){A(9 q=8;q<o;q++){9 r="";9 s="";r=u.G(p,2);s=u.G(p,3);9 t=$("#1C"+(q-8)).I();z(r<=t&&s>=t){u.U(\'V-W\',p,q,p,q,\'#Z\')}z(k[q-8].2c==\'1\'){u.U(\'V-W\',p,q,p,q,\'#29\')}}}u.21(0);u.22(1);u.23(\'24\')};B 25(a){9 b="";9 c="";9 d="";9 e="";9 f="";9 g="";9 h="";K=a.1S;9 j=a.2p;d+="1X^1Y^시작일자^종료일자^완료율(%)^완료율(%)^^";g+="0,1b,C,C,1d,14,C,C";9 i=0;A(i=0;i<j.D;i++){b+="^"+j[i].1r;c+="^"+j[i].1t+"."+j[i].1u;f+=",28"}e=d+c+"|"+d+b;h=g+f+","+g+f;M=1A("1B","u",e,h,J+"1L","K",H,6);z(1N.1O(M.1P)){u.1Q()}u=1R(M);L=[v("1U","x","1W","E",w,y),v("18","x","19","E",w,y),v("1a","x","10","N","T.S.R",y),v("1g","x","12","N","T.S.R",y),v("1i","F","13","1k",w,y),v("1l","1m","1c","N",w,y),v("1o","x","1p","E",w,H),v("1q","x","16","E",w,H)];9 k="";A(i=0;i<j.D;i++){9 l={};l.O=\'1v\'+(i+8).1x();l.1y=\'1z\';l.P="x";k+="<F P=\'11\' O=\'27"+i+"\' Q=\'"+j[i].10+"\'/>";k+="<F P=\'11\' O=\'26"+i+"\' Q=\'"+j[i].12+"\'/>";L.1E(l);l=w}1F.1G("1H").1I=k;u.1J(L);9 m=K.D+3;9 n=0;n=j.D+8;A(9 o=2;o<m;o++){A(9 p=8;p<n;p++){9 q="";9 r="";q=u.G(o,2);r=u.G(o,3);9 s=$("#27"+(p-8)).I();9 t=$("#26"+(p-8)).I();z(q>=s&&r<=t){u.U(\'V-W\',o,p,o,p,\'#Z\')}20 z(q<=s&&r>=t){u.U(\'V-W\',o,p,o,p,\'#Z\')}}}u.21(0);u.22(1);u.23(\'24\');u.2a("2b","1Z","","")};B 15(){9 a={1D:$("#1n").I()};1s(a,"2g",1V,w)};B 1V(a){z($("#2i:1h").I()==0)1T(a);20 25(a)};B 2j(){9 a=Y 1e();9 b=Y 2m(u.1w-2);a.X("1D",$("#1n").I());A(9 i=2;i<u.1w;i++){9 c=Y 1e();c.X("16",u.G(i,7));c.X("13",u.G(i,4));b[i-2]=c}a.2q("2r",b);9 d=a.2s();1s(d,"2t",15,2u)};B 1Z(){9 a=u.2v();9 b=u.2w();z(a<=0)1M;z(b==5){9 c=u.G(a,6);z(c=="")1M;2y("2z",c)}};B 2A(){1j.2B("2C.2D","",2E)};',62,165,'|||||||||var|||||||||||||||||||||objSBGrid|fn_SetSBGridCol|null|output|false|if|for|function|100|length|left|input|getTextMatrix|true|val|initHeightSize|resultData|objColumnsInfo|objGridInitInfo|center|id|type|value|dd|mm|yyyy|setCellStyle|background|color|put|new|D7908C|sSTRT_DT|hidden|sEND_DT|sPROGRESS_RT|30|fn_SelectPrjtInfo|sTASK_ID|fn_InitHeight|01|sTASK_NM|02|250|sIMG_URL|80|Map|700|03|checked|04|window|right|05|imageF|searchPrjtID|06|sFILE_NM|07|sPRJT_WEEK|fn_AjaxSend|sCURR_YYYY|sCURR_MM|col|rows|toString|ref|sZEROSTRING|fn_InitSBGrid|wbsInfo|sCURR_DD_|sPRJT_ID|push|document|getElementById|hiddenColumn|innerHTML|createColumns|300|px|return|SBGrid|getGrid|strId|destroy|createSBDataGrid|prjtInfo|fn_InitGrid|00|fn_SetDataSelectPrjtInfo|sTASK_LEVEL|TASK_ID|TASK|fn_SelectListInfo|else|setGroupLevelCol|setGroupCol|setGroup|complete|fn_InitGridWeek|sEND_DT_|sSTRT_DT_|45|E6E6E6|addEventListener|onclick|sHDAY_TYPE|sCURR_DT|fn_InitLoad|sCURR_DD|MG020111|prjtDaySchl|searchDevCmpl|fn_ModifyPrjt|innerHeight|prop|Array|searchType|name|prjtWeekSchl|putMapList|sPRJT_TASK_INFO|jsonParse|MG020132|PMS_PROC_INSERT|getRow|getCol|radio|fn_DownloadFile|MG02|fn_SearchPrjtInfo|open|PU010101|jsp|popupStyle'.split('|'),0,{}))

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
			<jsp:include page="../common/layout_left_mg.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[MG02] WBS</h2>
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
                        	<li class="pr10"><a href="javascript:fn_ModifyPrjt();" class="btn_search imgbtn_black">저장</a></li>
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