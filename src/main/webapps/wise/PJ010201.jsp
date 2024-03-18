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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('7 l;7 C;8 27(){7 a={m:$("#1t").5()};X(a,"1q",1r,j)};8 1r(c){7 d=\'<9 o="F">선 택</9>\';7 e=\'<9 o="F">선 택</9>\';7 f=\'<9 o="F">선 택</9>\';$.1j(c.21,8(a,b){d=d+\'<9 o="\'+b.1g+\'">\'+b.Z+\'</9>\';$("#p").1o().17(d)});$.1j(c.24,8(a,b){e=e+\'<9 o="\'+b.1g+\'">\'+b.Z+\'</9>\';$("#x").1o().17(e)});$.1j(c.2N,8(a,b){f=f+\'<9 o="\'+b.1g+\'">\'+b.Z+\'</9>\';$("#v").1o().17(f)});1Y()};8 1Y(){7 a="단계^시작일자^종료일자^비고^";7 b="15%,15%,15%,2v%,10%";1O=1L("2f","q",a,b,"2e","2d",T,j);q=1K(1O);1J=[w("F","1n","28","s",j,H),w("25","1H","23","s","1F.1D.1B",H),w("2J","1H","2G","s","1F.1D.1B",H),w("2F","A","B","1z",j,H),w("2s","1n","2m","1z",j,T)];q.1w(1J);q.2b("2a","1v","","");1c()};8 1d(a){C=[{"1e":"M / M"}];7 b="";7 c="";7 i=0;b="월";c="10%";7 d=0.0;1i(i=0;i<a.h;i++){b+="^"+a[i].1k.1u(0,4)+"."+a[i].1k.1u(4,6);k(a.h==1)c+=",1s%";u k(a.h==2)c+=",1p%";u k(a.h==3)c+=",20%";u c+=",15%";C[0]["t"+(i+1).r()]=a[i].n;k(a[i].n!="")d+=2g(a[i].n)}b+="^계";k(a.h==1)c+=",1s%";u k(a.h==2)c+=",1p%";u k(a.h==3)c+=",1p%";u c+=",15%";C[0]["t"+(a.h+1).r()]=d;7 e=1L("2h","l",b,c,"2C","C",T,j);k(2E.2I(e.2L)){l.1Z()}l=1K(e);7 f=[{"1m":"1e","1l":"1n","1h":"1e","1f":"Y-1b:s;1a-19:#2c"}];7 g;1i(i=0;i<a.h;i++){g={};g.1m=\'t\'+(i+1).r();g.1h=\'t\'+(i+1).r();g.1l="A";g.1f="Y-1b:s;";f.1x(g);g=j}g={};g.1m=\'t\'+(a.h+1).r();g.1h=\'t\'+(a.h+1).r();g.1l="A";g.1f="Y-1b:s;";f.1x(g);g=j;l.1w(f)};8 2j(){V.2o="1q.U"};8 1c(){7 a={m:$("#1t").5()};X(a,"2t",1y,j)};8 1y(a){7 b=a.2D;k(b==j)14;$("#m").5(b.m);$("#R").5(b.R);$("#p").5(b.p);$("#Q").5(b.Q);$("#1A").5(b.1A);$("#x").5(b.x);$("#v").5(b.v);$("#P").5(b.P);$("#n").5(b.n);$("#O").5(b.O);$("#1C").5(b.1C);$("#N").5(b.N);$("#1E").5(b.1E);$("#z").5(1G(b.z,"."));$("#y").5(1G(b.y,"."));$("#D").5(b.D);$("#I").5(b.I);$(\'A:26[2R=G]:A[o=\'+b.G+\']\').29("1I",T);$("#E").5(b.E);$("#W").5(b.W);$("#S").5(b.S);$("#L").5(b.L);$("#K").5(b.K);$("#J").5(b.J);$("#B").5(b.B);1d(a.1M)};8 2i(){k($("#p").5()==j||$("#p").5()==""){1N(2k);14}k($("#m").5()==j||$("#m").5()==""){1N(2l);14}7 a={m:$("#m").5(),R:$("#R").5(),p:$("#p 9:16").5(),Q:$("#Q").5(),x:$("#x 9:16").5(),v:$("#v 9:16").5(),P:$("#P").5(),n:$("#n").5(),O:$("#O").5(),N:$("#N").5(),z:$("#z").5(),y:$("#y").5(),G:$("#G:1I").5(),D:$("#D").5(),I:$("#I").5(),E:$("#E").5(),W:$("#W").5(),S:$("#S").5(),L:$("#L").5(),K:$("#K").5(),J:$("#J").5(),B:$("#B").5()};X(a,"2n",1c,1P)};8 2p(){7 a=l.2q().2r(\'^\');7 b=13 1Q();7 c=13 2u(a.h-2);b.12("m",$("#m").5());1i(7 i=1;i<a.h-1;i++){7 d=13 1Q();d.12("1k",2w(a[i]));d.12("n",l.2x(1,i));c[i-1]=d}b.2y("2z",c);7 e=b.2A();X(e,"2B",1R,1P)};8 1R(a){1d(a.1M)};8 1v(a){7 b=q.1S();7 c=q.1T();q.1U("1a-19",b,c,b,c,"#1V")};8 2H(a){7 b=l.1S();7 c=l.1T();k(c!=0){l.1U("1a-19",b,c,b,c,"#1V")}};$(8(){$("#z").1W(1X);$("#y").1W(1X)});8 2K(){V.18("2M.U","",11)};8 2O(){V.18("2P.U","",11)};8 2Q(a){7 b="22.U?1q="+a;V.18(b,"",11)};',62,178,'|||||val||var|function|option||||||||length||null|if|objSBGridMmth|sPRJT_ID|sMAN_MONTH|value|sCURR_STAGE|objSBGrid|toString|center|col|else|sBIZ_TYPE|fn_SetSBGridCol|sBIZ_QUARTER|sPRJT_END_DT|sPRJT_STRT_DT|input|sETC_DISC|objResultMmthData|sDEV_METHOD|sSERVER_TYPE|00|sPRJT_TYPE|false|sUSE_TOOL|sPRJT_DISC|sETC_TYPE|sDBMS_TYPE||sMAIN_BIZ_PART_CD|sCUS_CD|sBIZ_AMOUNT|sPRJT_MANG_ID|sPRJT_NM|sPRGM_LANG|true|jsp|window|sOS_TYPE|fn_AjaxSend|text|sCODE_NM||popupStyle|put|new|return||selected|append|open|color|background|align|fn_SelectPrjtInfo|fn_CreateMnthGrid|col0|style|sCODE|ref|for|each|sYYYYMM|type|id|output|empty|30|PJ010101|fn_SetDataInitLoad|45|searchPrjtID|substring|fn_ObjSBGridChangeGrid|createColumns|push|fn_SetDataSelectPrjtInfo|left|sPRJT_MANG_NM|dd|sCUS_NM|mm|sMAIN_BIZ_PART_NM|yyyy|fn_SetDateType|inputdate|checked|objColumnsInfo|createSBDataGrid|fn_InitSBGrid|prjtMmthInfo|alert|objGridInitInfo|PMS_PROC_INSERT|Map|fn_SetDataModifyPrjtMM|getMouseRow|getMouseCol|setCellStyle|F3F781|datepicker|setCalendar|fn_InitGrid|destroy||prjtStage|PU010121|sSTRT_DT|prjtBizQuater|01|radio|fn_InitLoad|sPRJT_STAGE_NM|prop|onvaluechanged|addEventListener|EAEFF3|resultData|205px|prjtStageInfo|parseFloat|mmthInfo|fn_InsertPrjt|fn_Init_Clear|SELECT_PRJT_STAGE|INSERT_PRJT_ID|sPRJT_STAGE|PJ010121|location|fn_ModifyPrjtMM|getCaption|split|04|PJ010111|Array|55|fn_SearchNum|getTextMatrix|putMapList|sPRJT_MMONTH|jsonParse|PJ010122A|75px|prjtInfo|SBGrid|03|sEND_DT|fn_ObjSBGridMmthChangeGrid|getGrid|02|fn_SearchPrjtInfo|strId|PU010101|prjtBizType|fn_SearchUser|PU010111|fn_SearchCoop|name'.split('|'),0,{}))

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
			<jsp:include page="../common/layout_left_pj.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[PJ01] 프로젝트정보관리</h2>
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
			
					<div id="section" class="section">
	    		        <table class="table01" border="0" cellspacing="0" summary="">
	    		            <tbody>
	    		                <tr>
									<th class="w100"><pk>*</pk> 프로젝트명</th>
									<td colspan="3">
										<input type="text" class="txtinp w100" name="sPRJT_ID" id="sPRJT_ID"/>
										<input type="text" class="txtinp w500"  name="sPRJT_NM" id="sPRJT_NM"/>
									</td>
								</tr>
								<tr>
									<th class="w100">진행단계</th>
									<td >
										<select class="selectbox" id="sCURR_STAGE" name="sCURR_STAGE">
										</select>
									</td>	
									<th>PM</th>
									<td>
										<input type="text" class="txtinp w100" id="sPRJT_MANG_NM" name="sPRJT_MANG_NM" readOnly/>
										<input type="hidden" class="txtinp w100" id="sPRJT_MANG_ID" name="sPRJT_MANG_ID"/>
										<a href="javascript:fn_SearchUser();" class="btn01">검 색</a>
									</td>
								</tr>
								<tr>
									<th class="w100">사업본부 </th>
									<td>
										<select class="selectbox" id="sBIZ_QUARTER" name="sBIZ_QUARTER">
										</select>
									</td>
									<th class="w100">사업구분</th>
									<td>
										<select class="selectbox" id="sBIZ_TYPE" name="sBIZ_TYPE">
										</select>
									</td>
								</tr>
								<tr>
									<th class="w100">총사업금액</th>
									<td><input type="text" class="txtinp w100" id="sBIZ_AMOUNT" name="sBIZ_AMOUNT"/></td>
									<th class="w100">투입인원 </th>
									<td><input type="text" class="txtinp w100" id="sMAN_MONTH"  name="sMAN_MONTH">&nbsp;M/M</td>
								</tr>
								<tr>
									<th class="w100">고객사</th>
									<td>
										<input type="text" class="txtinp w100" id="sCUS_NM" name="sCUS_NM" readOnly/>
										<input type="hidden" class="txtinp w100" id="sCUS_CD" name="sCUS_CD"/>
										<a href="javascript:fn_SearchCoop('sCUS_NM');" class="btn01">검 색</a>
									</td>		
									<th class="w100">주사업자</th>
									<td>
										<input type="text" class="txtinp w100" id="sMAIN_BIZ_PART_NM" name="sMAIN_BIZ_PART_NM" readOnly/>
										<input type="hidden" id="sMAIN_BIZ_PART_CD" name="sMAIN_BIZ_PART_CD"/>
										<a href="javascript:fn_SearchCoop('sMAIN_BIZ_PART_NM');" class="btn01">검 색</a>
									</td>
								</tr>
								<tr>	
									<th class="w100">시작일자</th>
									<td><input type="text" class="txtinp w100" id="sPRJT_STRT_DT" name="sPRJT_STRT_DT" /></td>
									<th class="w100">종료일자</th>
									<td><input type="text" class="txtinp w100" id="sPRJT_END_DT" name="sPRJT_END_DT" /></td>
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
									<td><input type="text" class="txtinp w200" id="sDEV_METHOD" name="sDEV_METHOD"/></td>
									<th class="w100">언어</th>
									<td><input type="text" class="txtinp w200" id="sPRGM_LANG" name="sPRGM_LANG" /></td>
								</tr>
								<tr>	
									<th class="w100">서버</th>
									<td><input type="text" class="txtinp w200" id="sSERVER_TYPE" name="sSERVER_TYPE" /></td>	
									<th class="w100">OS</th>
									<td><input type="text" class="txtinp w200" id="sOS_TYPE" name="sOS_TYPE" /></td>	
								</tr>
								<tr>
									<th class="w100">TOOL </th>
									<td><input type="text" class="txtinp w200" id="sUSE_TOOL" name="sUSE_TOOL" /></td>
									<th class="w100">DBMS</th>
									<td><input type="text" class="txtinp w200" id="sDBMS_TYPE" name="sDBMS_TYPE" /></td>
								</tr>
								<tr>
									<th class="w100">미들웨어/기타</th>
									<td colspan="3">
										<input type="text" class="txtinp w700"  id="sETC_TYPE"  name="sETC_TYPE"/>
									</td>
								</tr>
								<tr>
									<th class="w100">프로젝트설명</th>
									<td colspan="3">
										<textarea class="txtinp w700" cols="100" rows="5" name="sPRJT_DISC" id="sPRJT_DISC" ></textarea>
									</td>
								</tr>		
								<tr>
									<th class="w100">기타사항</th>
									<td colspan="3">
										<textarea class="txtinp w700" cols="100" rows="5" name="sETC_DISC" id="sETC_DISC" ></textarea>
									</td>
				   		          </tr>
				        	</tbody>
				        </table>
				    </div><!--//section-->
					<!-- END : input table section -->
			
					<div class="section">
		   		    	<ul class="btnbox right">
    		            	<li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
		   		        	<li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
		   		        </ul>
		    	    </div>
		    	    <!--//section-->
		   			<div class="section">
			        	<h3>인력투입계획</h3>
			            <div id="mmthInfo">
						</div>
			    	</div>
			    		
				   	<!-- START : button section -->
		   		    <div class="section">
		   		        <ul class="btnbox right">
		                    <li><a href="javascript:fn_ModifyPrjtMM();" class="btnimg03">저장</a></li>
		   	            </ul>
			        </div><!--//section-->
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