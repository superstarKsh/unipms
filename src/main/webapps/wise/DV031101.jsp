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
	
	fn_InitGrid();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('o 1P(){m a="y n^프로그램 n^프로그램 명^프로그램 종류^구분^중요도^개발일정^개발일정^개발일정^개발일정^선행프로그램^후행프로그램^단위테스트^단위테스트^단위테스트^단위테스트^담당자^담당자^S확인^고객확인^구분n^중요도n^담당자n^진행율(%)^y n^x n^1x x n|y n^프로그램 n^프로그램 명^프로그램 종류^구분^중요도^계획시작일자^계획종료일자^시작일자^종료일자^선행프로그램^후행프로그램^계획시작일자^계획종료일자^시작일자^종료일자^담당자^담당자^S확인^고객확인^구분n^중요도n^담당자n^진행율(%)^y n^x n^1x x n";m b="10%,10%,15%,10%,10%,8%,12%,12%,12%,12%,12%,12%,12%,12%,12%,12%,10%,3%,8%,8%,10%,10%,8%,8%,10%,10%,10%,8%";L=2L("2K","e",a,b,"2I","G",r,3);e=2F(L);1F=[f("2E","p","2y","g",k,j),f("2v","p","1i","g",k,j),f("2u","p","1n","w",k,j),f("2s","p","1w","g",k,j),f("2q","p","1A","g",k,j),f("2l","p","1C","g",k,j),f("2h","t","M","g","u.v.q",j),f("2g","t","R","g","u.v.q",j),f("2f","t","T","g","u.v.q",j),f("2d","t","V","g","u.v.q",j),f("10","p","W","w",k,j),f("11","p","X","w",k,j),f("12","t","Y","g","u.v.q",j),f("13","t","Z","g","u.v.q",j),f("14","t","1a","g","u.v.q",j),f("15","t","1b","g","u.v.q",j),f("16","p","1c","w",k,j),f("17","2c","","g",k,j),f("18","1f","2a","g",["1h","B","29"],j),f("19","1f","27","g",["1h","B","B"],j),f("20","p","1Y","g",k,r),f("21","p","1V","g",k,r),f("22","p","1Q","g",k,r),f("23","1s","1t","g",k,r),f("24","p","1u","g",k,r),f("25","p","1v","g",k,r),f("26","p","1o","g",k,r)];e.1N(1F);e.1M("1K","1z","","");H()};o 1H(){J.2i="1G.D"};o 1E(){1D()};o 1D(){$("#I 1s[1I=1J], #I 1y, #I 1L").s("");A(1O==1){1r.1R("1q").1y();1r.1S.1T()}1U{$("#1q").s("")}};o H(){1E();m a={F:$("#E").s(),1W:$("#1X").s()};z(a,"1Z",1m,k)};o 1m(a){G=a.1l;e.1k()};o 28(){m a=C 1g();m b=C 2b(e.1e-2);a.h("F",$("#E").s());2e(m i=2;i<e.1e;i++){m c=C 1g();c.h("1u",e.l(i,24));c.h("1v",e.l(i,25));c.h("1o",e.l(i,26));c.h("1i",e.l(i,1));c.h("1n",e.l(i,2));c.h("1w",e.l(i,3));c.h("1A",e.l(i,4));c.h("1C",e.l(i,5));c.h("M",e.l(i,6));c.h("R",e.l(i,7));c.h("T",e.l(i,8));c.h("V",e.l(i,9));c.h("W",e.l(i,10));c.h("X",e.l(i,11));c.h("Y",e.l(i,12));c.h("Z",e.l(i,13));c.h("1a",e.l(i,14));c.h("1b",e.l(i,15));c.h("1c",e.l(i,16));c.h("1t",e.l(i,23));b[i-2]=c};a.2j("2k",b);m d=a.2m();z(d,"2n",H,2o)};o 2p(){A($("#K").s()==""){2r("일괄 저장할 파일을 선택하여 주십시오.");1p}2t("1j",1d)};o 1d(){m a={K:2w($("#K").s())};z(a,"2x",P,k)};o P(a){G=a.1l;e.1k()};o 1z(){m a=e.2z();A(a<=0)1p;m b=e.2A;m c=e.2B;m d="2C.D?2D="+b;A(c==17){J.N(d,"",1B)}};o 2G(){m a={F:$("#E").s()};z(a,"2H",U,k)};o U(a){m b=a.2J;Q(b)};o Q(a){m b=a;O("1j",b)};o 2M(){m a="2N.2O";O("2P",a)};o 2Q(){J.N("2R.D","",1B)};',62,178,'||||||||||||||objSBGrid|fn_SetSBGridCol|center|put||false|null|getTextMatrix|var|ID|function|output|dd|true|val|inputdate|yyyy|mm|left|SEG|TASK|fn_AjaxSend|if|label|new|jsp|searchPrjtID|sPRJT_ID|resultData|fn_SelectPrjtInfo|fileSection|window|sFILE_NM|objGridInitInfo|sPRJ_PLAN_STRT_DT|open|fn_DownloadFile|fn_SetDataExcelDataLoad|fn_FileDownload|sPRJ_PLAN_END_DT|PM|sPRJ_DEV_STRT_DT|fn_ProcDataExcelDownload|sPRJ_DEV_END_DT|sBEFORE_PGM|sAFTER_PGM|sTEST_PLAN_STRT_DT|sTEST_PLAN_END_DT|||||||||||sTEST_DEV_STRT_DT|sTEST_DEV_END_DT|sDEV_USER_NM|fn_ExcelDataLoad|rows|combo|Map|yesNo_YN|sPRG_ID|DV0311|rebuild|prjtPrgmInfo|fn_SetDataSelectPrjtInfo|sPRG_NM|sSEG_SUB_ID|return|uploadFile|document|input|sPROGRESS_RT|sTASK_ID|sSEG_ID|sPRG_EXTN|SUB|select|fn_SelectListInfo|sPRG_TYPE_NM|popupStyle|sIMP_RT_NM|fn_File_Clear|fn_Init_Data|objColumnsInfo|DV031101|fn_Init_Clear|type|text|onclick|textarea|addEventListener|createColumns|brswType|fn_InitGrid|sDEV_USER_ID|getElementById|selection|clear|else|sIMP_RT|sPRJT_STAGE|sDEV_STAGE|sPRG_TYPE|DV031111||||||||sCUS_CNFM|fn_ModifyPrjtTaskInfo|value|sPM_CNFM|Array|imageS|09|for|08|07|06|location|putMapList|sPRG_INFO|05|jsonParse|DV031122|PMS_PROC_INSERT|fn_InsertPrjtFile|04|alert|03|fn_InsertUploadFile|02|01|fn_GetFileName|DV031153|sACTIVITY_ID|getRow|row|col|PU010112|nSelRow|00|createSBDataGrid|fn_ExcelDownload|DV031154|400px|fileName|prjtDevInfo|fn_InitSBGrid|fn_TempletDownload|uni_pms_dev_schedule_total|xls|DV0311_TL|fn_SearchPrjtInfo|PU010101'.split('|'),0,{}))

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
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[DV03] 개발일정 일괄 등록</h2>
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
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        
    		        <div class="section">
                        <ul class="btnbox right">
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                     	</ul>
                    </div>

					<!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtDevInfo">
						</div>
	    		    </div>
	    		    
	    		    <div id="fileSection" class="section">
						<table class="table01" border="0" cellspacing="0" summary="">
							<tr>
								<th>일괄등록</th>
								<td>
									<div class="inputfileMR3">
										<input type="text" class="txtinp w370" id="sFILE_NM" name="sFILE_NM" readOnly/>
										<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>  					
									</div>
								</td>
								<td>
									<ul class="taseb right">
										<li><a href="javascript:fn_TempletDownload();" class="btn01">작성방법</a></li>
										<li><a href="javascript:fn_ExcelDownload();" class="btn01">Download</a></li>
										<li><a href="javascript:fn_InsertPrjtFile();" class="btn01">양식Upload</a></li>
									</ul>
								</td>
							</tr>
						</table>   
					</div>

    		        <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_ModifyPrjtTaskInfo();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div>
    		        <!-- END : button section -->
    		        <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sDEV_STAGE" name="sDEV_STAGE"/>
					</div>
	    		    
				</div><!--//pixbox-->
				</form>
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