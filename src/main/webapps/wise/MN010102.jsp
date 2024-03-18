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
	$("#sUSER_ID").val("<%=(String) session.getAttribute("sUSER_ID")%>");
	
	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('m r;m T=[];m 1n;m 1u;m t;m X=[];m 1i;m 1j;q 2s(){22()};q 22(){m a="프로젝트R^프로젝트명^진행단계^시작일자^종료일자^진행율(%)^21^고객사^주사업자^H^y^z^1o^1Z";m b="10%,2l%,10%,12%,12%,15%,10%,15%,15%,10%,10%,10%,10%,10%";1Y=1k("1m","s",a,b,"1W","1p",p,h);s=1x(1Y);1V=[j("19","k","I","l",h,p),j("U","k","B","x",h,o),j("Q","k","2x","l",h,o),j("1s","k","2J","l","E.C.D",o),j("1y","k","2H","l","E.C.D",o),j("1A","k","2K","l",h,o),j("1B","k","1U","l",h,o),j("1D","k","2y","x",h,o),j("1E","k","2C","x",h,o),j("V","k","H","l",h,p),j("10","k","y","l",h,p),j("11","k","z","l",h,p),j("12","k","1o","l",h,p),j("13","k","1Z","l",h,p)];s.Z(1V);s.F("1a","1b","","");s.F("1c","1F","","");a="프로젝트R^프로젝트명^프로젝트 주^시작일자^종료일자^21^첨부파일^S^1S^1g^1h^y^z";b="10%,2q%,10%,15%,15%,15%,10%,10%,10%,10%,10%,10%";1n=1k("1w","r",a,b,"2t","T",p,h);r=1x(1n);1u=[j("19","k","I","l",h,p),j("U","k","B","x",h,o),j("Q","k","2u","l",h,o),j("1s","k","2v","l","E.C.D",o),j("1y","k","2w","l","E.C.D",o),j("1A","k","1U","l",h,o),j("1B","1R","1Q","l",h,o),j("1D","k","S","x",h,p),j("1E","k","1S","l",h,p),j("V","k","1g","l",h,p),j("10","k","1h","l",h,p),j("11","k","y","l",h,p),j("12","k","z","l",h,p)];r.Z(1u);r.F("1a","1l","","");r.F("1c","1M","","");a="프로젝트R^프로젝트명^이슈 2D^등록일자^등록자^담당자^구분^이슈중요도^진행상태^조치예정일자^완료일자^첨부파일^2F^2G^S^이슈R^1^2^3";b="10%,30%,25%,12%,10%,10%,10%,10%,10%,12%,12%,10%,10%,10%,10%,10%,10%,10%,10%";1i=1k("2X","t",a,b,"1W","X",p,h);t=1x(1i);1j=[j("19","k","I","l",h,p),j("U","k","B","x",h,o),j("Q","k","38","x",h,o),j("1s","k","3b","l","E.C.D",o),j("1y","k","3c","l",h,o),j("1A","k","2e","l",h,o),j("1B","k","2h","l",h,o),j("1D","k","2j","x",h,o),j("1E","k","2k","l",h,o),j("V","k","3e","l","E.C.D",o),j("10","k","2m","l","E.C.D",o),j("11","1R","1Q","l",h,o),j("12","k","1h","l",h,p),j("13","k","2o","l",h,p),j("14","k","S","x",h,p),j("15","k","2r","l",h,p),j("16","k","H","l",h,p),j("17","k","y","l",h,p),j("18","k","z","l",h,p)];t.Z(1j);t.F("1a","1t","","");t.F("1c","1K","","");1H()};q 1H(){m a={1T:2z(""),G:$("#G").w()};1z(a,"2E",1G,h)};q 1G(c){m d="";1p=c.1m;s.N();m e="";m f=0;$.2Q(c.2S,q(a,b){e=e+\'<P 36="\'+b.1v+b.1I+\'">\'+b.1g+\' (\'+1J(b.1v)+\' ~ \'+1J(b.2d)+\')\'+\'</P>\';$("#O").2f().2g(e);u(f==1)d=b.1v+b.1I;f++});T=c.1w;r.N();X=c.2i;t.N();1L();u(d!=""){$("#O").w(d);$("#1r").w(d.1q(8,12))}};q 1L(){2n(m i=1;i<s.2p;i++){u(s.n(i,13)=="Y"){s.1N("1O",i,0,i,1,"#1P");s.1N("1O",i,0,i,5,"#1P")}}};q 1b(){m a=s.J();u(a<=0)A;m b="";b+="1f=1d";b+="&";b+="I="+s.n(a,0);b+="&";b+="B="+s.n(a,1);b+="&";b+="H="+s.n(a,9);b+="&";b+="y="+s.n(a,10);b+="&";b+="z="+s.n(a,11);b+="&";b+="1o="+s.n(a,12);1C(b,"W.v",h,1X,s.n(a,12),h,h)};q 1X(a,b,c){u(a=="U")K.M="20.v";1e u(a=="Q")K.M="2I.v";1e K.M="20.v"};q 1F(){m a=s.L();u(a!=1)A;1b()};q 1l(){m a=r.J();u(a<=0)A;m b=r.L();u(b==\'6\')A;m c="";c+="1f=1d";c+="&";c+="I="+r.n(a,0);c+="&";c+="B="+r.n(a,1);c+="&";c+="H="+r.n(a,10);c+="&";c+="y="+r.n(a,11);c+="&";c+="z="+r.n(a,12);1C(c,"W.v",h,23,a,h,h)};q 23(a,b,c){m d="";d+="24=Y";d+="&";d+="2L="+r.n(a,2).2M(/\\+/g,"%2B");d+="&";d+="2N="+r.n(a,3);d+="&";d+="2O="+r.n(a,4);d+="&";d+="2P="+$("#1r").w();26(d,"2R.v",h,27)};q 27(){u(2T=="2U")K.M="2V.v";1e K.M="2W.v"};q 1t(){m a=t.J();u(a<=0)A;m b=t.L();u(b==\'11\')A;m c="";c+="1f=1d";c+="&";c+="I="+t.n(a,0);c+="&";c+="B="+t.n(a,1);c+="&";c+="H="+t.n(a,16);c+="&";c+="y="+t.n(a,17);c+="&";c+="z="+t.n(a,18);1C(c,"W.v",h,28,a,h,h)};q 28(a,b,c){m d="";d+="24=Y";d+="&";d+="2Y="+t.n(a,12);d+="&";d+="2Z="+t.n(a,13);d+="&";d+="31="+t.n(a,15);26(d,"32.v","33.v",h)};q 34(){m a={B:$("#B").w(),G:$("#G").w()};1z(a,"35",29,h)};q 29(a){1p=a.1m;s.N()};q 37(){$("#1r").w($("#O P:2a").w().1q(8,12))};q 39(){m a={1T:$("#O P:2a").w().1q(0,8),G:$("#G").w()};1z(a,"3a",2b,h)};q 2b(a){T=a.1w;r.N()};q 1M(){m a=r.J();m b=r.L();u(b==\'6\'){m c=r.n(a,7);u(c=="")A;2c("3d",c)}u(b==\'1\'){1l()}};q 1K(){m a=t.J();m b=t.L();u(b==\'11\'){m c=t.n(a,14);u(c=="")A;2c("2A",c)}u(b==\'1\'){1t()}};',62,201,'|||||||||||||||||null||fn_SetSBGridCol|output|center|var|getTextMatrix|false|true|function|objSBGridRprt|objSBGrid|objSBGridIssue|if|jsp|val|left|sDEV_STAGE|sTEST_STAGE|return|sPRJT_NM|mm|dd|yyyy|addEventListener|sUSER_ID|sCURR_STAGE|sPRJT_ID|getRow|window|getCol|location|rebuild|searchPrjtRptDt|option|02|ID|sFILE_NM|resultDataRprt|01|09|pms_common_session|resultDataIssue||createColumns||||||||||00|ondblclick|fn_SelectListInfo|onclick|PRJTSEL|else|sPARAM|sWEEK_ORDER|sPRJT_STAGE|objGridInitInfoIssue|objColumnsInfoIssue|fn_InitSBGrid|fn_SelectListInfoRprt|prjtInfo|objGridInitInfoRprt|sPRJT_TYPE|resultData|substring|sSEL_WEEK_YEAR|03|fn_SelectListInfoIssue|objColumnsInfoRprt|sWEEK_STRT_DT|weekRprt|createSBDataGrid|04|fn_AjaxSend|05|06|fn_AjaxSendSesUrlParam|07|08|fn_SelectListInfoMobile|fn_SetDataSelectPrjtInfo|fn_SelectPrjtInfo|sCURR_YEAR|fn_SetDateType|fn_GridFileDownIssue|fn_DrawDelayInfo|fn_GridFileDownRprt|setCellStyle|color|FF0000|sIMG_URL|imageF|sPRJT_YEAR|sCURR_DT|sPRJT_MANG_NM|objColumnsInfo|250px|fn_ProcDataSelectListInfo|objGridInitInfo|sDELAY_YN|MN020101|PM|fn_InitGrid|fn_ProcDataSelectListInfoRprt|sSEARCH_YN||fn_AjaxSendSesUrl|fn_ProcMoveSelectListInfoRprt|fn_ProcMoveSelectListInfoIssue|fn_SetDataSelectPrjtList|selected|fn_SetDataSelectPrjtRprt|fn_DownloadFile|sWEEK_END_DT|sCHRG_USER_NM|empty|append|sISSUE_TYPE_NM|issueInfo|sISSUE_IMPT_NM|sPROC_STAGE_NM|40|sCOMPL_DT|for|sTASK_ID|rows|45|sISSUE_ID|fn_InitLoad|200px|sPRJT_WEEK|sSTRT_DT|sEND_DT|sCURR_STAGE_NM|sCUS_NM|fn_GetDate|MN01_IS||sMAIN_BIZ_PART_NM|TITLE|MN010111C|PRJT_STAGE|TASK_ID|sPRJT_END_DT|MN020201|sPRJT_STRT_DT|sPROGRESS_RT|sSEARCH_RPRT_WEEK|replace|sSEARCH_RPRT_STRT_DT|sSEARCH_RPRT_END_DT|sSEARCH_RPRT_YEAR|each|pms_session_cf0101|weekInfo|domainPath|wise|WSCF010102|CF010102|prjtIssueInfo|sSEARCH_PRJT_STAGE|sSEARCH_TASK_ID||sSEARCH_ISSUE_ID|pms_session_cf0301|CF030102|fn_SelectPrjtList|MN010111D|value|fn_SelectSearchYear|sTITLE|fn_SelectPrjtRprt|MN010111F|sREG_DT|sREG_USER_NM|MN01_RP|sAPPR_DT'.split('|'),0,{}))

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">

<div id="wraphome">
	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header_home.jsp" flush="true" />
	</div>
	<!-- END : include -->

	<div id="containerhome">
 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">
    		        <!-- START : grid section -->
    		        <br/>
	    		    <div class="section">
	    		    	<div style="float:left; width:40%;">
	    		    		<h3>프로젝트 요약정보</h3>
	    		    	</div>
	    		    	<div style="float:left; width:55%; padding-left:5%;">
		    		    	<ul class="tasedr">
	    		            	<li><a href="javascript:fn_SelectPrjtList();" class="btn01">조회</a></li>
								<li><input type="text" class="txtinp w200" id="sPRJT_NM" name="sPRJT_NM"/></li>
	    		            </ul>
						</div>
	    		        <div id="prjtInfo">
						</div>
	    		    </div>
	    		    <br/>
	    		    <!-- END : grid section -->
	    		    <div class="section">
	    		    	<div style="float:left; width:40%;">
	    		    		<h3>주간보고</h3>
	    		    	</div>
	    		    	<div style="float:left; width:55%; padding-left:5%;">
	    		    		<ul class="tasedr">
	    		    			<li><a href="javascript:fn_SelectPrjtRprt();" class="btn01">조회</a></li>
	    		            	<li><select class="selectbox" id="searchPrjtRptDt" name="searchPrjtRptDt" onchange="javascript:fn_SelectSearchYear()"></select></li>
							</ul>
						</div>
	    		        <div id="weekRprt">
						</div>
	    		    </div>
	    		    <br/>
	    		    <div class="section">
	    		    	<h3>프로젝트 이슈</h3>
	    		        <div id="prjtIssueInfo">
						</div>
	    		    </div>
    		    </div><!--//pixbox-->
    		    <div id="hiddenColumn">
    		    	<input type="hidden" class="inputType" id="sUSER_ID" name="sUSER_ID" />
    		    	<input type="hidden" class="inputType" id="sSEL_WEEK_YEAR" name="sSEL_WEEK_YEAR" />
				</div>
    		</div><!--//cont-->
		</div><!--//content-->
    </div><!--//container-->
    <div>
		<iframe id="dnjsp" name="dnjsp" frameborder="0" width="0" height="0"></iframe>
	</div>
</div><!--//wrap-->
<div id="footer">
	<jsp:include page="../common/layout_footer.jsp" flush="true" />
</div><!--//footer-->
</body>
</html>