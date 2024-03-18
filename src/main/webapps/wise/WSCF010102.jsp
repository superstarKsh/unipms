<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- start : Html Header -->
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
	if (sSEARCH_YN != null && sSEARCH_YN == 'Y') {
		
		var sSEARCH_RPRT_STRT_DT = '<%=(String) session.getAttribute("sSEARCH_RPRT_STRT_DT")%>';
		var sSEARCH_RPRT_END_DT  = '<%=(String) session.getAttribute("sSEARCH_RPRT_END_DT")%>';
		var sSEARCH_RPRT_YEAR    = '<%=(String) session.getAttribute("sSEARCH_RPRT_YEAR")%>';
		
		$("#sSEARCH_YN").val(sSEARCH_YN);
		$("#sSEARCH_RPRT_WEEK").val(sSEARCH_RPRT_STRT_DT + sSEARCH_RPRT_END_DT);
		$("#sSEARCH_RPRT_STRT_DT").val(sSEARCH_RPRT_STRT_DT);
		$("#sSEARCH_RPRT_END_DT").val(sSEARCH_RPRT_END_DT);
		$("#sSEARCH_RPRT_YEAR").val(sSEARCH_RPRT_YEAR);
	}
	
	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('f 1n(){6 a={x:$("#H").5()};z(a,"1m",13,o)};f 13(c){6 d;d=c.12;6 e=\'<j u="">선 택</j>\';$.11(c.1e,f(a,b){e=e+\'<j u="\'+b.v+\'">\'+b.v+\'</j>\';$("#w").J().10(e)});g($("#B").5()=="Y"){$("#w").5($("#1c").5())}n{$("#w").5(d.v)}M()};f M(){$("#r").J();6 a={x:$("#H").5(),v:$("#w j:L").5()};z(a,"1a",X,o)};f X(c){6 d=c.12;6 e=\'<j u="">선 택</j>\';$.11(c.18,f(a,b){e=e+\'<j u="\'+b.s+b.A+\'">\'+S(b.s,".")+" ~ "+S(b.A,".")+\'</j>\';$("#r").J().10(e)});g($("#B").5()=="Y"){$("#r").5($("#1d").5())}n{$("#r").5(d.s+d.A)}R()};f R(){g($("#B").5()==\'Y\'){6 a="";a+="B=N";1g(a,"1f.G",o,K)}n{K()}};f 1b(){I.W="Z.G"};f K(){6 a=$("#r j:L").5();g(a=="")P;6 b={x:$("#H").5(),s:a.l(0,8)};z(b,"1j",Q,o)};f Q(a){6 b=a.19;g(b!=o){$("#E").5(b.E);$("#D").5(b.D);$("#C").5(b.C);$("#t").5(b.t)}};f T(){6 a=$("#r j:L").5();6 b={x:$("#H").5(),s:a.l(0,8),A:a.l(8,16),E:$("#E").5(),D:$("#D").5(),C:$("#C").5(),t:1h($("#t").5())};z(b,"1i",U,o)};f 1k(){1l("V",T)};f 1o(){y(6 i=1;i<h.F;i++){g(h.q(i,0).l(4,9)=="k.k")h.p(i,1);n g(h.q(i,0).l(7,9)=="k")h.p(i,2);n h.p(i,3)}h.14("15");y(6 i=1;i<m.F;i++){g(m.q(i,0).l(4,9)=="k.k")m.p(i,1);n g(h.q(i,0).l(7,9)=="k")m.p(i,2);n m.p(i,3)}m.14("15");y(6 i=1;i<h.F;i++){g(h.q(i,0).l(4,9)=="k.k")h.17(i,O)}y(6 i=1;i<m.F;i++){g(m.q(i,0).l(4,9)=="k.k")m.17(i,O)}};f 1p(){6 a=$("#t").5();g(a=="")P;1q("V",a)};f U(){I.W="Z.G"};f 1r(){I.1s("1t.G","",1u)};',62,93,'|||||val|var|||||||||function|if|objSBGrid||option|00|substring|objSBGridNext|else|null|setGroupLevel|getTextMatrix|searchPrjtRptDt|sSTRT_DT|sFILE_NM|value|sPRJT_YEAR|searchPrjtRptYear|sPRJT_ID|for|fn_AjaxSend|sEND_DT|sSEARCH_YN|sETC_CONTENTS|sNEXT_CONTENTS|sCURR_CONTENTS|rows|jsp|searchPrjtID|window|empty|fn_SelectPrjtInfo|selected|fn_SelectPrjtYear||true|return|fn_SetDataSelectPrjtInfo|fn_SessionCheck|fn_SetDateType|fn_InsertPrjt|fn_MoveToList|CF01|location|fn_SetDataSelectPrjtYear||WSCF010101|append|each|prjtCurrWeekInfo|fn_SetDataInitLoad|setGroup|complete||setGroupCollapsed|prjtWeekInfo|prjtWeekRptInfo|CF010182|fn_Init_Clear|sSEARCH_RPRT_YEAR|sSEARCH_RPRT_WEEK|prjtYearInfo|pms_session_cf0101|fn_AjaxSendSesUrl|fn_GetFileName|CF010121|CF010113|fn_InsertPrjtFile|fn_InsertUploadFile|CF010183|fn_InitLoad|fn_SetGridGroup|fn_FileDownload|fn_DownloadFile|fn_SearchPrjtInfo|open|PU010101|popupStyle'.split('|'),0,{}))

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
			<jsp:include page="../common/layout_left_cf.jsp" flush="true" />
		</div>
 		<div class="content">
    		<div class="cont">
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[CF01] 주간보고작성</h2>
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
    		                    <ul>
    		                        <li class="name"><span>주</span></li>
    		                        <li><select class="selectbox w100" id="searchPrjtRptYear" name="searchPrjtRptYear" onchange="javascript:fn_SelectPrjtYear()"></select></li>
    		                        <li><select class="selectbox w300" id="searchPrjtRptDt" name="searchPrjtRptDt"></select></li>
    		                    </ul>
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        <!-- END : search section -->
    		        <div class="section">
                        <ul class="btnbox right">
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                     	</ul>
                    </div>
    		        <!-- START : input table section -->
    		        <div class="section">
   		        		<h3>전주진행사항</h3>
	    		        <div id="currWeekInfo">
						</div>
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">내용</th>
    		                        <td colspan="3">
    		                        	<textarea style="width:715px;resize:none" cols="100" rows="15" id="sCURR_CONTENTS" name="sCURR_CONTENTS" ></textarea>
    		                        </td>
    		                    </tr>
    		                  </tbody>
    		             </table>
    		        </div> 
    		        <!-- START : input table section -->
    		        <br/>
    		        <div class="section">
  		                <h3>금주진행사항</h3>
	    		        <div id="nextWeekInfo">
						</div>
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">내용</th>
    		                        <td colspan="3">
    		                        	<textarea style="width:715px;resize:none" cols="100" rows="15" id="sNEXT_CONTENTS" name="sNEXT_CONTENTS" ></textarea>
    		                        </td>
    		                    </tr>
    		                  </tbody>
    		             </table>
    		         </div> 
    		        <!-- START : input table section -->
    		        <br/>
    		        <div class="section">
  		                <h3>이슈사항</h3>
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">내용</th>
    		                        <td colspan="3">
    		                        	<textarea style="width:715px;resize:none" cols="100" rows="15" id="sETC_CONTENTS" name="sETC_CONTENTS" ></textarea>
    		                        </td>
    		                    </tr>
    		                    <tr>
									<th>첨부파일</th>
									<td colspan="3">
										<div class="inputfile">
											<input type="text" class="txtinp w590" id="sFILE_NM" name="sFILE_NM" onclick="javascript:fn_FileDownload()" readOnly/>
											<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
										</div>
									</td>
								</tr>
    		                  </tbody>
    		             </table>
    		         </div>
    		         <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_MoveToList();" class="btnimg03">목록</a></li>
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div><!--//section-->
				</div><!--//pixbox-->
    		    <div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
					<input type="hidden" class="inputType" id="sSEARCH_RPRT_WEEK" name="sSEARCH_RPRT_WEEK"/>
					<input type="hidden" class="inputType" id="sSEARCH_RPRT_STRT_DT" name="sSEARCH_RPRT_STRT_DT"/>
					<input type="hidden" class="inputType" id="sSEARCH_RPRT_END_DT" name="sSEARCH_RPRT_END_DT"/>
					<input type="hidden" class="inputType" id="sSEARCH_RPRT_YEAR" name="sSEARCH_RPRT_YEAR"/>
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