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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('1 1f(){$("#C 6[16=15], #C 14, #C 13").0("");$(\'6:K[M=9]:6[5=11]\').G("F",W);U()};1 U(){4 a={};n(a,"E",R,Q)};1 R(c){4 d=\'<2 5="O">선 택</2>\';4 e=\'<2 5="O">선 택</2>\';$.D(c,1(a,b){$("#3").0(b.3)});$.D(c.1i,1(a,b){d=d+\'<2 5="\'+b.J+\'">\'+b.S+\'</2>\';$("#g").Z().N(d)});$.D(c.1k,1(a,b){e=e+\'<2 5="\'+b.J+\'">\'+b.S+\'</2>\';$("#f").Z().N(e)})};1 A(){w.1g="E.v"};1 19(){4 a={3:$("#17").0()};n(a,"12",L,Q)};1 L(a){4 b=a.1c;$("#3").0(b.3);$("#t").0(b.t);$("#s").0(b.s);$("#P").0(b.P);$("#g").0(b.g);$("#f").0(b.f);$("#q").0(b.q);$("#p").0(b.p);$("#o").0(b.o);$("#T").0(b.T);$("#k").0(b.k);$("#V").0(b.V);$("#7").0(X(b.7,"."));$("#8").0(X(b.8,"."));$("#h").0(b.h);$("#y").0(b.y);$(\'6:K[M=9]:6[5=\'+b.9+\']\').G("F",W);$("#u").0(b.u);$("#r").0(b.r);$("#l").0(b.l);$("#j").0(b.j);$("#i").0(b.i);$("#x").0(b.x);$("#m").0(b.m)};1 18(){4 a={3:$("#3").0(),t:$("#t").0(),s:$("#s").0(),g:$("#g 2:I").0(),f:$("#f 2:I").0(),q:$("#q").0(),p:$("#p").0(),o:$("#o").0(),k:$("#k").0(),7:$("#7").0(),8:$("#8").0(),9:$("#9:F").0(),h:$("#h").0(),y:$("#y").0(),u:$("#u").0(),r:$("#r").0(),l:$("#l").0(),j:$("#j").0(),i:$("#i").0(),x:$("#x").0(),m:$("#m").0()};n(a,"1a",A,1b)};1 10(){4 a={3:$("#3").0()};n(a,"1d",A,1e)};$(1(){$("#7").H(Y);$("#8").H(Y)});1 1h(){w.B("1j.v","",z)};1 1l(){w.B("1m.v","",z)};1 1n(a){4 b="1o.v?E="+a;w.B(b,"",z)};',62,87,'val|function|option|sPRJT_ID|var|value|input|sPRJT_STRT_DT|sPRJT_END_DT|sPRJT_TYPE||||||sBIZ_TYPE|sBIZ_QUARTER|sDEV_METHOD|sETC_TYPE|sDBMS_TYPE|sMAIN_BIZ_PART_CD|sPRGM_LANG|sETC_DISC|fn_AjaxSend|sCUS_CD|sMAN_MONTH|sBIZ_AMOUNT|sOS_TYPE|sPRJT_MANG_ID|sPRJT_NM|sSERVER_TYPE|jsp|window|sPRJT_DISC|sUSE_TOOL|popupStyle|fn_Init_Clear|open|container|each|AD010101|checked|prop|datepicker|selected|sCODE|radio|fn_SetDataSelectPrjtInfo|name|append|99|sPRJT_MANG_NM|null|fn_SetDataInitLoad|sCODE_NM|sCUS_NM|fn_InitLoad|sMAIN_BIZ_PART_NM|true|fn_SetDateType|setCalendar|empty|fn_DeletePrjt|01|AD010113|textarea|select|text|type|searchPrjtID|fn_InsertPrjt|fn_SelectPrjtInfo|AD010121|PMS_PROC_INSERT|prjtInfo|AD010141|PMS_PROC_DELETE|fn_Init|location|fn_SearchPrjtInfo|prjtBizQuater|PU010101|prjtBizType|fn_SearchUser|PU010111|fn_SearchCoop|PU010121'.split('|'),0,{}))

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div id="wrap">

	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header_admin.jsp" flush="true" />
	</div>
	<!-- END : include -->

	<div id="container">

		<div id="leftWrap">
			<jsp:include page="../common/layout_left_ad.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[AD01] 프로젝트생성</h2>
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
    		                        <th class="w100">프로젝트명</th>
    		                        <td colspan="3">
    		                        	<input type="text" class="txtinp w100" name="sPRJT_ID" id="sPRJT_ID"/>
    		                        	<input type="text" class="txtinp w300" name="sPRJT_NM" id="sPRJT_NM"/>
    		                        </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">진행단계</th>
    		                        <td>프로젝트생성</td>
                                    <th class="w100">PM</th>
    		                        <td>
    		                        	<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sPRJT_MANG_NM" name="sPRJT_MANG_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser();" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" id="sPRJT_MANG_ID" name="sPRJT_MANG_ID"/></li>
										</ul>
                                    </td>
    		                    </tr>
  								<tr>
									<th class="w100">사업본부 </th>
									<td>
										<select class="selectbox" id="sBIZ_QUARTER" name="sBIZ_QUARTER">
										</select>
									<th class="w100">사업구분</th>
									<td>
										<select class="selectbox" id="sBIZ_TYPE" name="sBIZ_TYPE">
										</select>
									</td>
								</tr>
								<tr>
									<th class="w100">총사업금액</th>
									<td>
										<input type="text" class="txtinp w100" id="sBIZ_AMOUNT" name="sBIZ_AMOUNT"/>
									</td>
									<th class="w100">투입인원 </th>
									<td>
										<input type="text" class="txtinp w100" id="sMAN_MONTH"  name="sMAN_MONTH">&nbsp;M/M
									</td>
								</tr>
								<tr>
									<th class="w100">고객사</th>
									<td>
										<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sCUS_NM" name="sCUS_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchCoop('sCUS_NM');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" id="sCUS_CD" name="sCUS_CD"/></li>
										</ul>
									</td>		
									<th class="w100">주사업자</th>
									<td>
										<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sMAIN_BIZ_PART_NM" name="sMAIN_BIZ_PART_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchCoop('sMAIN_BIZ_PART_NM');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" id="sMAIN_BIZ_PART_CD" name="sMAIN_BIZ_PART_CD"/></li>
										</ul>
									</td>
								</tr>
								<tr>
    		                        <th class="w100">시작일자</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sPRJT_STRT_DT" id="sPRJT_STRT_DT"/>
                                    </td>
                                    <th class="w100">종료일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sPRJT_END_DT" id="sPRJT_END_DT"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">사업유형</th>
    		                        <td colspan="3">
    		                        	
                                        <ul class="tase">
		    		                        <li><input type="radio" class="radiobox" id="sPRJT_TYPE" name="sPRJT_TYPE" value="01" checked/> SI</li>
		    		                        <li><input type="radio" class="radiobox" id="sPRJT_TYPE" name="sPRJT_TYPE" value="02" checked/> SM</li>
		    		                        <li><input type="radio" class="radiobox" id="sPRJT_TYPE" name="sPRJT_TYPE" value="03" checked/> Solution</li>
		    		                        <li><input type="radio" class="radiobox" id="sPRJT_TYPE" name="sPRJT_TYPE" value="04" checked/> 기타</li>
		    		                    </ul>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">개발방법론</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sDEV_METHOD" id="sDEV_METHOD"/>
                                    </td>
                                    <th class="w100">언어</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sPRGM_LANG" id="sPRGM_LANG"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">서버</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sSERVER_TYPE" id="sSERVER_TYPE"/>
                                    </td>
                                    <th class="w100">OS</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sOS_TYPE" id="sOS_TYPE"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">TOOL</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sUSE_TOOL" id="sUSE_TOOL"/>
                                    </td>
                                    <th class="w100">DBMS</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sDBMS_TYPE" id="sDBMS_TYPE"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">기타</th>
    		                        <td colspan="3">
                                        <input type="text" class="txtinp w700" name="sETC_TYPE" id="sETC_TYPE"/>
                                    </td>
    		                    </tr>
    		                    <tr class="last">
    		                    	<th class="w100">기타사항</th>
									<td colspan="3">
										<textarea class="txtinp w700" cols="100" rows="5" name="sETC_DISC" id="sETC_DISC" ></textarea>
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
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        <!-- END : button section -->

    		    </div><!--//pixbox-->
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