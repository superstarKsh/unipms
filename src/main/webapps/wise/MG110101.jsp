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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('h 1F(){N()};h N(){j a="1j 1i^1j명^설명";j b="15%,1W%,1s%";1h=18("17","s",a,b,"1I","L",o,g);s=12(1h);11=[k("Y","H","l","p",g,q),k("P","H","1L","w",g,q),k("O","H","1x","w",g,q)];s.M(11);s.1n("1k","B","","");a="*1e 1i^1e명^설명^파일명^첨부파일^완료파일버전^완료파일명^완료여부^완료일자";b="15%,1v%,1w%,0%,10%,10%,10%,10%,10%";W=18("Q","e",a,b,"23","16",o,g);e=12(W);V=[k("Y","n","r","p",g,q),k("P","n","A","w",g,q),k("O","n","z","w",g,q),k("1J","n","y","w",g,o),k("1O","1Q","1R","p",g,q),k("1S","n","t","p",g,o),k("21","n","x","p",g,o),k("1r","n","v","p",g,o),k("1t","n","E","p",g,o)];e.M(V);e.1n("1k","R","","");S()};h 1y(){T.2b="1G.U"};h G(){$("#I n[1M=1N], #I X, #I 1P").9("");Z()};h Z(){u(1T==1){13.22("14").X();13.25.1p()}1q{$("#14").9("")}};h S(){G();j a={C:$("#F").9()};D(a,"1u",19,g)};h 19(a){L=a.17;s.1a()};h 1b(){j a={C:$("#F").9(),l:$("#l").9(),r:$("#r").9(),A:$("#A").9(),z:$("#z").9(),y:1c($("#y").9()),x:1c($("#x").9()),t:$("#t").9(),v:$("#v").9(),E:$("#E").9()};D(a,"1z",B,1d)};h 1B(){j a={C:$("#F").9(),l:$("#l").9(),r:$("#r").9()};D(a,"1C",B,1D)};h 1E(){j a=J 1f();j b=J 1H(e.1g-1);a.m("C",$("#F").9());a.m("l",$("#l").9());1K(j i=1;i<e.1g;i++){j c=J 1f();c.m("r",e.f(i,0));c.m("A",e.f(i,1));c.m("z",e.f(i,2));c.m("y",e.f(i,3));c.m("t",e.f(i,5));c.m("x",e.f(i,6));c.m("v",e.f(i,7));c.m("E",e.f(i,8));b[i-1]=c}a.1U("1V",b);j d=a.1X();D(d,"1Y",B,1d)};h 1Z(){20("1l",1b)};h B(){G();j a=s.1m();u(a<=0)K;$("#l").9(s.f(a,0));j b={C:$("#F").9(),l:$("#l").9()};D(b,"24",1o,g)};h 1o(a){16=a.Q;e.1a()};h R(){G();j a=e.1m();u(a<=0)K;$("#r").9(e.f(a,0));$("#A").9(e.f(a,1));$("#z").9(e.f(a,2));$("#y").9(e.f(a,3));$("#t").9(e.f(a,5));$("#x").9(e.f(a,6));$("#v").9(e.f(a,7));$("#E").9(e.f(a,8));j b=e.26();u(b==\'4\'){j c=e.f(a,3);u(c=="")K;27("1l",c)}};h 28(){T.29("2a.U","",1A)};',62,136,'|||||||||val|||||objSBGridDetail|getTextMatrix|null|function||var|fn_SetSBGridCol|sMNG_STAGE|put|input|true|center|false|sACTIVITY_ID|objSBGrid|sCMPL_FILE_VER|if|sCMPL_YN|left|sCMPL_FILE_NM|sDEF_FILE_NM|sACTIVITY_DESC|sACTIVITY_NM|fn_SelectListInfo|sPRJT_ID|fn_AjaxSend|sCMPL_DT|searchPrjtID|fn_Init_Data|output|activitySection|new|return|resultData|createColumns|fn_InitGrid|02|01|activityInfo|fn_SelectListInfoDetail|fn_SelectPrjtInfo|window|jsp|objColumnsInfoDetail|objGridInitInfoDetail|select|00|fn_File_Clear||objColumnsInfo|createSBDataGrid|document|uploadFile||resultDataDetail|stageInfo|fn_InitSBGrid|fn_SetDataSelectPrjtInfo|rebuild|fn_InsertPrjt|fn_GetFileName|PMS_PROC_INSERT|ACTIVITY|Map|rows|objGridInitInfo|ID|STAGE|onclick|MG11|getRow|addEventListener|fn_SetDataSelectListInfo|clear|else|07|50|08|MG110111|30|45|sMNG_STAGE_DESC|fn_Init_Clear|MG110121|popupStyle|fn_DeletePrjt|MG110141|PMS_PROC_DELETE|fn_ModifyPrjt|fn_InitLoad|MG110101|Array|153px|03|for|sMNG_STAGE_NM|type|text|04|textarea|imageF|sIMG_URL|05|brswType|putMapList|sACTIVITY_LIST|35|jsonParse|MG110122|fn_InsertPrjtFile|fn_InsertUploadFile|06|getElementById|200px|MG110112|selection|getCol|fn_DownloadFile|fn_SearchPrjtInfo|open|PU010101|location'.split('|'),0,{}))

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
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
	    		    <div class="fixbox">
						<!-- START : title -->
	    		        <h2>[MG11] 사업관리(ACTIVITY)</h2>
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
			   			<!-- START : grid section -->
		    		    <div class="section">
		    		        <h3>STAGE</h3>
		    		        <div id="stageInfo">
							</div>
		    		    </div>
		    		    <!-- END : grid section -->
						<!-- START : input table section -->
						<br/>
	    		        <div id="activitySection" class="section">
	    		        	<h3>ACTIVITY</h3>
	    		            <table class="table01" border="0" cellspacing="0" summary="">
	    		                <tbody>
		    		                <tr>
										<th class="w100"><pk>*</pk> ACTIVITY ID</th>
										<td >
											<input type="text" class="txtinp w200" id="sACTIVITY_ID" name="sACTIVITY_ID" readonly/> 
										</td>
										<th class="w100">ACTIVITY명</th>
										<td >
											<input type="text" class="txtinp w200" id="sACTIVITY_NM" name="sACTIVITY_NM"/> 
										</td>
									</tr>
									<tr>
										<th class="w100">설명</th>
										<td colspan="3">
											<textarea class="txtinp w700" rows="5" id="sACTIVITY_DESC" name="sACTIVITY_DESC" ></textarea>
										</td>
									</tr>
									<tr>
										<th class="w100">파일명</th>
										<td colspan="3">
											<div class="inputfile">
												<input type="text" class="txtinp w580" id="sDEF_FILE_NM" readOnly/>
												<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sDEF_FILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
									        </div>
										</td>
									</tr>
					 			</tbody>
	    		            </table>
	    		        </div><!--//section-->
	    		        <!-- END : input table section -->
	
						<!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
	    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
	    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
	    		            </ul>
	    		        </div>
	    		        <!-- END : button section -->
	    		        <!-- START : grid section -->
		    		    <div class="section">
		    		        <div id="activityInfo">
							</div>
		    		    </div>
		    		    <!-- END : grid section -->
						<!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
	    		            </ul>
	    		        </div>
	    		        <!-- END : button section -->
	    		        
					</div><!--//pixbox-->
					<div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sCMPL_FILE_VER" name="sCMPL_FILE_VER"/>
						<input type="hidden" class="inputType" id="sCMPL_YN" name="sCMPL_YN"/>
						<input type="hidden" class="inputType" id="sCMPL_DT" name="sCMPL_DT"/>
						<input type="hidden" class="inputType" id="sCMPL_FILE_NM" name="sCMPL_FILE_NM"/>
						<input type="hidden" class="inputType" id="sMNG_STAGE" name="sMNG_STAGE"/>
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