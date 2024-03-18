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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('2 1c(){$("#F J[X=K], #F I, #F Q").1("");S()};2 S(){5 a={};r(a,"Y",11,l)};2 11(c){5 d=\'<3 h="Z">선 택</3>\';5 e=\'<3 h="Z">선 택</3>\';$.G(c,2(a,b){$("#4").1(b.4)});$.G(c.1v,2(a,b){d=d+\'<3 h="\'+b.M+\'">\'+b.P+\'</3>\';$("#7").U().V(d)});$.G(c.1t,2(a,b){e=e+\'<3 h="\'+b.M+\'">\'+b.P+\'</3>\';$("#8").U().V(e)})};2 E(){D.1h="Y.C"};2 1g(){5 a={4:$("#1e").1()};r(a,"1d",15,l)};2 15(a){5 b=a.1n;B(b==l){$("#A J[X=K], #A I, #A Q").1("");g}$("#4").1(b.4);$("#s").1(b.s);$("#t").1(b.t);$("#N").1(b.N);$("#7").1(b.7);$("#8").1(b.8);$("#6").1(b.6);$("#u").1(b.u);$("#v").1(b.v);$("#R").1(b.R);$("#k").1(b.k);$("#T").1(b.T);$("#w").1(f(b.w));$("#x").1(f(b.x));$("#y").1(b.y);$("#q").1(b.q);$("#p").1(b.p);$("#o").1(b.o);$("#n").1(b.n);$("#m").1(b.m);$("#j").1(b.j);$("#i").1(b.i);$("#z").1(b.z);$("#16").1(b.16);$("#17").1(b.17);$("#18").1(f(b.18));$("#19").1(b.19);$("#1a").1(b.1a);$("#1b").1(f(b.1b));$("#O").1(f(b.O));$("#H").1(b.H);$("#14").1(b.14);$("#13").1(b.13)};2 1f(){B(!12())g;5 a={4:$("#4").1(),s:$("#s").1(),t:$("#t").1(),7:$("#7 3:10").1(),8:$("#8 3:10").1(),6:$("#6").1(),u:$("#u").1(),v:$("#v").1(),k:$("#k").1(),w:$("#w").1(),x:$("#x").1(),y:$("#y").1(),q:$("#q").1(),p:$("#p").1(),o:$("#o").1(),n:$("#n").1(),m:$("#m").1(),j:$("#j").1(),i:$("#i").1(),z:$("#z").1()};r(a,"1i",E,1j)};2 1k(){5 a={4:$("#4").1()};r(a,"1l",E,1m)};2 12(){5 a=/([^0-9])/;5 b=$("#6").1().1o(a);B(b!=l){1p("총사업금액은 숫자만 입력가능합니다!");$("#6").1("");g 1q}g 1r};2 1s(){D.W("1u.C","",L)};2 1w(){D.W("1x.C","",L)};',62,96,'|val|function|option|sPRJT_ID|var|sBIZ_AMOUNT|sBIZ_QUARTER|sBIZ_TYPE|||||||fn_SetDateType|return|value|sPRJT_DISC|sETC_TYPE|sMAIN_BIZ_PART_CD|null|sDBMS_TYPE|sPRGM_LANG|sOS_TYPE|sSERVER_TYPE|sUSE_TOOL|fn_AjaxSend|sPRJT_NM|sPRJT_MANG_ID|sMAN_MONTH|sCUS_CD|sPRJT_STRT_DT|sPRJT_END_DT|sDEV_METHOD|sETC_DISC|section|if|jsp|window|fn_Init_Clear|container|each|sOUTSRC_AMT|select|input|text|popupStyle|sCODE|sPRJT_MANG_NM|sESTI_ED_DT|sCODE_NM|textarea|sCUS_NM|fn_InitLoad|sMAIN_BIZ_PART_NM|empty|append|open|type|WSAD010101|99|selected|fn_SetDataInitLoad|fn_CheckNumber|sCIRC_AMT|sFIXD_AMT|fn_SetDataSelectPrjtInfo|sCONT_NO|sCONT_AMT|sCONT_DT|sCONT_TYP|sACTIVE_TYP|sLIVE_ED_DT|fn_Init|WSAD010113|searchPrjtID|fn_InsertPrjt|fn_SelectPrjtInfo|location|WSAD010121|PMS_PROC_INSERT|fn_DeletePrjt|WSAD010141|PMS_PROC_DELETE|prjtInfo|match|alert|false|true|fn_SearchPrjtInfo|prjtBizType|PU010101|prjtBizQuater|fn_SearchPrjtInfoWise|WSPU010101'.split('|'),0,{}))

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
                        	<li class="pr10"><a href="javascript:fn_SearchPrjtInfoWise();" class="btn_search imgbtn_black">인트라넷 조회</a></li>
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
	    		                            <!--li><a href="javascript:fn_SearchUser();" class="btn01">검색</a></li-->
	    		                            <li><input type="hidden" id="sPRJT_MANG_ID" name="sPRJT_MANG_ID"/></li>
										</ul>
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
	    		                            <!--li><a href="javascript:fn_SearchCoop('sCUS_NM');" class="btn01">검색</a></li-->
	    		                            <li><input type="hidden" id="sCUS_CD" name="sCUS_CD"/></li>
										</ul>
									</td>		
									<th class="w100">주사업자</th>
									<td>
										<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sMAIN_BIZ_PART_NM" name="sMAIN_BIZ_PART_NM" readOnly/></li>
	    		                            <!--li><a href="javascript:fn_SearchCoop('sMAIN_BIZ_PART_NM');" class="btn01">검색</a></li-->
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
    		                    
									<!-- 추가 시작 -->
									<tr>	
										<th class="w100">계약번호</th>
										<td><input type="text" class="txtinp w100" id="sCONT_NO" name="sCONT_NO" /></td>
										<th class="w100">계약금액</th>
										<td><input type="text" class="txtinp w100" id="sCONT_AMT" name="sCONT_AMT" /></td>
									</tr>
									<tr>	
										<th class="w100">계약일</th>
										<td><input type="text" class="txtinp w100" id="sCONT_DT" name="sCONT_DT" /></td>
										<th class="w100">계약구분</th>
										<td><input type="text" class="txtinp w100" id="sCONT_TYP" name="sCONT_TYP" /></td>
									</tr>
									<tr>	
										<th class="w100">매출구분</th>
										<td><input type="text" class="txtinp w100" id="sACTIVE_TYP" name="sACTIVE_TYP" /></td>
										<th class="w100">실종료일</th>
										<td><input type="text" class="txtinp w100" id="sLIVE_ED_DT" name="sLIVE_ED_DT" /></td>
									</tr>
									<tr>	
										<th class="w100">종료예정일</th>
										<td><input type="text" class="txtinp w100" id="sESTI_ED_DT" name="sESTI_ED_DT" /></td>
										<th class="w100">외주금액</th>
										<td><input type="text" class="txtinp w100" id="sOUTSRC_AMT" name="sOUTSRC_AMT" /></td>
									</tr>
									<tr>	
										<th class="w100">고정예산</th>
										<td><input type="text" class="txtinp w100" id="sFIXD_AMT" name="sFIXD_AMT" /></td>
										<th class="w100">변동예산</th>
										<td><input type="text" class="txtinp w100" id="sCIRC_AMT" name="sCIRC_AMT" /></td>
									</tr>
									<!-- 추가 종료 -->
    		                    
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
    		                        <th class="w100">미들웨어/기타</th>
    		                        <td colspan="3">
                                        <input type="text" class="txtinp w700" name="sETC_TYPE" id="sETC_TYPE"/>
                                    </td>
    		                    </tr>
									<tr>
										<th class="w100">프로젝트설명</th>
										<td colspan="3">
											<textarea class="txtinp w700" cols="100" rows="5" name="sPRJT_DISC" id="sPRJT_DISC" ></textarea>
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