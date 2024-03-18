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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('g 1V(){m a={z:$("#y").9()};B(a,"1q",1n,f)};g 1n(c){m d=\'<q C="">선 택</q>\';m e=\'<q C="">선 택</q>\';$.1m(c.22,g(a,b){d=d+\'<q C="\'+b.1F+\'">\'+b.1D+\'</q>\';$("#K").11().Z(d)});$.1m(1A,g(a,b){e=e+\'<q C="\'+b.1I+\'">\'+b.C+\'</q>\';$("#w").11().Z(e)});1g()};g 1g(){m a="산출물1M^산출물명^진행단계^완료구분^1R";m b="1L%,2j%,10%,10%,10%";17=12("1C","h",a,b,"24","G",p,f);h=18(17);X=[k("16","l","t","F",f,v),k("19","l","1d","F",f,v),k("1e","l","r","o",f,p),k("1o","l","w","o",f,p),k("1p","l","u","o",f,p)];h.1s(X);h.1t("U","O","","");a="26^28^산출물명^첨부파일^파일명^완료구분^담당자^완료일자";b="10%,29%,2d%,20%,10%,10%,10%,10%";W=12("2p","j",a,b,"1G","J",p,f);j=18(W);Y=[k("16","l","t","o",f,p),k("19","l","x","o",f,v),k("1e","l","1d","F",f,v),k("1o","1O","1Q","o",f,v),k("1p","l","D","F",f,p),k("1T","l","w","o",f,v),k("1U","l","E","o",f,p),k("1W","l","A","o",f,p),k("25","l","13","o",f,p),k("27","l","r","o",f,p),k("10","l","u","o",f,p)];j.1s(Y);j.1t("U","14","","");15()};g 2c(){L.2e="1q.M"};g I(){$("#N 2r[1y=1z], #N 1a, #N 1B").9("");V()};g V(){s(1E==1){1b.1H("1c").1a();1b.1J.1K()}H{$("#1c").9("")}};g 15(){m a={z:$("#y").9(),r:$("#K q:P").9()};B(a,"1N",1f,f)};g 1f(a){G=a.1P;h.Q();1h()};g 1S(){m a={z:$("#y").9(),r:$("#K q:P").9()};B(a,"1i",1j,f)};g 1j(a){J=a.1k;j.Q()};g 1l(){m a={z:$("#y").9(),r:$("#r").9(),u:$("#u").9(),t:$("#t").9(),x:$("#x").9(),E:$("#E").9(),A:$("#A").9(),w:$("#w q:P").9(),D:1X($("#D").9())};B(a,"1Y",O,1Z)};g 1h(){21(m i=1;i<h.23;i++){s(h.n(i,0).R==1)h.S(i,1);H s(h.n(i,0).R==3)h.S(i,2);H h.S(i,3)}h.2a("2b")};g O(){m a=h.1r();s(a<=0)T;I();m b=h.n(a,0);s(b.R>3){$("#r").9(h.n(a,2));$("#u").9(h.n(a,4));$("#t").9(h.n(a,0));m c={z:$("#y").9(),r:$("#r").9(),u:$("#u").9(),t:$("#t").9()};B(c,"1i",1u,f)}};g 1u(a){J=a.1k;G=a.2f;$("#x").9(G.x);j.Q()};g 14(){m a=j.1r();m b=j.2g();s(a<=0)T;I();$("#t").9(j.n(a,0));$("#x").9(j.n(a,1));$("#D").9(j.n(a,4));$("#w").9(j.n(a,5));$("#E").9(j.n(a,6));$("#A").9(2h(j.n(a,7)));$("#13").9(j.n(a,8));s(b==3){m c=j.n(a,4);s(c=="")T;2i("1v",c)}};g 2k(){2l("1v",1l)};$(g(){$("#A").2m(2n)});g 2o(){L.1w("2q.M","",1x)};g 2s(){L.1w("2t.M","",1x)};',62,154,'|||||||||val||||||null|function|objSBGrid||objSBGridDetail|fn_SetSBGridCol|output|var|getTextMatrix|center|true|option|sPRJT_STAGE|if|sOUTPUT_ID|sTASK_ID|false|sMAKE_YN|sOUTPUT_VER|searchPrjtID|sPRJT_ID|sMAKE_DT|fn_AjaxSend|value|sFILE_NM|sMAKE_USER_ID|left|resultData|else|fn_Init_Data|resultDataDetail|searchPrjtStage|window|jsp|tableSection|fn_SelectListInfo|selected|rebuild|length|setGroupLevel|return|onclick|fn_File_Clear|objGridInitInfoDetail|objColumnsInfo|objColumnsInfoDetail|append||empty|fn_InitSBGrid|sMAKE_USER_NM|fn_SelectListInfoDetail|fn_SelectPrjtInfo|00|objGridInitInfo|createSBDataGrid|01|select|document|uploadFile|sOUTPUT_NM|02|fn_SetDataSelectPrjtInfo|fn_InitGrid|fn_SetGridGroup|DV060112|fn_SetDataSelectPrjtInfoDetail|outputVerInfo|fn_InsertPrjt|each|fn_SetDataInitLoad|03|04|DV060101|getRow|createColumns|addEventListener|fn_SetDataSelectListInfo|DV06|open|popupStyle|type|text|yesNo_YN|textarea|prjtOutputInfo|sCODE_NM|brswType|sCODE|360px|getElementById|label|selection|clear|45|ID|DV060111|imageF|outputInfo|sIMG_URL|TASK_ID|fn_SelectPrjtInfoDetail|05|06|fn_InitLoad|07|fn_GetFileName|DV060121|PMS_PROC_INSERT||for|prjtStage|rows|550px|08|id|09|Version|30|setGroup|complete|fn_Init_Clear|50|location|outputVerIDInfo|getCol|fn_SetDateType|fn_DownloadFile|55|fn_InsertPrjtFile|fn_InsertUploadFile|datepicker|setCalendar|fn_SearchPrjtInfo|prjtOutputVerInfo|PU010101|input|fn_SearchUser|PU010112'.split('|'),0,{}))

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
	    		        <h2>[DV06] 산출물등록</h2>
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
	    		                    <!-- 
	    		                    <ul>
	    		                        <li class="name"><span>진행단계</span></li>
	    		                        <li><select class="selectbox" id="searchPrjtStage" name="searchPrjtStage"></select></li>
	    		                    </ul>
	    		                     --> 
	    		                </div>
	    		            </div><!--//search-->
	    		        </div><!--//section-->
	    		        <div class="section">
	                        <ul class="btnbox right">
	                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
	                     	</ul>
	                    </div>
					
		    		    <div id="section" class="section">
		    		    	<div id="prjtOutputInfo" style="float:left; width:40%;">
							</div>
							<div id="tableSection" style="float:left; width:55%; padding-left:5%;">
								<table class="table01" border="0" cellspacing="0" summary="">
									<tbody>
					    		    	<tr>
											<th class="w100">Version</th>
											<td >
												<input  type="text" class="txtinp w100" id="sOUTPUT_VER" name="sOUTPUT_VER"   > 
											</td>
										</tr>
					    		        <tr>
											<th class="w100">작성일자</th>
											<td >
												<input  type="text" class="txtinp w100" id="sMAKE_DT" name="sMAKE_DT"   > 
											</td>
										</tr>
					    		        <tr>
											<th class="w100">완료구분</th>
											<td >
			                                    <select class="selectbox" name="selectbox" id="sMAKE_YN" name="sMAKE_YN">
												</select> 
											</td>
										</tr>
					    		        <tr>
											<th class="w100">작성자</th>
											<td >
												<input type="hidden" class="txtinp w100" id="sMAKE_USER_ID" name="sMAKE_USER_ID"   >
												<input type="text" class="txtinp w100" id="sMAKE_USER_NM" name="sMAKE_USER_NM" readOnly  > 
												<a href="javascript:fn_SearchUser();" class="btn01" >검 색</a> 
											</td>
										</tr>
										<tr>	
											<th class="w100">파일명</th>
											<td >
												<div class="inputfileM">
													<input type="text" class="txtinp w200" id="sFILE_NM" readOnly/>
													<p><input type="file" class="file_add" id="uploadFile" name="uploadFile" onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
											    </div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div id="prjtOutputVerInfo" style="float:left; width:55%; padding-left:5%; margin-top:20px">
							</div>
	   		           	</div>
	   		            
	   		            <!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
	    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
	    		            </ul>
	    		        </div>
	    		        <!-- END : button section -->
	    		        
					</div><!--//pixbox-->
					<div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sPRJT_STAGE" name="sPRJT_STAGE"/>
						<input type="hidden" class="inputType" id="sTASK_ID" name="sTASK_ID"/>
						<input type="hidden" class="inputType" id="sOUTPUT_ID" name="sOUTPUT_ID"/>
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