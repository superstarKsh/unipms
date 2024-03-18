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
	$("#sDEV_STAGE").val("<%=(String) session.getAttribute("sDEV_STAGE")%>");

	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('l 1Q(){$(\'Q:39[37=1s]:Q[t=0]\').2V("1a",s);5 a={z:$("#A").m(),B:$("#D").m()};y(a,"1l",1m,j)};l 1m(c){5 d=\'<k t="">선 택</k>\';$.O(c.2S,l(a,b){d=d+\'<k t="\'+b.2P+\'">\'+b.2O+\'</k>\';$("#1q").r().J(d)});1H();1M()};l 1H(){5 a="I o^프로그램 o^프로그램 명^프로그램 종류^구분^중요도^개발일정^개발일정^개발일정^개발일정^선행프로그램^후행프로그램^단위테스트^단위테스트^단위테스트^단위테스트^담당자^W확인^고객확인^구분o^중요도o^담당자o^진행율(%)^I o^L o^1b L o|I o^프로그램 o^프로그램 명^프로그램 종류^구분^중요도^계획시작일자^계획종료일자^시작일자^종료일자^선행프로그램^후행프로그램^계획시작일자^계획종료일자^시작일자^종료일자^담당자^W확인^고객확인^구분o^중요도o^담당자o^진행율(%)^I o^L o^1b L o";5 b="10%,10%,15%,10%,10%,10%,10%,10%,12%,12%,12%,12%,12%,12%,12%,12%,12%,12%,12%,12%,10%,8%,8%,10%,10%,10%,8%";1o=1p("2N","n",a,b,"2L","1z",s,3);n=1K(1o);1L=[2("1O","6","2J","4",j,7),2("X","6","Y","4",j,7),2("Z","6","2I","S",j,7),2("1c","6","2B","4",j,7),2("1e","6","2y","4",j,7),2("1g","6","2s","4",j,7),2("2n","6","2l","4","w.v.u",7),2("2h","6","2f","4","w.v.u",7),2("2e","K","1r","4","w.v.u",7),2("2d","K","1t","4","w.v.u",7),2("10","6","2c","S",j,7),2("11","6","29","S",j,7),2("12","6","1X","4","w.v.u",7),2("13","6","1V","4","w.v.u",7),2("14","K","1A","4","w.v.u",7),2("15","K","1B","4","w.v.u",7),2("16","6","1T","4",j,7),2("17","1E","1F","4",["1G","R","t"],7),2("18","1E","1I","4",["1G","R","R"],7),2("19","6","1w","4",j,s),2("20","6","2z","4",j,s),2("21","6","1N","4",j,s),2("22","Q","T","4",j,s),2("23","6","C","4",j,s),2("24","6","F","4",j,s),2("25","6","N","4",j,s)];n.1J(1L);n.1R("1S","1D","","");a="총건수^완료건수^지연건수^금주진행건수^차주진행건수^진행율(%)";b="20%,15%,15%,15%,15%,20%";1C=1p("1U","M",a,b,"1W","1y",s,j);M=1K(1C);1x=[2("1O","6","1Y","4","#,###",7),2("X","6","1Z","4","#,###",7),2("Z","6","26","4","#,###",7),2("1c","6","27","4","#,###",7),2("1e","6","28","4","#,###",7),2("1g","6","T","4",j,7)];M.1J(1x);P()};l 2a(){1v.2b="1l.1u"};l 1M(){$("#G").r();$("#E").r();$("#H").r();5 a={z:$("#A").m(),B:$("#D").m()};y(a,"2g",1n,j)};l 1n(c){5 d=\'<k t="">선 택</k>\';$.O(c.2i,l(a,b){d=d+\'<k t="\'+b.C+\'">\'+b.2j+\'</k>\';$("#G").r().J(d)})};l 2k(){$("#E").r();$("#H").r();5 a={z:$("#A").m(),B:$("#D").m(),C:$("#G k:x").m()};y(a,"2m",1i,j)};l 1i(c){5 d=\'<k t="">선 택</k>\';$.O(c.2o,l(a,b){d=d+\'<k t="\'+b.F+\'">\'+b.2p+\'</k>\';$("#E").r().J(d)})};l 2q(){$("#H").r();5 a={z:$("#A").m(),B:$("#D").m(),C:$("#G k:x").m(),F:$("#E k:x").m()};y(a,"2r",1h,j)};l 1h(c){5 d=\'<k t="">선 택</k>\';$.O(c.2t,l(a,b){d=d+\'<k t="\'+b.N+\'">\'+b.2u+\'</k>\';$("#H").r().J(d)})};l P(){5 a={z:$("#A").m(),B:$("#D").m(),2v:$("#1s:1a").m(),C:$("#G k:x").m(),F:$("#E k:x").m(),N:$("#H k:x").m(),1w:$("#1q k:x").m(),1N:$("#2w").m()};y(a,"2x",1f,j)};l 1f(a){1z=a.1P;1y=a.2A;n.1d();M.1d()};l 2C(){5 a=n.2D();2E(a){5 b=2F.2G(a);5 c=b.2H;5 d=U V();5 e=U 2K();d.p("z",$("#A").m());d.p("B",$("#D").m());2M(5 i=0;i<c;i++){5 f=U V();5 g=2Q(b[i].2R);f.p("C",n.q(g,23));f.p("F",n.q(g,24));f.p("N",n.q(g,25));f.p("Y",n.q(g,1));f.p("1r",n.q(g,8));f.p("1t",n.q(g,9));f.p("1A",n.q(g,14));f.p("1B",n.q(g,15));f.p("1F",n.q(g,17));f.p("1I",n.q(g,18));f.p("T",n.q(g,22));e[i]=f}d.2T("2U",e);5 h=d.2W();y(h,"2X",P,2Y)}};l 1D(a){5 b=n.2Z;5 c=n.30;n.31("32-33",b,c,b,c,"#34")};l 35(){5 a={z:$("#A").m()};y(a,"36",1k,j)};l 1k(a){5 b=a.38;1j(b)};l 1j(a){5 b=a;3a("3b",b)};l 3c(){1v.3d("3e.1u","",3f)};',62,202,'||fn_SetSBGridCol||center|var|output|false||||||||||||null|option|function|val|objSBGrid|ID|put|getTextMatrix|empty|true|value|dd|mm|yyyy|selected|fn_AjaxSend|sPRJT_ID|searchPrjtID|sPRJT_STAGE|sTASK_ID|sDEV_STAGE|searchSegInfo|sSEG_ID|searchTaksInfo|searchSegSubInfo|TASK|append|inputdate|SEG|objSBGridStat|sSEG_SUB_ID|each|fn_SelectPrjtInfo|input|label|left|sPROGRESS_RT|new|Map|PM|01|sPRG_ID|02|||||||||||checked|SUB|03|rebuild|04|fn_SetDataSelectPrjtInfo|05|fn_SetDataSelectInitSegmentSub|fn_SetDataSelectInitSegment|fn_FileDownload|fn_ProcDataExcelDownload|DV040101|fn_SetDataInitLoad|fn_SetDataSelectInitTask|objGridInitInfo|fn_InitSBGrid|searchPrgmType|sPRJ_DEV_STRT_DT|searchDevCmpl|sPRJ_DEV_END_DT|jsp|window|sPRG_TYPE|objColumnsInfoStat|resultDataStat|resultData|sTEST_DEV_STRT_DT|sTEST_DEV_END_DT|objGridInitInfoStat|fn_objSBGridStageChangeGrid|combo|sPM_CNFM|yesNo_YN|fn_InitGrid|sCUS_CNFM|createColumns|createSBDataGrid|objColumnsInfo|fn_SelectInitTask|sDEV_USER_ID|00|prjtPrgmInfo|fn_InitLoad|addEventListener|onvaluechanged|sDEV_USER_NM|prjtDevStatus|sTEST_PLAN_END_DT|53px|sTEST_PLAN_STRT_DT|sTOT_CNT|sCOMPLETE_CNT|||||||sDELAY_CNT|sCUR_WEEK_CNT|sNEXT_WEEK_CNT|sAFTER_PGM|fn_Init_Clear|location|sBEFORE_PGM|09|08|sPRJ_PLAN_END_DT|DV040181|07|prjTaskInfo|sTASK_NM|fn_SelectInitSegment|sPRJ_PLAN_STRT_DT|DV040182|06|prjSegInfo|sSEG_NM|fn_SelectInitSegmentSub|DV040183|sIMP_RT_NM|prjSegSubInfo|sSEG_SUB_NM|sDEV_CMPL_TYPE|searchUserID|DV040111|sPRG_TYPE_NM|sIMP_RT|prjtPrgmStatus|sPRG_EXTN|fn_ModifyPrjt|getUpdateData|if|JSON|parse|length|sPRG_NM|sACTIVITY_ID|Array|400px|for|prjtDevInfo|sCODE_NM|sCODE|eval|rownum|prjPgmType|putMapList|sPRG_INFO|prop|jsonParse|DV040131|PMS_PROC_INSERT|row|col|setCellStyle|background|color|F3F781|fn_ExcelDownload|DV040154|name|fileName|radio|fn_DownloadFile|DV04|fn_SearchPrjtInfo|open|PU010101|popupStyle'.split('|'),0,{}))

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
    		        <h2>[DV04] 개발일정관리</h2>
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
    		                    <div style="display:none">
    		                    <ul>
    		                        <li class="name"><span>진행단계</span></li>
    		                        <li>구현</li>
    		                    </ul>
    		                    </div>
    		                    <ul>
    		                        <li class="name"><span>완료구분</span></li>
    		                        <li><input type="radio" class="radiobox" id="searchDevCmpl" name="searchDevCmpl" value="0" checked/> 전체</li>
    		                        <li><input type="radio" class="radiobox" id="searchDevCmpl" name="searchDevCmpl" value="1" checked/> 개발 완료</li>
    		                        <li><input type="radio" class="radiobox" id="searchDevCmpl" name="searchDevCmpl" value="2" checked/> 테스트 완료</li>
    		                    </ul>
    		                    <ul>
    		                        <li class="name"><span>TASK</span></li>
    		                        <li><select class="selectbox w300" id="searchTaksInfo" name="searchTaksInfo" onChange="javascript:fn_SelectInitSegment();"></select></li>
    		                    </ul>
    		                    <ul>
    		                        <li class="name"><span>SEG</span></li>
    		                        <li><select class="selectbox w300" id="searchSegInfo" name="searchSegInfo" onChange="javascript:fn_SelectInitSegmentSub();"></select></li>
    		                    </ul>
    		                    <ul>
    		                        <li class="name">SEG SUB 구분</li>
    		                        <li><select class="selectbox w300" id="searchSegSubInfo" name="searchSegSubInfo"></select></li>
    		                    </ul>
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        <div class="section">
                        <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                     	</ul>
                    </div>
    		    	<!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtDevStatus">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    			<!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtDevInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		
    		        <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		            	<li><a href="javascript:fn_ExcelDownload();" class="btnimg03">EXCEL</a></li>
    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div>
    		        <!-- END : button section -->
    		        <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sDEV_STAGE" name="sDEV_STAGE"/>
					</div>
					</div>
				</div><!--//pixbox-->
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