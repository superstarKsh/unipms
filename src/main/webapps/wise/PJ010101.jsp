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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('7 n;7 B;8 2c(){7 a={k:$("#2a").5()};D(a,"1a",1X,l)};8 1X(c){7 d=\'<9 r="P">선 택</9>\';7 e=\'<9 r="P">선 택</9>\';7 f=\'<9 r="P">선 택</9>\';$.1b(c.2d,8(a,b){d=d+\'<9 r="\'+b.1q+\'">\'+b.1r+\'</9>\';$("#q").16().18(d)});$.1b(c.2f,8(a,b){e=e+\'<9 r="\'+b.1q+\'">\'+b.1r+\'</9>\';$("#G").16().18(e)});$.1b(c.2L,8(a,b){f=f+\'<9 r="\'+b.1q+\'">\'+b.1r+\'</9>\';$("#F").16().18(f)});1W()};8 1W(){7 a="단계^시작일자^종료일자^비고^";7 b="15%,15%,15%,2v%,10%";1U=1T("1v","h",a,b,"2u","17",T,l);h=1S(1U);1O=[y("P","1d","2i","t",l,J),y("2x","1N","1M","t","1L.1K.1J",J),y("2g","1N","1H","t","1L.1K.1J",J),y("2o","E","s","1G",l,J),y("2J","1d","1F","1G",l,T)];h.1E(1O);h.2M("2R","1C","","");1f()};8 1g(a){B=[{"1p":"M / M"}];7 b="";7 c="";7 i=0;b="월";c="10%";7 d=0.0;L(i=0;i<a.j;i++){b+="^"+a[i].14.1z(0,4)+"."+a[i].14.1z(4,6);m(a.j==1)c+=",2b%";v m(a.j==2)c+=",1c%";v m(a.j==3)c+=",20%";v c+=",15%";B[0]["w"+(i+1).x()]=a[i].p;m(a[i].p!="")d+=2w(a[i].p)}b+="^계";m(a.j==1)c+=",2b%";v m(a.j==2)c+=",1c%";v m(a.j==3)c+=",1c%";v c+=",15%";B[0]["w"+(a.j+1).x()]=d;7 e=1T("2X","n",b,c,"2z","B",T,l);m(2A.2C(e.2E)){n.2G()}n=1S(e);7 f=[{"1h":"1p","1i":"1d","1j":"1p","1k":"1l-1m:t;1n-1o:#2e"}];7 g;L(i=0;i<a.j;i++){g={};g.1h=\'w\'+(i+1).x();g.1j=\'w\'+(i+1).x();g.1i="E";g.1k="1l-1m:t;";f.1y(g);g=l}g={};g.1h=\'w\'+(a.j+1).x();g.1j=\'w\'+(a.j+1).x();g.1i="E";g.1k="1l-1m:t;";f.1y(g);g=l;n.1E(f)};8 2h(){Z.2j="1a.11"};8 1f(){7 a={k:$("#2a").5()};D(a,"2l",1x,l)};8 1x(a){7 b=a.2q;m(b==l)1u;$("#k").5(b.k);$("#H").5(b.H);$("#q").5(b.q);$("#12").5(b.12);$("#1Q").5(b.1Q);$("#G").5(b.G);$("#F").5(b.F);$("#Y").5(b.Y);$("#p").5(b.p);$("#O").5(b.O);$("#1A").5(b.1A);$("#I").5(b.I);$("#1B").5(b.1B);$("#C").5(1D(b.C,"."));$("#z").5(1D(b.z,"."));$("#W").5(b.W);$("#V").5(b.V);$(\'E:2O[2P=S]:E[r=\'+b.S+\']\').2T("1I",T);$("#R").5(b.R);$("#Q").5(b.Q);$("#13").5(b.13);$("#N").5(b.N);$("#K").5(b.K);$("#U").5(b.U);$("#s").5(b.s);17=a.1v;h.1P();1g(a.1w)};8 2k(){m($("#q").5()==l||$("#q").5()==""){1R(2m);1u}m($("#k").5()==l||$("#k").5()==""){1R(2n);1u}7 a={k:$("#k").5(),H:$("#H").5(),q:$("#q 9:19").5(),12:$("#12").5(),G:$("#G 9:19").5(),F:$("#F 9:19").5(),Y:$("#Y").5(),p:$("#p").5(),O:$("#O").5(),I:$("#I").5(),C:$("#C").5(),z:$("#z").5(),S:$("#S:1I").5(),W:$("#W").5(),V:$("#V").5(),R:$("#R").5(),Q:$("#Q").5(),13:$("#13").5(),N:$("#N").5(),K:$("#K").5(),U:$("#U").5(),s:$("#s").5()};D(a,"2p",1f,1t)};8 2r(){7 a=n.2s().2t(\'^\');7 b=u X();7 c=u 1V(a.j-2);b.o("k",$("#k").5());L(7 i=1;i<a.j-1;i++){7 d=u X();d.o("14",2y(a[i]));d.o("p",n.A(1,i));c[i-1]=d}b.1Y("2B",c);7 e=b.1Z();D(e,"2D",21,1t)};8 21(a){1g(a.1w)};8 2F(){7 a=u X();7 b=u 1V(h.22-1);a.o("k",$("#k").5());L(7 i=1;i<h.22;i++){7 c=u X();c.o("1F",h.A(i,4));c.o("1M",h.A(i,1));c.o("1H",h.A(i,2));c.o("s",h.A(i,3));b[i-1]=c}a.1Y("2H",b);7 d=a.1Z();D(d,"2I",23,1t)};8 23(a){17=a.1v;h.1P()};8 1C(a){7 b=h.24();7 c=h.25();h.26("1n-1o",b,c,b,c,"#27")};8 2N(a){7 b=n.24();7 c=n.25();m(c!=0){n.26("1n-1o",b,c,b,c,"#27")}};$(8(){$("#C").28(29);$("#z").28(29)});8 2Q(){Z.1s("2S.11","",1e)};8 2U(){Z.1s("2V.11","",1e)};8 2W(a){7 b="2K.11?1a="+a;Z.1s(b,"",1e)};',62,184,'|||||val||var|function|option||||||||objSBGrid||length|sPRJT_ID|null|if|objSBGridMmth|put|sMAN_MONTH|sCURR_STAGE|value|sETC_DISC|center|new|else|col|toString|fn_SetSBGridCol|sPRJT_END_DT|getTextMatrix|objResultMmthData|sPRJT_STRT_DT|fn_AjaxSend|input|sBIZ_TYPE|sBIZ_QUARTER|sPRJT_NM|sMAIN_BIZ_PART_CD|false|sETC_TYPE|for||sDBMS_TYPE|sCUS_CD|00|sOS_TYPE|sSERVER_TYPE|sPRJT_TYPE|true|sPRJT_DISC|sUSE_TOOL|sDEV_METHOD|Map|sBIZ_AMOUNT|window||jsp|sPRJT_MANG_ID|sPRGM_LANG|sYYYYMM||empty|resultData|append|selected|PJ010101|each|30|output|popupStyle|fn_SelectPrjtInfo|fn_CreateMnthGrid|id|type|ref|style|text|align|background|color|col0|sCODE|sCODE_NM|open|PMS_PROC_INSERT|return|prjtStageInfo|prjtMmthInfo|fn_SetDataSelectPrjtInfo|push|substring|sCUS_NM|sMAIN_BIZ_PART_NM|fn_ObjSBGridChangeGrid|fn_SetDateType|createColumns|sPRJT_STAGE|left|sEND_DT|checked|dd|mm|yyyy|sSTRT_DT|inputdate|objColumnsInfo|rebuild|sPRJT_MANG_NM|alert|createSBDataGrid|fn_InitSBGrid|objGridInitInfo|Array|fn_InitGrid|fn_SetDataInitLoad|putMapList|jsonParse||fn_SetDataModifyPrjtMM|rows|fn_SetDataModifyPrjtStage|getMouseRow|getMouseCol|setCellStyle|F3F781|datepicker|setCalendar|searchPrjtID|45|fn_InitLoad|prjtStage|EAEFF3|prjtBizQuater|02|fn_Init_Clear|sPRJT_STAGE_NM|location|fn_InsertPrjt|PJ010111|SELECT_PRJT_STAGE|INSERT_PRJT_ID|03|PJ010121|prjtInfo|fn_ModifyPrjtMM|getCaption|split|205px|55|parseFloat|01|fn_SearchNum|75px|SBGrid|sPRJT_MMONTH|getGrid|PJ010122A|strId|fn_ModifyPrjtStage|destroy|sPRJT_STAGE_INFO|PJ010122B|04|PU010121|prjtBizType|addEventListener|fn_ObjSBGridMmthChangeGrid|radio|name|fn_SearchPrjtInfo|onvaluechanged|PU010101|prop|fn_SearchUser|PU010111|fn_SearchCoop|mmthInfo'.split('|'),0,{}))

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

		    		<!--//section-->
			    	<div class="section">
		    		    <h3>일정정보현황</h3>
						<div id="prjtStageInfo">
						</div>
				   	</div>
			    		
					<!-- START : button section -->
		   	        <div class="section">
			            <ul class="btnbox right">
			                <li><a href="javascript:fn_ModifyPrjtStage();" class="btnimg03">저장</a></li>
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