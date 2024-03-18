<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('e 13(){9 a={o:$("#n").7()};p(a,"C",H,f)};e H(c){9 d=\'<k N="">선 택</k>\';$.1U(c.1S,e(a,b){d=d+\'<k N="\'+b.1N+\'">\'+b.1L+\'</k>\';$("#1J").I().J(d);$("#h").I().J(d)});L()};e L(){9 a="진행단계^산출물1C^산출물명^첨부파일^비고^진행단계1B^파일명";9 b="15%,15%,Q%,10%,Q%,10%,10%";T=1A("1z","8",a,b,"12","D",B,f);8=1x(T);G=[l("1v","w","1u","x",f,t),l("1t","w","j","x",f,t),l("1r","P","q","v",f,t),l("1q","1l","1k","x",f,t),l("1h","P","s","v",f,t),l("1f","w","h","v",f,B),l("1d","w","r","v",f,B)];8.19(G);8.17("14","K","","");11()};e 1y(){Z.16="C.Y"};e 11(){9 a={o:$("#n").7()};p(a,"18",X,f)};e X(a){D=a.1a;8.1b()};e 1c(){9 a={o:$("#n").7(),h:$("#h k:A").7()};p(a,"1e",V,f)};e V(a){9 b=a.1g;$("#j").7(b.j)};e U(){9 a={o:$("#n").7(),h:$("#h k:A").7(),j:$("#j").7(),q:$("#q").7(),r:1i($("#r").7()),s:$("#s").7()};p(a,"1j",z,S)};e 1m(){9 a={o:$("#n").7(),h:$("#h k:A").7(),j:$("#j").7()};p(a,"1n",z,1o)};e 1p(){9 a=y O();9 b=y 1s(8.M-1);a.m("o",$("#n").7());1w(9 i=1;i<8.M;i++){9 c=y O();c.m("h",8.g(i,5));c.m("j",8.g(i,1));c.m("q",8.g(i,2));c.m("r",8.g(i,6));c.m("s",8.g(i,4));b[i-1]=c};a.1D("1E",b);9 d=a.1F();p(d,"1G",z,S)};e K(){9 a=8.1H();9 b=8.1I();$("#h").7(8.g(a,5));$("#j").7(8.g(a,1));$("#q").7(8.g(a,2));$("#r").7(8.g(a,6));$("#s").7(8.g(a,4));u(1K==1){F.1M("E").1O();F.1P.1Q()}1R{$("#E").7("")}u(a<=0)W;u(b==3){9 c=8.g(a,6);u(c=="")W;1T("R",c)}};e 1V(){1W("R",U)};e 1X(){Z.1Y("1Z.Y","",20)};',62,125,'|||||||val|objSBGrid|var|||||function|null|getTextMatrix|sPRJT_STAGE||sOUPUT_POOL_ID|option|fn_SetSBGridCol|put|searchPrjtID|sPRJT_ID|fn_AjaxSend|sOUTPUT_NM|sFILE_NM|sOUTPUT_DESC|false|if|left|output|center|new|fn_Init|selected|true|AD040101|resultData|uploadFile|document|objColumnsInfo|fn_SetDataInitLoad|empty|append|fn_SelectListInfo|fn_InitGrid|rows|value|Map|input|30|AD04|PMS_PROC_INSERT|objGridInitInfo|fn_InsertPrjt|fn_SetDataSearchOutputId|return|fn_SetDataSelectPrjtInfo|jsp|window||fn_SelectPrjtInfo|300px|fn_InitLoad|onclick||location|addEventListener|AD040111|createColumns|outputInfo|rebuild|fn_SearchOutputId|06|AD040102|05|outputPoolID|04|fn_GetFileName|AD040121|sIMG_URL|imageF|fn_DeletePrjt|AD040141|PMS_PROC_DELETE|fn_ModifyPrjt|03|02|Array|01|sPRJT_STAGE_NM|00|for|createSBDataGrid|fn_Init_Clear|prjtOutputInfo|fn_InitSBGrid|CODE|ID|putMapList|sPRJT_OUTPUT|jsonParse|AD040122|getRow|getCol|searchPrjtStage|brswType|sCODE_NM|getElementById|sCODE|select|selection|clear|else|prjtStage|fn_DownloadFile|each|fn_InsertPrjtFile|fn_InsertUploadFile|fn_SearchPrjtInfo|open|PU010101|popupStyle'.split('|'),0,{}))

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div id="wrap">

	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header_admin.jsp" flush="true" />
	</div>

	<div id="container">

		<div id="leftWrap">
			<jsp:include page="../common/layout_left_ad.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
    			<!-- Form -->
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
	    		    <div class="fixbox">
	
						<!-- START : title -->
	    		        <h2>[AD04] 산출물 POOL 관리</h2>
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
	    		        <!-- END : search section -->
						<!-- START : input table section -->
	    		        <div id="section" class="section">
	    		            <table class="table01" border="0" cellspacing="0" summary="">
	    		                <tbody>
	    		                    <tr>
	    		                        <th class="w100">진행단계</th>
	    		                        <td>
	    		                        	<select class="selectbox" id="sPRJT_STAGE" name="sPRJT_STAGE" onchange="javascript:fn_SearchOutputId();">
											</select>
	    		                        </td>
	    		                        <th class="w100">산출물 ID</th>
	    		                        <td>
	                                        <input type="text" class="txtinp w100" id="sOUPUT_POOL_ID" name="sOUPUT_POOL_ID"/>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">산출물명</th>
	    		                        <td colspan="3">
											<input type="text" class="txtinp w700" name="sOUTPUT_NM" id="sOUTPUT_NM" />
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">비고</th>
	    		                        <td colspan="3">
											<textarea class="txtinp w700" cols="100" rows="5" name="sOUTPUT_DESC" id="sOUTPUT_DESC" ></textarea>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
										<th>첨부파일</th>
										<td colspan="3">
											<div class="inputfile">
												<input type="text" class="txtinp w590" id="sFILE_NM" name="sFILE_NM" readOnly/>
												<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
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
	    		        </div><!--//section-->
	    		        <!-- END : button section -->
	
		    		    <!-- START : grid section -->
		    		    <div class="section">
		    		        <div id="prjtOutputInfo">
							</div>
		    		    </div>
		    		    <!-- END : grid section -->
	
						<!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
	    		            </ul>
	    		        </div><!--//section-->
	    		        <!-- END : button section -->
	    		    
	    		    </div><!--//pixbox-->
	    		    <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sSEQ_NO" name="sSEQ_NO"/>
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