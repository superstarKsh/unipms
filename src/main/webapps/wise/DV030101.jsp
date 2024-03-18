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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('m 1K=[];m 1I=[];m 1E="0";t 2U(){m a={S:$("#T").k(),1J:$("#1x").k()};1o(a,"1B",2y,p)};t 2y(c){1K=c.33;1I=c.3p;m d=\'<n K="">선 택</n>\';$.1r(1K,t(a,b){d=d+\'<n K="\'+b.1z+\'">\'+b.1A+\'</n>\';$("#W").I().1p(d)});m e=\'<n K="">선 택</n>\';$.1r(1I,t(a,b){e=e+\'<n K="\'+b.1z+\'">\'+b.1A+\'</n>\';$("#R").I().1p(e)});29()};t 29(){m a="*1N H^*프로그램 H^프로그램 명^프로그램 종류^구분^중요도^개발일정^개발일정^개발일정^개발일정^선행프로그램^후행프로그램^단위테스트^단위테스트^단위테스트^단위테스트^담당자H^담당자^담당자^1c^1h^진행율(%)^u^y^z|*1N H^*프로그램 H^프로그램 명^프로그램 종류^구분^중요도^계획시작일자^계획종료일자^시작일자^종료일자^선행프로그램^후행프로그램^계획시작일자^계획종료일자^시작일자^종료일자^담당자H^담당자^담당자^1c^1h^진행율(%)^u^y^z";m b="10%,12%,20%,10%,10%,5%,13%,13%,13%,13%,12%,12%,13%,13%,13%,13%,10%,10%,3%,10%,10%,8%,10%,10%,10%";1k=2d("28","j",a,b,"2i","1D",G,p);x(2j.2B(1k.2C)){j.2O()}j=2P(1k);1y=[o("F","1F","2S","q",p,s),o("2N","v","A","q",p,s),o("2z","v","1e","2v",p,s),o("2t","v","1g","q",p,s),o("2s","2r","W","q",["1K","1A","1z"],s),o("2m","2r","R","q",["1I","1A","1z"],s),o("2k","C","Q","q","B.E.D",s),o("2l","C","Z","q","B.E.D",s),o("2b","C","Y","q","B.E.D",s),o("2D","C","X","q","B.E.D",s),o("10","v","1b","q",p,s),o("11","v","1i","q",p,s),o("12","C","V","q","B.E.D",s),o("13","C","1a","q","B.E.D",s),o("14","C","U","q","B.E.D",s),o("15","C","N","q","B.E.D",s),o("16","1F","1f","q",p,G),o("17","v","1d","q",p,s),o("18","2F","","q",p,s),o("19","v","1c","q",p,G),o("20","v","1h","q",p,G),o("21","v","1G","q","###.## %",G),o("22","v","u","q",p,G),o("23","v","y","q",p,G),o("24","v","z","q",p,G)];j.2H(1y);j.1L("2L","1S","","");j.1L("2T","27","","");1E="0";2R("F")};t 2Q(a){m b="*1N H^*프로그램 H^프로그램 명^프로그램 종류^구분^중요도^개발일정^개발일정^개발일정^개발일정^선행프로그램^후행프로그램^단위테스트^단위테스트^단위테스트^단위테스트^담당자H^담당자^담당자^1c^1h^진행율(%)^u^y^z|*1N H^*프로그램 H^프로그램 명^프로그램 종류^구분^중요도^계획시작일자^계획종료일자^시작일자^종료일자^선행프로그램^후행프로그램^계획시작일자^계획종료일자^시작일자^종료일자^담당자H^담당자^담당자^1c^1h^진행율(%)^u^y^z";m c="10%,12%,20%,10%,10%,5%,13%,13%,13%,13%,12%,12%,13%,13%,13%,13%,10%,10%,3%,10%,10%,8%,10%,10%,10%";1k=2d("28","j",b,c,"2i","1D",G,p);x(2j.2B(1k.2C)){j.2O()}j=2P(1k);1y=[o("F","1F","2S","q",p,s),o("2N","v","A","q",p,s),o("2z","v","1e","2v",p,s),o("2t","v","1g","q",p,s),o("2s","v","W","q",p,s),o("2m","v","R","q",p,s),o("2k","C","Q","q","B.E.D",s),o("2l","C","Z","q","B.E.D",s),o("2b","C","Y","q","B.E.D",s),o("2D","C","X","q","B.E.D",s),o("10","v","1b","q",p,s),o("11","v","1i","q",p,s),o("12","C","V","q","B.E.D",s),o("13","C","1a","q","B.E.D",s),o("14","C","U","q","B.E.D",s),o("15","C","N","q","B.E.D",s),o("16","1F","1f","q",p,G),o("17","v","1d","q",p,s),o("18","2F","","q",p,s),o("19","v","1c","q",p,s),o("20","v","1h","q",p,s),o("21","v","1G","q","###.## %",G),o("22","v","u","q",p,G),o("23","v","y","q",p,G),o("24","v","z","q",p,G)];j.2H(1y);j.1L("2L","1S","","");j.1L("2T","27","","");1E="1";1D=a.28;j.2M()};t 2Y(){1M.3Y="1B.1O"};t 2G(){$("#1W v[1t=1s]:3m([2E=A]), #1W 1j, #1W 1v").k("");$("#1Y v[1t=1s], #1Y 1j, #1Y 1v").k("");$("#1Z v[1t=1s], #1Z 1j, #1Z 1v").k("");2w()};t 2w(){$("#26 v[1t=1s], #26 1j, #26 1v").k("");x(3C==1){1w.2h("2g").1j();1w.2e.2c();1w.2h("2x").1j();1w.2e.2c()}1n{$("#2g").k("");$("#2x").k("")}};t 2R(a,b,c){$("#u").I();$("#y").I();$("#z").I();m d={S:$("#T").k(),1J:$("#1x").k()};2a(d,"2V",2f,p,a,b,c)};t 2f(c,d,e,f){m g=\'<n K="">선 택</n>\';$.1r(c.3d,t(a,b){g=g+\'<n K="\'+b.u+\'">\'+b.3h+\'</n>\';$("#u").I().1p(g)});x(d=="F"){m h=c.1C;$("#A").k(h.A);1m()}1n{$("#u").k(d);1P(d,e,f)}};t 1P(a,b,c){$("#y").I();$("#z").I();m d={S:$("#T").k(),1J:$("#1x").k(),u:$("#u n:w").k()};2a(d,"2X",2n,p,a,b,c)};t 2n(c,d,e,f){m g=\'<n K="">선 택</n>\';$.1r(c.2Z,t(a,b){g=g+\'<n K="\'+b.y+\'">\'+b.30+\'</n>\';$("#y").I().1p(g)});x(d=="F"){m h=c.1C;$("#A").k(h.A);1m()}1n{$("#y").k(e);2o(d,e,f)}};t 2o(a,b,c){$("#z").I();m d={S:$("#T").k(),1J:$("#1x").k(),u:$("#u n:w").k(),y:$("#y n:w").k()};2a(d,"32",2p,p,a,b,c)};t 2p(c,d,e,f){m g=\'<n K="">선 택</n>\';$.1r(c.34,t(a,b){g=g+\'<n K="\'+b.z+\'">\'+b.35+\'</n>\';$("#z").I().1p(g)});x(d=="F"){m h=c.1C;$("#A").k(h.A);1m()}1n{$("#z").k(f)}};t 1m(){m a={S:$("#T").k(),u:$("#u n:w").k(),y:$("#y n:w").k(),z:$("#z n:w").k()};1o(a,"36",2q,p)};t 2q(a){2G();1D=a.1C;j.2M()};t 3g(){x($("#u").k()==p||$("#u").k()==""){L(1q);J}x($("#A").k()==p||$("#A").k()==""){L(3q);J}m a=$("#y n:w").k();x(a==""||a==p)a="F";m b=$("#z n:w").k();x(b==""||b==p)b="F";m c={S:$("#T").k(),u:$("#u n:w").k(),y:a,z:b,A:$("#A").k(),1e:$("#1e").k(),1g:$("#1g").k(),W:$("#W n:w").k(),1f:$("#1f").k(),1d:$("#1d").k(),R:$("#R n:w").k(),1b:$("#1b").k(),1i:$("#1i").k(),Q:$("#Q").k(),Z:$("#Z").k(),Y:$("#Y").k(),X:$("#X").k(),V:$("#V").k(),1a:$("#1a").k(),U:$("#U").k(),N:$("#N").k(),};1o(c,"3s",1m,2u)};t 3E(){x($("#u").k()==p||$("#u").k()==""){L(1q);J}x($("#A").k()==p||$("#A").k()==""){L(3F);J}m a={S:$("#T").k(),u:$("#u n:w").k(),y:$("#y n:w").k(),z:$("#z n:w").k(),A:$("#A").k()};1o(a,"3O",1m,3T)};t 3U(){x($("#u").k()==p||$("#u").k()==""){L(1q);J}m a=1H 25();m b=1H 2W(j.1X-2);a.r("S",$("#T").k());x(1E=="0"){2A(m i=2;i<j.1X;i++){m c=1H 25();c.r("u",j.l(i,22));c.r("y",j.l(i,23));c.r("z",j.l(i,24));c.r("A",j.l(i,1));c.r("1e",j.l(i,2));c.r("1g",j.l(i,3));c.r("W",j.l(i,4));c.r("R",j.l(i,5));c.r("Q",j.l(i,6));c.r("Z",j.l(i,7));c.r("Y",j.l(i,8));c.r("X",j.l(i,9));c.r("1b",j.l(i,10));c.r("1i",j.l(i,11));c.r("V",j.l(i,12));c.r("1a",j.l(i,13));c.r("U",j.l(i,14));c.r("N",j.l(i,15));c.r("1f",j.l(i,16));c.r("1d",j.l(i,17));c.r("1G",j.l(i,21));b[i-2]=c}}1n{m d=$("#y n:w").k();x(d==""||d==p)d="F";m e=$("#z n:w").k();x(e==""||e==p)e="F";2A(m i=2;i<j.1X;i++){m c=1H 25();c.r("u",$("#u").k());c.r("y",d);c.r("z",e);c.r("A",j.l(i,1));c.r("1e",j.l(i,2));c.r("1g",j.l(i,3));c.r("W",j.l(i,4));c.r("R",j.l(i,5));c.r("Q",j.l(i,6));c.r("Z",j.l(i,7));c.r("Y",j.l(i,8));c.r("X",j.l(i,9));c.r("1b",j.l(i,10));c.r("1i",j.l(i,11));c.r("V",j.l(i,12));c.r("1a",j.l(i,13));c.r("U",j.l(i,14));c.r("N",j.l(i,15));c.r("1f",j.l(i,16));c.r("1d",j.l(i,17));c.r("1c",j.l(i,19));c.r("1h",j.l(i,20));c.r("1G",j.l(i,21));b[i-2]=c}}a.37("38",b);m f=a.39();1o(f,"3a",29,2u)};t 3b(){x($("#u").k()==""){L(3c);J}x($("#1V").k()==""){L(3e);J}3f("2I",2J)};t 2J(){m a={1V:3i($("#1V").k())};1o(a,"3j",2Q,p)};t 1S(){m a=j.3k;m b=j.3l;m c="2K.1O?3n="+b+"&1B=3o";x(a==18){1M.1U(c,"",1T)}m d=j.3r();x(d<=1)J;x(j.l(d,22)==p||j.l(d,22)==\'\')J;m e=j.l(d,22);$("#u").k(j.l(d,22));m f=j.l(d,23);m g=j.l(d,24);$("#A").k(j.l(d,1));$("#1e").k(j.l(d,2));$("#1g").k(j.l(d,3));$("#W").k(j.l(d,4));$("#1f").k(j.l(d,16));$("#1d").k(j.l(d,17));$("#R").k(j.l(d,5));$("#1b").k(j.l(d,10));$("#1i").k(j.l(d,11));$("#Q").k(O(j.l(d,6)));$("#Z").k(O(j.l(d,7)));$("#Y").k(O(j.l(d,8)));$("#X").k(O(j.l(d,9)));$("#V").k(O(j.l(d,12)));$("#1a").k(O(j.l(d,13)));$("#U").k(O(j.l(d,14)));$("#N").k(O(j.l(d,15)));1P(e,f,g)};t 27(a){m b=j.3t();m c=j.3u();j.3v("3w-3x",b,c,b,c,"#3y")};t 3z(){x($("#u n:w").k()==""){L(1q);J}x(3A $("#u n:w").k()=="3B"){L(1q);J}x(j.1u(0)==\'-1\'){m a="F";x(!($("#y n:w").k()==""||$("#y n:w").k()==p))a=$("#y n:w").k();j.3D();j.1l(j.1R()-1,22,$("#u n:w").k());j.1l(j.1R()-1,23,a);m b="F";x($("#z n:w").k()>0){b=$("#z n:w").k()}j.1l(j.1R()-2,24,b)}1n{m a="F";x(!($("#y n:w").k()==""||$("#y n:w").k()==p))a=$("#y n:w").k();j.3G(j.1u(0),"3H");j.1l(j.1u(0),22,$("#u n:w").k());j.1l(j.1u(0),23,a);m b="F";x($("#z n:w").k()>0){b=$("#z n:w").k()}3I.3J("3K 2E : "+b);j.1l(j.1u(0),24,b)}};t 3L(){m a=j.3M();j.3N(a);$("#1Q v[1t=1s], #1Q 1j, #1Q 1v").k("")};t 3P(){m a="3Q.3R";3S("2I",a)};$(t(){$("#Q").M(P);$("#Z").M(P)});$(t(){$("#Y").M(P);$("#X").M(P)});$(t(){$("#V").M(P);$("#1a").M(P)});$(t(){$("#U").M(P);$("#N").M(P)});t 3V(){1M.1U("3W.1O","",1T)};t 3X(){m a="2K.1O?1B=31";1M.1U(a,"",1T)};',62,247,'|||||||||||||||||||objSBGrid|val|getTextMatrix|var|option|fn_SetSBGridCol|null|center|put|false|function|sTASK_ID|input|selected|if|sSEG_ID|sSEG_SUB_ID|sPRG_ID|yyyy|inputdate|dd|mm|00|true|ID|empty|return|value|alert|datepicker|sTEST_DEV_END_DT|fn_SetDateType|setCalendar|sPRJ_PLAN_STRT_DT|sIMP_RT|sPRJT_ID|searchPrjtID|sTEST_DEV_STRT_DT|sTEST_PLAN_STRT_DT|sPRG_TYPE|sPRJ_DEV_END_DT|sPRJ_DEV_STRT_DT|sPRJ_PLAN_END_DT|||||||||||sTEST_PLAN_END_DT|sBEFORE_PGM|sPRG_TYPE_NM|sDEV_USER_NM|sPRG_NM|sDEV_USER_ID|sPRG_EXTN|sIMP_RT_NM|sAFTER_PGM|select|objGridInitInfo|setTextMatrix|fn_SelectPrjtInfo|else|fn_AjaxSend|append|SELECT_TASK_ID|each|text|type|selectedRow|textarea|document|sDEV_STAGE|objColumnsInfo|sCODE|sCODE_NM|DV030101|prjtPrgmInfo|resultData|divSelType|output|sPROGRESS_RT|new|cboPgmImpt|sPRJT_STAGE|cboPgmType|addEventListener|window|Task|jsp|fn_SelectInitSegment|section|getRows|fn_SelectListInfo|popupStyle|open|sFILE_NM|itemSection|rows|planSection|testSection||||||Map|fileSection|fn_objSBGridChangeGrid|prjtDevInfo|fn_InitGrid|fn_AjaxSendParam|08|clear|fn_InitSBGrid|selection|fn_SetDataSelectInitTask|uploadFile|getElementById|300px|SBGrid|06|07|05|fn_SetDataSelectInitSegment|fn_SelectInitSegmentSub|fn_SetDataSelectInitSegmentSub|fn_SetDataSelectPrjtInfo|combo|04|03|PMS_PROC_INSERT|left|fn_File_Clear|uploadWbsFile|fn_SetDataInitLoad|02|for|getGrid|strId|09|id|imageS|fn_Init_Data|createColumns|DV03|fn_ExcelDataLoad|PU010112|onclick|rebuild|01|destroy|createSBDataGrid|fn_ExcelInitGrid|fn_SelectInitTask|sACTIVITY_ID|onvaluechanged|fn_InitLoad|DV030181|Array|DV030182|fn_Init_Clear|prjSegInfo|sSEG_NM|sTEXT_INFO|DV030183|prjPgmType|prjSegSubInfo|sSEG_SUB_NM|DV030111|putMapList|sPRG_INFO|jsonParse|DV030122|fn_InsertPrjtFile|SELECT_ACTIVITY_ID|prjTaskInfo|SELECT_MODIFY_FILE|fn_InsertUploadFile|fn_InsertPrjt|sTASK_NM|fn_GetFileName|DV030153|col|row|not|nSelRow|sGRID_INFO|prjPgmImpt|INSERT_PRJT_ID|getRow|DV030121|getMouseRow|getMouseCol|setCellStyle|background|color|F3F781|fn_AddRow|typeof|undefined|brswType|addItem|fn_DeletePrjt|SELECT_PRJM_ID|insertItem|below|console|log|segSubId|fn_DelRow|getClickedRow|deleteItem|DV030141|fn_FileDownload|uni_pms_dev_schedule|xls|fn_DownloadFile|PMS_PROC_DELETE|fn_ModifyPrjt|fn_SearchPrjtInfo|PU010101|fn_SearchUser|location'.split('|'),0,{}))

</script>
</head>

<body onload="fn_Init();">
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
	    		        <h2>[DV03] 개발일정등록</h2>
	    		        <!-- END : title -->
						<!-- START : search section -->
	    		        <div id="searchSection" class="section">
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
						<!-- START : input table section -->
	    		       
						<div id="taskSection" class="section">
		    		        <h4>TASK</h4>				
							<table class="table01" border="0" cellspacing="0" summary="">
								<tbody>
									<tr>
										<th class="w100"><pk>*</pk> TASK</th>
										<td>
											<select class="selectbox wp100" id="sTASK_ID" name="sTASK_ID" onChange="javascript:fn_SelectInitSegment('00', '', '');">
											</select>
										</td>
									</tr>
									<tr>
										<th class="w100">SEGMENT</th>
										<td>
											<select class="selectbox wp100" id="sSEG_ID" name="sSEG_ID" onChange="javascript:fn_SelectInitSegmentSub('00', '', '');">
											</select>
										</td>
									</tr>
									<tr>
										<th class="w100">SEGMENT SUB</th>
										<td>
											<select class="selectbox wp100" id="sSEG_SUB_ID" name="sSEG_SUB_ID">
											</select>
										</td>
									</tr>
								</tbody>
		    		        </table>
	    		        </div><!--//section-->
	    		        <!-- END : input table section -->
						
						<div id="itemSection" class="section">
		    		        <h4>프로그램 목록</h4>				
							<table class="table01" border="0" cellspacing="0" summary="">
								<tbody>
									<tr>
										<th class="w100"><pk>*</pk> 프로그램ID</th>
										<td >
											<input type="text" class="txtinp w100"  id="sPRG_ID" name="sPRG_ID" > 
										</td>
										<th class="w100">프로그램명</th>
										<td >
											<input type="text" class="txtinp wp99"  id="sPRG_NM" name="sPRG_NM"   > 
										</td>
									</tr>
									<tr>
										<th class="w100">프로그램종류</th>
										<td >
											<input type="text" class="txtinp w100"  id="sPRG_EXTN" name="sPRG_EXTN"   > 
										</td>
										<th class="w100">구분</th>
										<td >
											<select class="selectbox" id="sPRG_TYPE" name="sPRG_TYPE">
											</select>
										</td>
									</tr>
									<tr>
										<th class="w100">선행프로그램</th>
										<td >
											<input type="text" class="txtinp w100"  id="sBEFORE_PGM" name="sBEFORE_PGM"   > 
										</td>
										<th class="w100">후행프로그램</th>
										<td >
											<input type="text" class="txtinp w100"  id="sAFTER_PGM" name="sAFTER_PGM"   > 
										</td>
									</tr>
									<tr>	
										<th class="w100">중요도</th>
										<td >
											<select class="selectbox" id="sIMP_RT" name="sIMP_RT">
												</select>
										</td>	
										<th class="w100">담당자</th>
										<td>
											<input type="hidden" class="txtinp w100"  id="sDEV_USER_ID" name="sDEV_USER_ID"   >
											<input type="text" class="txtinp w100" id="sDEV_USER_NM" name="sDEV_USER_NM" readOnly  > 
											<a href="javascript:fn_SearchUser();" class="btn01" >검 색</a>
										</td>
									</tr>
									<!-- tr>
										<th class="w100">진행율</th>
										<td >
											<input type="text" class="txtinp w100"  id="sPROGRESS_RT" name="sPROGRESS_RT"   >% 
										</td>
									</tr-->
								</tbody>
		    		        </table>
	    		        </div><!--//section-->
	    		        <!-- END : input table section -->
						<div id="planSection" class="section">
		    		        <h4>개발일정</h4>				
							<table class="table01" border="0" cellspacing="0" summary="">
								<tbody>
									<tr>
										<th class="w100">계획시작일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sPRJ_PLAN_STRT_DT" name="sPRJ_PLAN_STRT_DT"   > 
										</td>
										<th class="w100">계획종료일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sPRJ_PLAN_END_DT" name="sPRJ_PLAN_END_DT"   > 
										</td>
										</tr>
										<tr>
										<th class="w100">시작일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sPRJ_DEV_STRT_DT" name="sPRJ_DEV_STRT_DT"   > 
										</td>
										<th class="w100">종료일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sPRJ_DEV_END_DT" name="sPRJ_DEV_END_DT"   > 
										</td>
									</tr>
								</tbody>
		    		        </table>
	    		        </div><!--//section-->
	    		        <!-- END : input table section -->	
	    		        <div id="testSection" class="section">
		    		        <h4>단위테스트일정</h4>				
							<table class="table01" border="0" cellspacing="0" summary="">
								<tbody>
									<tr>
										<th class="w100">계획시작일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sTEST_PLAN_STRT_DT" name="sTEST_PLAN_STRT_DT"   > 
										</td>
										<th class="w100">계획종료일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sTEST_PLAN_END_DT" name="sTEST_PLAN_END_DT"   > 
										</td>
										</tr>
										<tr>
										<th class="w100">시작일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sTEST_DEV_STRT_DT" name="sTEST_DEV_STRT_DT"   > 
										</td>
										<th class="w100">종료일자</th>
										<td >
											<input type="text" class="txtinp w100"  id="sTEST_DEV_END_DT" name="sTEST_DEV_END_DT"   > 
										</td>
									</tr>
								</tbody>
		    		        </table>
	    		        </div><!--//section-->
	    		        <!-- END : input table section -->	
	    		        <!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_Init_Data();" class="btnimg02">초기화</a></li>
	    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
	    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
	    		            </ul>
	    		        </div>
	    		        <!-- END : button section -->
						<!--//section-->
	    		        <div class="section">
	    		            <ul class="btnbox_top right">
	    		                <li><a href="javascript:fn_AddRow();" class="btn02">행추가</a></li>
	    		                <li><a href="javascript:fn_DelRow();" class="btn03">행 삭제</a></li>
	    		            </ul>
	    		        </div><!--//section-->
	    		        <!-- END : button section -->
						<!-- START : grid section -->
		    		    <!-- div class="section">
		    		    	<table class="table01" border="0" cellspacing="0" summary="">
		    		    		<tr>
			    		    		<td id="tdprjtDevInfo">
					    		    	<div id="prjtDevInfo">
										</div>
									<td>
								</tr>
								<tr>
									<td id="tdprjtDevInfoExcel" style="display:none;" >
				    		        	<div id="prjtDevInfoExcel">
										</div>
									</td>
								</tr>
						</table>
		    		    </div-->
		    		    
		    		    <div class="section">
		    		    	<div id="prjtDevInfo">
							</div>
		    		    </div>
		    		    <!-- END : grid section -->
						<div id="fileSection" class="section">
							<table class="table01" border="0" cellspacing="0" summary="">
								<tr>
									<th>일괄등록</th>
									<td>
										<div class="inputfileMR">
											<input type="text" class="txtinp w400" id="sFILE_NM" name="sFILE_NM" readOnly/>
											<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>  					
										</div>
									</td>
									<td>
										<ul class="tase right">
											<li><a href="javascript:fn_FileDownload()" class="btn01">양식 Download</a></li>
											<li><a href="javascript:fn_InsertPrjtFile()" class="btn01">양식Upload</a></li>
										</ul>
									</td>
								</tr>
							</table>     					
						</div>
						<div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저 장</a></li>
	    		            </ul>
	    		        </div>
					</div><!--//pixbox-->
	    		    <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sDEV_STAGE" name="sDEV_STAGE"/>
					</div>
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