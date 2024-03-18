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
	
	$("#sPRJT_RPT_DT").val("");
	
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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('f 1C(){6 a={D:$("#K").5()};z(a,"1P",1w,j)};f 1w(c){6 d;d=c.1v;6 e=\'<l S="">선 택</l>\';$.1u(c.1L,f(a,b){e=e+\'<l S="\'+b.E+\'">\'+b.E+\'</l>\';$("#F").X().1s(e)});m($("#P").5()=="Y"){$("#F").5($("#1V").5())}s{$("#F").5(d.E)}1m()};f 1m(){$("#x").X();6 a={D:$("#K").5(),E:$("#F l:W").5()};z(a,"1S",1h,j)};f 1h(c){6 d=c.1v;6 e=\'<l S="">선 택</l>\';$.1u(c.1J,f(a,b){e=e+\'<l S="\'+b.r+b.u+\'">\'+1c(b.r,".")+" ~ "+1c(b.u,".")+\'</l>\';$("#x").X().1s(e)});m($("#P").5()=="Y"){$("#x").5($("#1T").5())}s{$("#x").5(d.r+d.u)}14()};f 14(){6 a="I 13^I(요구사항 기능)명^시작일자^종료일자";6 b="t%,12%,t%,t%";1r=1l("1B","g",a,b,"1e","1g",T,j);g=1d(1r);1j=[p("k","q","1i","O",j,o),p("1t","q","10","O",j,o),p("11","q","r","M","L.J.H",o),p("15","q","u","M","L.J.H",o)];g.17(1j);a="I 13^I(요구사항 기능)명^시작일자^종료일자";b="t%,12%,t%,t%";18=1l("1N","h",a,b,"1e","19",T,j);h=1d(18);1a=[p("k","q","1i","O",j,o),p("1t","q","10","O",j,o),p("11","q","r","M","L.J.H",o),p("15","q","u","M","L.J.H",o)];h.17(1a);1b()};f 1b(){m($("#P").5()==\'Y\'){6 a="";a+="P=N";1K(a,"1M.G",j,U)}s{U()}};f 1U(){V.1f="Z.G"};f U(){6 a=$("#x l:W").5();m(a=="")1F;6 b={D:$("#K").5(),r:a.n(0,8)};z(b,"1Z",1k,j)};f 1k(a){1g=a.1O;19=a.1Q;6 b=a.1R;m(b!=j){$("#B").5(b.B);$("#A").5(b.A);$("#y").5(b.y);$("#R").5(b.R)}g.1n();h.1n();1o()};f 1p(){6 a=$("#x l:W").5();6 b={D:$("#K").5(),r:a.n(0,8),u:a.n(8,16),B:$("#B").5(),A:$("#A").5(),y:$("#y").5(),R:1D($("#R").5())};z(b,"1E",1q,j)};f 1G(){1H("1I",1p)};f 1o(){Q(6 i=1;i<g.C;i++){m(g.w(i,0).n(4,9)=="k.k")g.v(i,1);s m(g.w(i,0).n(7,9)=="k")g.v(i,2);s g.v(i,3)}g.1x("1y");Q(6 i=1;i<h.C;i++){m(h.w(i,0).n(4,9)=="k.k")h.v(i,1);s m(g.w(i,0).n(7,9)=="k")h.v(i,2);s h.v(i,3)}h.1x("1y");Q(6 i=1;i<g.C;i++){m(g.w(i,0).n(4,9)=="k.k")g.1z(i,T)}Q(6 i=1;i<h.C;i++){m(h.w(i,0).n(4,9)=="k.k")h.1z(i,T)}};f 1q(){V.1f="Z.G"};f 1W(){V.1X("1Y.G","",1A)};',62,124,'|||||val|var|||||||||function|objSBGrid|objSBGridNext||null|00|option|if|substring|false|fn_SetSBGridCol|output|sSTRT_DT|else|20|sEND_DT|setGroupLevel|getTextMatrix|searchPrjtRptDt|sETC_CONTENTS|fn_AjaxSend|sNEXT_CONTENTS|sCURR_CONTENTS|rows|sPRJT_ID|sPRJT_YEAR|searchPrjtRptYear|jsp|dd|TASK|mm|searchPrjtID|yyyy|center||left|sSEARCH_YN|for|sFILE_NM|value|true|fn_SelectPrjtInfo|window|selected|empty||CF010101|sTASK_NM|02|40|ID|fn_InitGrid|03||createColumns|objGridInitInfoNext|resultDataNext|objColumnsInfoNext|fn_SessionCheck|fn_SetDateType|createSBDataGrid|200px|location|resultData|fn_SetDataSelectPrjtYear|sTASK_ID|objColumnsInfo|fn_SetDataSelectPrjtInfo|fn_InitSBGrid|fn_SelectPrjtYear|rebuild|fn_SetGridGroup|fn_InsertPrjt|fn_MoveToList|objGridInitInfo|append|01|each|prjtCurrWeekInfo|fn_SetDataInitLoad|setGroup|complete|setGroupCollapsed|popupStyle|currWeekInfo|fn_InitLoad|fn_GetFileName|CF010121|return|fn_InsertPrjtFile|fn_InsertUploadFile|CF01|prjtWeekInfo|fn_AjaxSendSesUrl|prjtYearInfo|pms_session_cf0101|nextWeekInfo|currWeekRpt|CF010183|nextWeekRpt|prjtWeekRptInfo|CF010182|sSEARCH_RPRT_WEEK|fn_Init_Clear|sSEARCH_RPRT_YEAR|fn_SearchPrjtInfo|open|PU010101|CF010113'.split('|'),0,{}))

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
   		        		<h3>금주진행사항</h3>
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
  		                <h3>차주예정사항</h3>
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
											<input type="text" class="txtinp w590" id="sFILE_NM" name="sFILE_NM" readOnly/>
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
</div><!--//wrap-->
<!--footer-->
<div id="footer">
	<jsp:include page="../common/layout_footer.jsp" flush="true" />
</div><!--//footer-->
</body>
</html>