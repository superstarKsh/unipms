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

	var sSEARCH_YN = '<%=(String) session.getAttribute("sSEARCH_YN")%>';
	if (sSEARCH_YN != null && sSEARCH_YN=='Y') {
		$("#sSEARCH_ACTIVITY_ID").val("<%=(String) session.getAttribute("sSEARCH_ACTIVITY_ID")%>");
	}

	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('9 1G(){6 c=\'<E H="">선 택</E>\';$.2i(2g,9(a,b){c=c+\'<E H="\'+b.2e+\'">\'+b.H+\'</E>\';$("#t").2b().2a(c)});11()};9 11(){6 a="12 1t^12 명^v^t^z^A^r^S^13^15^16";6 b="17%,1U%,10%,10%,10%,10%,10%,10%,10%,10%,10%";18=19("1K","7",a,b,"1J","1g",p,8);7=1k(18);1l=[k("q","l","x","n",8,w),k("1n","l","S","n",8,w),k("1s","l","v","n",8,p),k("1q","l","t","n",8,p),k("1v","l","z","n",8,p),k("1D","l","A","n",8,p),k("1F","l","r","n",8,p),k("1X","l","S","n",8,p),k("1Y","l","13","n",8,p),k("21","l","15","n",8,p),k("10","l","16","n",8,p)];7.X(1l);7.1e("V","F","","");a="*파일버전^파일명^파일명^등록일자";b="25%,17%,5%,28%";Y=19("24","o",a,b,"20","R",p,8);o=1k(Y);14=[k("q","l","r","Q",8,w),k("1n","l","z","n",8,w),k("1s","1W","","Q",8,w),k("1q","l","v","Q","1V.1T.1S",w)];o.X(14);o.1e("V","1a","","");1b()};9 1R(){1d.1I="1H.G"};9 P(){$("#O 1B[1A=1z], #O 1m, #O 1y").4("");1p()};9 1p(){j(1u==1){1r.1Z("1o").1m();1r.1w.1x()}u{$("#1o").4("")}};9 1b(){6 a={M:$("#L").4()};1j(a,"1C",1i,8)};9 1i(a){1g=a.1E;R=a.1h;7.I();o.I();1f()};9 U(){6 a={M:$("#L").4(),B:$("#B").4(),y:$("#y").4(),A:$("#A").4(),x:$("#x").4(),r:$("#r").4(),v:$("#v").4(),t:$("#t").4(),1L:1M($("#z").4())};1j(a,"1N",F,1O)};9 1P(){1Q("1c",U)};9 F(){6 a=7.C();j(a<=0)J;P();$("#A").4(7.m(a,5));6 b=7.m(a,0);6 c="";6 d="";6 e="q";j(b.D==1){c=b}u{j(b.s(3,5)=="q"){c=b.s(0,1);d=b}u{c=b.s(0,1);d=b.s(0,3)+"q";e=b}}6 f={M:$("#L").4(),B:c,y:d,x:e};22(f,"23",Z,8,c,d,e)};9 Z(a,b,c,d){R=a.1h;6 e=7.C();j(e>=1)$("#r").4(a.26.r);$("#t").4(7.m(e,3));$("#B").4(b);$("#y").4(c);$("#x").4(d);o.I()};9 1a(){6 a=o.C();j(a<=0)J;P();6 b=7.C();6 c=7.m(b,0);6 d="";6 e="";6 f="q";j(c.D==1){d=c}u{j(c.s(3,5)=="q"){d=c.s(0,1);e=c}u{d=c.s(0,1);e=c.s(0,3)+"q";f=c}}$("#r").4(o.m(a,0));$("#z").4(o.m(a,1));$("#v").4(27(o.m(a,3)));$("#B").4(d);$("#y").4(e);$("#x").4(f);$("#t").4(7.m(b,3));6 g=o.29();j(g==\'2\'){6 h=o.m(a,1);j(h=="")J;2c("1c",h)}};9 1f(){6 a="";2d(6 i=1;i<7.2f;i++){j(7.m(i,0).D==1)7.T(i,1);u j(7.m(i,0).2h(7.m(i,0).D-2,2)=="q")7.T(i,2);u 7.T(i,3);j($("#K").4()==7.m(i,0)){a=i}}7.2j("2k");j($("#K").4()!=""){j(a!=""){7.2l(a);F()};$("#K").4("");W()}};9 W(){6 a="";a+="2m=N";2n(a,"2o.G",8,8)};$(9(){$("#v").2p(2q)});9 2r(){1d.2s("2t.G","",2u)};',62,155,'||||val||var|objSBGrid|null|function||||||||||if|fn_SetSBGridCol|output|getTextMatrix|left|objSBGridDetail|true|00|sFILE_VER|substring|sCMPL_YN|else|sCMPL_DT|false|sTASK_ID|sACTIVITY_ID|sCMPL_FILE_NM|sQTYPE|sMNG_STAGE|getRow|length|option|fn_SelectListInfo|jsp|value|rebuild|return|sSEARCH_ACTIVITY_ID|searchPrjtID|sPRJT_ID||tableDiv|fn_Init_Data|center|resultDataDetail|sTASK_NM|setGroupLevel|fn_InsertPrjt|onclick|fn_SessionCheck|createColumns|objGridInitInfoDetail|fn_SetDataSelectListInfo||fn_InitGrid|TASK|sTASK_DESC|objColumnsInfoDetail|sDEF_FILE_NM|sBIT|40|objGridInitInfo|fn_InitSBGrid|fn_SelectListInfoDetail|fn_SelectPrjtInfo|MG13|window|addEventListener|fn_SetGridGroup|resultData|verInfo|fn_SetDataSelectPrjtInfo|fn_AjaxSend|createSBDataGrid|objColumnsInfo|select|01|uploadFile|fn_File_Clear|03|document|02|ID|brswType|04|selection|clear|textarea|text|type|input|MG130111|05|mngInfo|06|fn_InitLoad|MG130101|location|550px|mngGrid|sFILE_NM|fn_GetFileName|MG130121|PMS_PROC_INSERT|fn_InsertPrjtFile|fn_InsertUploadFile|fn_Init_Clear|dd|mm|60|yyyy|imageS|07|08|getElementById|390px|09|fn_AjaxSendParam|MG130112|verGrid||FileVerInfo|fn_SetDateType|30|getCol|append|empty|fn_DownloadFile|for|label|rows|yesNo_YN|substr|each|setGroup|complete|setTopRow|sSEARCH_YN|fn_AjaxSendSesUrl|pms_session_mg1401|datepicker|setCalendar|fn_SearchPrjtInfo|open|PU010101|popupStyle'.split('|'),0,{}))

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
	    		        <h2>[MG13] 프로젝트사업관리</h2>
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
		    		        <div id="mngGrid" style="float:left; width:40%;">
							</div>
			    		    <div id="tableDiv" style="float:left; width:55%; padding-left:5%;">
								<table class="table01" border="0" cellspacing="0" summary="">
				    		    	<tbody>
										<tr>
											<th class="w100"><pk>*</pk> 파일버전</th>
											<td >
												<input  type="text" class="txtinp w100" id="sFILE_VER" name="sFILE_VER" /> 
											</td>
										</tr>
										<tr>	
											<th class="w100"><pk>*</pk> 파일명</th>
											<td >
												<div class="inputfileM" >
													<input type="text" class="txtinp w200" id="sCMPL_FILE_NM" name="sCMPL_FILE_NM" readOnly/>
													<p><input type="file" class="file_add"  id="uploadFile" name="uploadFile"  onchange="document.getElementById('sCMPL_FILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
										        </div>
											</td>
										</tr>
										<tr>
											<th class="w100">등록일자</th>
											<td >
												<input  type="text" class="txtinp w100" id="sCMPL_DT" name="sCMPL_DT"   > 
											</td>
										</tr>
										<tr>	
											<th class="w100">완료구분</th>
											<td >
												<select class="selectbox" id="sCMPL_YN" name="sCMPL_YN">
												</select>
											</td>
										</tr>
									</tbody>
			   		            </table>
		   		            </div>
							<div id="verGrid" style="float:left; width:55%; padding-left:5%; margin-top:20px">
							</div>
		 		      	</div>
						<!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
	    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
	    		            </ul>
	    		        </div>
					</div><!--//pixbox-->
					 <div id="hiddenColumn">
						<input  type="hidden" class="txtinp w100" id="sMNG_STAGE" name="sMNG_STAGE" /> 
						<input  type="hidden" class="txtinp w100" id="sACTIVITY_ID" name="sACTIVITY_ID" /> 
						<input  type="hidden" class="txtinp w100" id="sTASK_ID" name="sTASK_ID" /> 
						<input  type="hidden" class="txtinp w100" id="sQTYPE" name="sQTYPE" />  
						<input  type="hidden" class="txtinp w100" id="sCMPL_YN_RESULT" name="sCMPL_YN_RESULT" /> 
						<input  type="hidden" class="txtinp w100" id="sSEARCH_ACTIVITY_ID" name="sSEARCH_ACTIVITY_ID" />
						<input type="hidden" class="inputType" id="sCategory" name="sCategory" value="MG13"/>
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