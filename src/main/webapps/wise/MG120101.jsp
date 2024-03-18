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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('j 1V(){R()};j R(){h a="1I N^1p N^1p명^설명^파일명^첨부파일";h b="10%,15%,17%,1L%,10%,10%";1v=1s("T","l",a,b,"1o","1f",t,g);l=12(1v);V=[k("13","D","o","p",g,s),k("S","D","n","p",g,s),k("U","D","1H","v",g,s),k("W","D","1O","v",g,s),k("X","D","w","v",g,t),k("14","18","19","p",g,s)];l.1a(V);l.1d("1e","A","","");a="*1l N^1l명^설명^파일명^첨부파일^완료파일버전^완료파일명^완료여부^완료일자";b="15%,17%,22%,0%,10%,10%,10%,10%,10%";1q=1s("1r","e",a,b,"1o","1t",t,g);e=12(1q);1u=[k("13","q","r","p",g,s),k("S","q","F","v",g,s),k("U","q","G","v",g,s),k("W","q","w","v",g,t),k("X","18","19","p",g,s),k("14","q","H","p",g,t),k("20","q","z","p",g,t),k("24","q","E","p",g,t),k("1F","q","B","p",g,t)];e.1a(1u);e.1d("1e","Y","","");Z()};j 1M(){11.1S="2d.Q"};j I(){$("#K q[26=28], #K 16, #K 1E").9("");M()};j M(){u(1K==1){1b.1N("1c").16();1b.1P.1Q()}1R{$("#1c").9("")}};j Z(){I();h a={x:$("#y").9()};C(a,"21",1g,g)};j 1g(a){1f=a.T;l.1h()};j 1i(){h a={x:$("#y").9(),o:$("#o").9(),n:$("#n").9(),r:$("#r").9(),F:$("#F").9(),G:$("#G").9(),w:1j($("#w").9()),z:1j($("#z").9()),H:$("#H").9(),E:$("#E").9(),B:$("#B").9()};C(a,"29",A,1k)};j 1A(){h a={x:$("#y").9(),o:$("#o").9(),n:$("#n").9(),r:$("#r").9()};C(a,"1B",A,1C)};j 1D(){h a=L 1m();h b=L 1G(e.1n-1);a.m("x",$("#y").9());a.m("o",$("#o").9());a.m("n",$("#n").9());1J(h i=1;i<e.1n;i++){h c=L 1m();c.m("r",e.f(i,0));c.m("F",e.f(i,1));c.m("G",e.f(i,2));c.m("w",e.f(i,3));c.m("H",e.f(i,5));c.m("z",e.f(i,6));c.m("E",e.f(i,7));c.m("B",e.f(i,8));b[i-1]=c}a.1T("1U",b);h d=a.1W();C(d,"1X",A,1k)};j 1Y(){1Z("O",1i)};j A(){I();h a=l.P();u(a<=0)J;$("#o").9(l.f(a,0));$("#n").9(l.f(a,1));h b={x:$("#y").9(),o:$("#o").9(),n:$("#n").9()};C(b,"23",1w,g)};j 1w(a){1t=a.1r;e.1h();u(l.P()>=1)$("#r").9(a.25.r);h b=l.1x();u(b==\'5\'){h c=l.f(27,4);u(c=="")J;1y("O",c)}};j Y(){I();h a=e.P();u(a<=0)J;$("#r").9(e.f(a,0));$("#F").9(e.f(a,1));$("#G").9(e.f(a,2));$("#w").9(e.f(a,3));$("#x").9($("#y").9());$("#H").9(e.f(a,5));$("#z").9(e.f(a,6));$("#E").9(e.f(a,7));$("#B").9(e.f(a,8));M();h b=e.1x();u(b==\'4\'){h c=e.f(a,3);u(c=="")J;1y("O",c)}};j 2a(){11.2b("2c.Q","",1z)};',62,138,'|||||||||val|||||objSBGridDetail|getTextMatrix|null|var||function|fn_SetSBGridCol|objSBGrid|put|sACTIVITY_ID|sMNG_STAGE|center|input|sTASK_ID|false|true|if|left|sDEF_FILE_NM|sPRJT_ID|searchPrjtID|sCMPL_FILE_NM|fn_SelectListInfo|sCMPL_DT|fn_AjaxSend|output|sCMPL_YN|sTASK_NM|sTASK_DESC|sCMPL_FILE_VER|fn_Init_Data|return|taskSection|new|fn_File_Clear|ID|MG12|getRow|jsp|fn_InitGrid|01|activityInfo|02|objColumnsInfo|03|04|fn_SelectListInfoDetail|fn_SelectPrjtInfo||window|createSBDataGrid|00|05||select|30|imageF|sIMG_URL|createColumns|document|uploadFile|addEventListener|onclick|resultData|fn_SetDataSelectPrjtInfo|rebuild|fn_InsertPrjt|fn_GetFileName|PMS_PROC_INSERT|TASK|Map|rows|200px|ACTIVITY|objGridInitInfoDetail|taskInfo|fn_InitSBGrid|resultDataDetail|objColumnsInfoDetail|objGridInitInfo|fn_SetDataSelectListInfo|getCol|fn_DownloadFile|popupStyle|fn_DeletePrjt|MG120141|PMS_PROC_DELETE|fn_ModifyPrjt|textarea|08|Array|sACTIVITY_NM|STAGE|for|brswType|35|fn_Init_Clear|getElementById|sACTIVITY_DESC|selection|clear|else|location|putMapList|sTASK_LIST|fn_InitLoad|jsonParse|MG120122|fn_InsertPrjtFile|fn_InsertUploadFile|06|MG120111|45|MG120112|07|TaskIdInfo|type|nClickedRow|text|MG120121|fn_SearchPrjtInfo|open|PU010101|MG120101'.split('|'),0,{}))

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
	    		        <h2>[MG12] 사업관리(TASK)</h2>
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
		    		        <h3>ACTIVITY</h3>
		    		        <div id="activityInfo">
							</div>
		    		    </div>
		    		    <!-- END : grid section -->
		    		    
						<br/>
						<!-- START : input table section -->
	    		        <div id="taskSection" class="section">
	    		        	<h3>TASK</h3>
	    		            <table class="table01" border="0" cellspacing="0" summary="">
	    		                <tbody>
		    		                <tr>
										<th class="w100"><pk>*</pk> TASK ID</th>
										<td >
											<input type="text" class="txtinp w200" id="sTASK_ID" name="sTASK_ID" /> 
										</td>
										<th class="w100">TASK명</th>
										<td >
											<input type="text" class="txtinp w200" id="sTASK_NM" name="sTASK_NM"/> 
										</td>
									</tr>
									<tr>
										<th class="w100">설명</th>
										<td colspan="3">
											<textarea class="txtinp w700" rows="5" id="sTASK_DESC" name="sTASK_DESC" ></textarea>
										</td>
									</tr>
									<tr>
										<th class="w100">파일명</th>
										<td colspan="3">
											<div class="inputfile">
												<input type="text" class="txtinp w590" id="sDEF_FILE_NM" readOnly/>
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
		    		        <div id="taskInfo">
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
						<input type="hidden" class="inputType" id="sACTIVITY_ID" name="sACTIVITY_ID"/>
					</div>
	    		</form>	
	    	</div><!--//cont-->
		</div><!--//content-->
    </div><!--//container-->
    <div>
		<iframe id="dnjsp" name="dnjsp" frameborder="0" width="0" height="0" ></iframe>
	</div>
</div><!--//wrap-->
<!--footer-->
<div id="footer">
	<jsp:include page="../common/layout_footer.jsp" flush="true" />
</div><!--//footer-->
</body>
</html>