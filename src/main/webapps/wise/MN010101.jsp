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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('m r;m T=[];m 1k;m 1A;m s;m 1v=[];m 1t;m 1s;q 2s(){1J()};q 1J(){m a="프로젝트R^프로젝트명^진행단계^시작일자^종료일자^진행율(%)^1S^고객사^주사업자^G^B^z^1i^1Z";m b="10%,2l%,10%,12%,12%,15%,10%,15%,15%,10%,10%,10%,10%,10%";1G=1h("1E","t",a,b,"1Y","1c",p,h);t=1b(1G);1U=[j("1C","k","F","l",h,p),j("Q","k","A","x",h,o),j("P","k","2x","l",h,o),j("1f","k","2J","l","C.D.E",o),j("1B","k","2H","l","C.D.E",o),j("1u","k","2K","l",h,o),j("1p","k","22","l",h,o),j("1o","k","2y","x",h,o),j("1m","k","2C","x",h,o),j("1l","k","G","l",h,p),j("10","k","B","l",h,p),j("11","k","z","l",h,p),j("12","k","1i","l",h,p),j("13","k","1Z","l",h,p)];t.1j(1U);t.H("1e","19","","");t.H("W","1L","","");a="프로젝트R^프로젝트명^프로젝트 주^시작일자^종료일자^1S^첨부파일^U^1T^1n^X^B^z";b="10%,2q%,10%,15%,15%,15%,10%,10%,10%,10%,10%,10%";1k=1h("Z","r",a,b,"2t","T",p,h);r=1b(1k);1A=[j("1C","k","F","l",h,p),j("Q","k","A","x",h,o),j("P","k","2u","l",h,o),j("1f","k","2v","l","C.D.E",o),j("1B","k","2w","l","C.D.E",o),j("1u","k","22","l",h,o),j("1p","2d","21","l",h,o),j("1o","k","U","x",h,p),j("1m","k","1T","l",h,p),j("1l","k","1n","l",h,p),j("10","k","X","l",h,p),j("11","k","B","l",h,p),j("12","k","z","l",h,p)];r.1j(1A);r.H("1e","1a","","");r.H("W","1F","","");a="프로젝트R^프로젝트명^이슈 2D^등록일자^등록자^담당자^구분^이슈중요도^진행상태^조치예정일자^완료일자^첨부파일^2F^2G^U^이슈R^1^2^3";b="10%,30%,25%,12%,10%,10%,10%,10%,10%,12%,12%,10%,10%,10%,10%,10%,10%,10%,10%";1t=1h("2X","s",a,b,"1Y","1v",p,h);s=1b(1t);1s=[j("1C","k","F","l",h,p),j("Q","k","A","x",h,o),j("P","k","36","x",h,o),j("1f","k","38","l","C.D.E",o),j("1B","k","3a","l",h,o),j("1u","k","2e","l",h,o),j("1p","k","2h","l",h,o),j("1o","k","2j","x",h,o),j("1m","k","2k","l",h,o),j("1l","k","3d","l","C.D.E",o),j("10","k","2m","l","C.D.E",o),j("11","2d","21","l",h,o),j("12","k","X","l",h,p),j("13","k","2o","l",h,p),j("14","k","U","x",h,p),j("15","k","2r","l",h,p),j("16","k","G","l",h,p),j("17","k","B","l",h,p),j("18","k","z","l",h,p)];s.1j(1s);s.H("1e","1d","","");s.H("W","1M","","");1Q()};q 1Q(){m a={1R:2z(""),I:$("#I").w()};1g(a,"2E",1V,h)};q 1V(c){m d="";1c=c.1E;t.N();m e="";m f=0;$.2Q(c.2S,q(a,b){e=e+\'<O 35="\'+b.V+b.1H+\'">\'+b.1n+\' (\'+1I(b.V)+\' ~ \'+1I(b.3b)+\')\'+\'</O>\';$("#S").2f().2g(e);u(f==1)d=b.V+b.1H;f++});T=c.Z;r.N();1v=c.2i;s.N();1K();u(d!=""){$("#S").w(d);$("#1q").w(d.1r(8,12))}};q 1K(){2n(m i=1;i<t.2p;i++){u(t.n(i,13)=="Y"){t.1N("1O",i,0,i,1,"#1P");t.1N("1O",i,0,i,5,"#1P")}}};q 19(){m a=t.M();u(a<=0)y;m b="";b+="1w=1x";b+="&";b+="F="+t.n(a,0);b+="&";b+="A="+t.n(a,1);b+="&";b+="G="+t.n(a,9);b+="&";b+="B="+t.n(a,10);b+="&";b+="z="+t.n(a,11);b+="&";b+="1i="+t.n(a,12);1y(b,"1z.v",h,1X,t.n(a,12),h,h)};q 1X(a,b,c){u(a=="Q")L.K="20.v";1D u(a=="P")L.K="2I.v";1D L.K="20.v"};q 1L(){m a=t.J();u(a!=1)y;19()};q 1a(){m a=r.M();u(a<=0)y;m b=r.J();u(b==\'6\')y;m c="";c+="1w=1x";c+="&";c+="F="+r.n(a,0);c+="&";c+="A="+r.n(a,1);c+="&";c+="G="+r.n(a,10);c+="&";c+="B="+r.n(a,11);c+="&";c+="z="+r.n(a,12);1y(c,"1z.v",h,23,a,h,h)};q 23(a,b,c){m d="";d+="24=Y";d+="&";d+="2L="+r.n(a,2).2M(/\\+/g,"%2B");d+="&";d+="2N="+r.n(a,3);d+="&";d+="2O="+r.n(a,4);d+="&";d+="2P="+$("#1q").w();26(d,"2R.v",h,27)};q 27(){u(2T=="2U")L.K="2V.v";1D L.K="2W.v"};q 1d(){m a=s.M();u(a<=0)y;m b=s.J();u(b==\'11\')y;m c="";c+="1w=1x";c+="&";c+="F="+s.n(a,0);c+="&";c+="A="+s.n(a,1);c+="&";c+="G="+s.n(a,16);c+="&";c+="B="+s.n(a,17);c+="&";c+="z="+s.n(a,18);1y(c,"1z.v",h,28,a,h,h)};q 28(a,b,c){m d="";d+="24=Y";d+="&";d+="2Y="+s.n(a,12);d+="&";d+="2Z="+s.n(a,13);d+="&";d+="31="+s.n(a,15);26(d,"32.v","33.v",h)};q 34(){m a={A:$("#A").w(),I:$("#I").w()};1g(a,"29",2a,h)};q 2a(a){1c=a.1E;t.N()};q 37(){$("#1q").w($("#S O:2b").w().1r(8,12))};q 39(){m a={1R:$("#S O:2b").w().1r(0,8),I:$("#I").w()};1g(a,"29",2c,h)};q 2c(a){T=a.Z;r.N()};q 1F(){m a=r.M();m b=r.J();u(b==\'6\'){m c=r.n(a,7);u(c=="")y;1W("3c",c)}u(b==\'1\'){1a()}};q 1M(){m a=s.M();m b=s.J();u(b==\'11\'){m c=s.n(a,14);u(c=="")y;1W("2A",c)}u(b==\'1\'){1d()}};',62,200,'|||||||||||||||||null||fn_SetSBGridCol|output|center|var|getTextMatrix|false|true|function|objSBGridRprt|objSBGridIssue|objSBGrid|if|jsp|val|left|return|sTEST_STAGE|sPRJT_NM|sDEV_STAGE|yyyy|mm|dd|sPRJT_ID|sCURR_STAGE|addEventListener|sUSER_ID|getCol|location|window|getRow|rebuild|option|02|01|ID|searchPrjtRptDt|resultDataRprt|sFILE_NM|sWEEK_STRT_DT|onclick|sPRJT_STAGE||weekRprt||||||||||fn_SelectListInfo|fn_SelectListInfoRprt|createSBDataGrid|resultData|fn_SelectListInfoIssue|ondblclick|03|fn_AjaxSend|fn_InitSBGrid|sPRJT_TYPE|createColumns|objGridInitInfoRprt|09|08|sWEEK_ORDER|07|06|sSEL_WEEK_YEAR|substring|objColumnsInfoIssue|objGridInitInfoIssue|05|resultDataIssue|sPARAM|PRJTSEL|fn_AjaxSendSesUrlParam|pms_common_session|objColumnsInfoRprt|04|00|else|prjtInfo|fn_GridFileDownRprt|objGridInitInfo|sCURR_YEAR|fn_SetDateType|fn_InitGrid|fn_DrawDelayInfo|fn_SelectListInfoMobile|fn_GridFileDownIssue|setCellStyle|color|FF0000|fn_SelectPrjtInfo|sCURR_DT|PM|sPRJT_YEAR|objColumnsInfo|fn_SetDataSelectPrjtInfo|fn_DownloadFile|fn_ProcDataSelectListInfo|250px|sDELAY_YN|MN020101|sIMG_URL|sPRJT_MANG_NM|fn_ProcDataSelectListInfoRprt|sSEARCH_YN||fn_AjaxSendSesUrl|fn_ProcMoveSelectListInfoRprt|fn_ProcMoveSelectListInfoIssue|MN010111A|fn_SetDataSelectPrjtList|selected|fn_SetDataSelectPrjtRprt|imageF|sCHRG_USER_NM|empty|append|sISSUE_TYPE_NM|issueInfo|sISSUE_IMPT_NM|sPROC_STAGE_NM|40|sCOMPL_DT|for|sTASK_ID|rows|45|sISSUE_ID|fn_InitLoad|200px|sPRJT_WEEK|sSTRT_DT|sEND_DT|sCURR_STAGE_NM|sCUS_NM|fn_GetDate|MN01_IS||sMAIN_BIZ_PART_NM|TITLE|MN010111|PRJT_STAGE|TASK_ID|sPRJT_END_DT|MN020201|sPRJT_STRT_DT|sPROGRESS_RT|sSEARCH_RPRT_WEEK|replace|sSEARCH_RPRT_STRT_DT|sSEARCH_RPRT_END_DT|sSEARCH_RPRT_YEAR|each|pms_session_cf0101|weekInfo|domainPath|wise|WSCF010102|CF010102|prjtIssueInfo|sSEARCH_PRJT_STAGE|sSEARCH_TASK_ID||sSEARCH_ISSUE_ID|pms_session_cf0301|CF030102|fn_SelectPrjtList|value|sTITLE|fn_SelectSearchYear|sREG_DT|fn_SelectPrjtRprt|sREG_USER_NM|sWEEK_END_DT|MN01_RP|sAPPR_DT'.split('|'),0,{}))

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