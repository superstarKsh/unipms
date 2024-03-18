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
	$("#sPRJT_ID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");

	fn_SelectPrjtInfo();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('5 1m;5 M;5 K;5 V;5 1l;5 n;5 1h;5 1e;5 19;5 O;5 16;5 11;5 1q;5 S;5 18;5 14;5 12;5 l;5 1p;5 1o;5 1n;5 p;5 1j;5 1d;o 3a(){5 a={1W:$("#1W").3b()};3g(a,"2j",2f,9)};o 2f(a){m(a.1s!=9&&a.1s!=\'3i\'){3h(a.1s);t}1Z(a.21);29(a.13);1F(a.3f);1K(a.3e);1M(a.3d);1O(a.3c);1R(a.13)};o 1Z(a){K=[{"1b":"기 간"}];5 b="";5 c="";5 i=0;b="단 계";c="10%";C(i=0;i<a.u;i++){b+="^"+a[i].39;c+=",20%"}C(i=0;i<a.u;i++){5 d=a[i].1r;5 e=a[i].W;m(d.u==8)d=d.v(0,4)+"."+d.v(4,6)+"."+d.v(6,8);m(e.u==8)e=e.v(0,4)+"."+e.v(4,6)+"."+e.v(6,8);K[0]["1i"+(i+1).1k()]=d+" ~ "+e}1m={"38":"21","37":"M","36":b,"35":c,"34":"25","30":"2Z","2Y":"K","2X":"#2W","2R":"#2Q","3j":"2L","2I":r,"2H":"2E:1w%; 2D:2C; 1z-2B:2A 2z, 2t, 2r;1z-2q:2p;"};M=w(1m);V=[{"1G":"1b","1H":"g","1J":"1b","L":"Z-N:k;17-x:#2l"}];C(i=0;i<a.u;i++){5 f={};f.1G=\'1i\'+(i+1).1k();f.1J=\'1i\'+(i+1).1k();f.1H="g";m(a[i].2k=="1"){m(1a("")>=a[i].1r&&1a("")<=a[i].W){f.L="Z-N:k;17-x:#1U"}1t{f.L="Z-N:k;17-x:#1U;x:#1c"}}1t{f.L="Z-N:k;"}V.2i(f);f=9}M.y(V)};o 29(a){1h=a;5 b="1f 명^시작일자^종료일자^목표율(%)^진행률(%)";5 c="1g%,15%,15%,15%,15%";1l=H("13","n",b,c,"2N","1h",r,3);n=w(1l);1e=[h("E","g","T","U",9,j),h("D","g","1r","k","B.A.z",j),h("F","g","W","k","B.A.z",j),h("G","g","2h","Q",9,j),h("P","g","1S","Q",9,j)];n.y(1e)};o 1R(a){m(n==9)t;n.1Q("2m");C(5 i=1;i<n.2n;i++){n.2o(i,n.q(i,0).u/2);a[i-1].T=a[i-1].1E;n.2s(i,a[i-1]);m((1a("")>a[i-1].W)&&a[i-1].1S<1w){n.1D("x",i,0,i,0,"#1c");n.1D("x",i,4,i,0,"#1c")}}n.1Q("2u");C(5 i=0;i<a.u;i++){m(a[i].2v==2)n.2w(i+1,r)}};o 1F(a){16=a;5 b="총건수^현재진행건수^완료건수^미완료건수^진행율 (%)";5 c="20%,20%,20%,20%,20%";19=H("2x","O",b,c,"2y","16",r,9);O=w(19);11=[h("E","g","1C","k",9,j),h("D","g","1B","k",9,j),h("F","g","1A","k",9,j),h("G","g","1y","k",9,j),h("P","g","1x","Q",9,j)];O.y(11)};o 1K(a){18=a;5 b="1f 1v^1f 명^총건수^현재 진행건수^완료건수^미완료건수^진행율";5 c="10%,1g%,10%,10%,10%,10%,10%";1q=H("2F","S",b,c,"2G","18",r,9);S=w(1q);14=[h("E","g","T","k",9,j),h("D","g","1E","U",9,j),h("F","g","1C","k",9,j),h("G","g","1B","k",9,j),h("P","g","1A","k",9,j),h("1u","g","1y","k",9,j),h("2e","g","1x","Q",9,j)];S.y(14)};o 1M(a){1p=a;5 b="이슈 1v^이슈 2J^중요도^진행상태^등록일자^등록자^조치예정일자";5 c="15%,1g%,10%,15%,15%,15%";12=H("2K","l",b,c,"2d","1p",r,9);l=w(12);1o=[h("E","g","2M","k",9,j),h("D","g","2c","U",9,j),h("F","g","2O","k",9,j),h("G","g","2P","k",9,j),h("P","g","2b","k","B.A.z",j),h("1u","g","2a","k",9,j),h("2e","g","2S","k","B.A.z",j),h("2T","g","2U","k",9,r),h("2V","g","T","k",9,r)];l.y(1o);l.R("28","27","","");l.R("26","24","","")};o 1O(a){1j=a;5 b="일련번호^제목^등록일^작성자";5 c="10%,31%,15%,15%";1n=H("32","p",b,c,"2d","1j",r,9);p=w(1n);1d=[h("E","g","33","k",9,j),h("D","g","2c","U",9,j),h("F","g","2b","k","B.A.z",j),h("G","g","2a","k",9,j)];p.y(1d);p.R("28","23","","");p.R("26","22","","")};o 27(){5 a=l.J();m(a<=0)t;5 b="";b+="I=Y";b+="&";b+="1X="+l.q(a,7);b+="&";b+="1Y="+l.q(a,8);b+="&";b+="1V="+l.q(a,0);X(b,"1N.s","1I.s",9)};o 24(){5 a=l.J();m(a<=0)t;5 b=l.1T();m(b!=0)t;5 c="";c+="I=Y";c+="&";c+="1X="+l.q(a,7);c+="&";c+="1Y="+l.q(a,8);c+="&";c+="1V="+l.q(a,0);X(c,"1N.s","1I.s",9)};o 23(){5 a=p.J();m(a<=0)t;5 b="";b+="I=Y";b+="&";b+="1P="+p.q(a,0);X(b,"1L.s","2g.s",9)};o 22(){5 a=p.J();m(a<=0)t;5 b=p.1T();m(b!=0)t;5 c="";c+="I=Y";c+="&";c+="1P="+p.q(a,0);X(c,"1L.s","2g.s",9)};',62,206,'|||||var||||null|||||||output|fn_SetSBGridCol||false|center|objSBGridIssue|if|objSBGridPrjtStageDetail|function|objSBGridNotice|getTextMatrix|true|jsp|return|length|substring|createSBDataGrid|color|createColumns|dd|mm|yyyy|for|01|00|02|03|fn_InitSBGrid|sSEARCH_YN|getRow|resultPrjtStage|style|objSBGridPrjtStage|align|objSBGridDevSchlTotal|04|right|addEventListener|objSBGridDevSchl|sTASK_ID|left|objColumnsInfoPrjtStage|sEND_DT|fn_AjaxSendSesUrl||text||objColumnsInfoDevSchlTotal|objGridInitInfoIssue|prjtStageDetail|objColumnsInfoDevSchl||resultDevSchlTotal|background|resultDevSchl|objGridInitInfoDevSchlTotal|fn_GetDate|col0|FF0000|objColumnsInfoNotice|objColumnsInfoPrjtStageDetail|TASK|40|resultPrjtStageDetail|col|resultNotice|toString|objGridInitInfoPrjtStageDetail|objGridInitInfoPrjtStage|objGridInitInfoNotice|objColumnsInfoIssue|resultIssue|objGridInitInfoDevSchl|sSTRT_DT|errInfo|else|05|ID|100|sPRG_CMPL_PER|sPRG_DLAY_CNT|font|sPRG_CMPL_CNT|sPRG_CURR_CNT|sPRG_CNT|setCellStyle|sTASK_NM|fn_DevSchlGridTotal|id|type|CF030102|ref|fn_DevSchlGrid|pms_session_nt0101|fn_IssueGrid|pms_session_cf0301|fn_NoticeGrid|sSEARCH_SEQ_NO|setGroup|fn_SetPrjtStageDetailGridChange|sPROGRESS_RT|getCol|F6CED8|sSEARCH_ISSUE_ID|sPRJT_ID|sSEARCH_PRJT_STAGE|sSEARCH_TASK_ID|fn_PrjtStageGrid||prjtStage|fn_SelectNoticeListInfoClick|fn_SelectNoticeListInfo|fn_SelectIssueListInfoClick||onclick|fn_SelectIssueListInfo|ondblclick|fn_PrjtStageDetailGrid|sREG_USER_NM|sREG_DT|sTITLE|150px|06|fn_SetDataSelectPrjtInfo|NT010102|sPURPOSE_RT|push|MN020111|sCURR_STAGE|EAEFF3|none|rows|setGroupLevel|10pt|size|arial|setRowData|gulim|complete|sTASK_LEVEL|setGroupCollapsed|devInfoTotal|53px|Gothic|Nanum|family|95px|height|width|devInfo|200px|strStyle|bAllowCopy|TITLE|issueInfo|sortshow|sISSUE_ID|203px|sISSUE_IMPT_NM|sPROC_STAGE_NM|000|strSelectFontColor|sAPPR_DT|07|sPRJT_STAGE|08|FEEEDB|strFocusColor|strJsonRef|50|strDataHeight|60|noticeInfo|sSEQ_NO|strRowHeight|strColWidth|strCaption|strId|strParentId|sPRJT_STAGE_NM|fn_SelectPrjtInfo|val|prjtNotice|prjtIssue|prjtDevSchl|prjtDevSchlT|fn_AjaxSend|fn_ServiceErrorAlert|undefined|strExplorerbar'.split('|'),0,{}))

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">

<div id="wraphome">

	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header_prjt_home.jsp" flush="true" />
	</div>
	<!-- END : include -->

	<div id="containerhome">
 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">
					<br/>
	     		    
					<!-- START : grid section -->
		    	    <div class="section">
		    	        <h3>프로젝트 진행 현황</h3>
		    	        <div id="prjtStage">
						</div>
		    	    </div>
		   		    <!-- END : grid section -->
		    		    
					<!-- START : grid section -->
		   		    <div class="section">
		    	        <div id="prjtStageDetail">
						</div>
		    		</div>
		    		<!-- END : grid section -->
	
	    		    <br/>
					<!-- START : grid section -->
		    		<div class="section">
		    		    <h3>개발진행현황</h3>
		    		    <div id="devInfoTotal">
						</div>
		    		</div>
		    		<!-- END : grid section -->
		    		    
					<!-- START : grid section -->
		    	    <div class="section">
		    		    <div id="devInfo">
						</div>
		    		</div>
		    		<br/>
		    		<!-- END : grid section -->
					<!-- START : grid section -->
		    		<div class="section">
		    		    <h3>진행이슈현황</h3>
		    		    <div id="issueInfo">
						</div>
		    		</div>
		    		<br/>
		    		<!-- END : grid section -->
					<!-- START : grid section -->
		    		<div class="section">
		    		    <h3>공지사항</h3>
		    		    <div id="noticeInfo">
						</div>						
		    		</div>
		    		<!-- END : grid section -->

				</div><!--//pixbox-->
	    		<div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sPRJT_ID" name="sPRJT_ID"/>
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