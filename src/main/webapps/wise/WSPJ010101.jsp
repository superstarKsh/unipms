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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('7 l;7 w;8 26(){7 a={j:$("#1W").5()};A(a,"1M",1L,k)};8 1L(c){7 d=\'<v 1J="1I">선 택</v>\';$.2D(c.22,8(a,b){d=d+\'<v 1J="\'+b.27+\'">\'+b.2h+\'</v>\';$("#p").2z().2C(d)});1H()};8 1H(){7 a="단계^시작일자^종료일자^비고^";7 b="15%,15%,15%,24%,10%";1X=1C("1h","9",a,b,"2A","12",1B,k);9=1A(1X);1z=[z("1I","W","2c","o",k,y),z("2w","1y","1x","o","1w.1u.1s",y),z("23","1y","1q","o","1w.1u.1s",y),z("25","14","q","28",k,y),z("29","W","1p","o",k,1B)];9.1n(1z);9.2m("2o","1m","","");X()};8 Y(a){w=[{"Z":"M / M"}];7 b="";7 c="";7 i=0;b="월";c="10%";7 d=0.0;G(i=0;i<a.g;i++){b+="^"+a[i].18.1k(0,4)+"."+a[i].18.1k(4,6);h(a.g==1)c+=",1D%";u h(a.g==2)c+=",1i%";u h(a.g==3)c+=",20%";u c+=",15%";w[0]["t"+(i+1).s()]=a[i].n;h(a[i].n!="")d+=2B(a[i].n)}b+="^계";h(a.g==1)c+=",1D%";u h(a.g==2)c+=",1i%";u h(a.g==3)c+=",1i%";u c+=",15%";w[0]["t"+(a.g+1).s()]=d;16=1C("2N","l",b,c,"2G","w",y,k);h(2I.1Y(16.1Z)){l.21()}l=1A(16);7 e=[{"19":"Z","1a":"W","1b":"Z","1c":"1d-1e:o;1f-1g:#2a"}];7 f;G(i=0;i<a.g;i++){f={};f.19=\'t\'+(i+1).s();f.1b=\'t\'+(i+1).s();f.1a="14";f.1c="1d-1e:o;";e.1j(f);f=k}f={};f.19=\'t\'+(a.g+1).s();f.1b=\'t\'+(a.g+1).s();f.1a="14";f.1c="1d-1e:o;";e.1j(f);f=k;l.1n(e)};8 2l(){L.2n="1M.I"};8 X(){7 a={j:$("#1W").5()};A(a,"2q",1l,k)};8 1l(a){7 b=a.2t;h(b==k)11;$("#j").5(b.j);$("#D").5(b.D);$("#p").5(b.p);$("#C").5(b.C);$("#1o").5(b.1o);$("#B").5(b.B);$("#n").5(b.n);$("#U").5(b.U);$("#1r").5(b.1r);$("#R").5(b.R);$("#1t").5(b.1t);$("#Q").5(1v(b.Q,"."));$("#P").5(1v(b.P,"."));$("#O").5(b.O);$("#S").5(b.S);$("#F").5(b.F);$("#E").5(b.E);$("#T").5(b.T);$("#N").5(b.N);$("#K").5(b.K);$("#J").5(b.J);$("#q").5(b.q);12=a.1h;9.1E();Y(a.1F)};8 2b(){h($("#p").5()==k||$("#p").5()==""){1G(2d);11}h($("#j").5()==k||$("#j").5()==""){1G(2e);11}7 a={j:$("#j").5(),D:$("#D").5(),p:$("#p v:2f").5(),C:$("#C").5(),B:$("#B").5(),n:$("#n").5(),U:$("#U").5(),R:$("#R").5(),Q:$("#Q").5(),P:$("#P").5(),O:$("#O").5(),S:$("#S").5(),F:$("#F").5(),E:$("#E").5(),T:$("#T").5(),N:$("#N").5(),K:$("#K").5(),J:$("#J").5(),q:$("#q").5()};A(a,"2g",X,13)};8 2i(){7 a=l.2j().2k(\'^\');7 b=r H();7 c=r 1K(a.g-2);b.m("j",$("#j").5());G(7 i=1;i<a.g-1;i++){7 d=r H();d.m("18",2p(a[i]));d.m("n",l.x(1,i));c[i-1]=d}b.1N("2s",c);7 e=b.1O();A(e,"2u",1P,13)};8 1P(a){Y(a.1F)};8 2v(){7 a=r H();7 b=r 1K(9.1Q-1);a.m("j",$("#j").5());G(7 i=1;i<9.1Q;i++){7 c=r H();c.m("1p",9.x(i,4));c.m("1x",9.x(i,1));c.m("1q",9.x(i,2));c.m("q",9.x(i,3));b[i-1]=c}a.1N("2x",b);7 d=a.1O();A(d,"2y",1R,13)};8 1R(a){12=a.1h;9.1E()};8 1m(a){7 b=9.1S();7 c=9.1T();9.1U("1f-1g",b,c,b,c,"#1V")};8 2E(a){7 b=l.1S();7 c=l.1T();h(c!=0){l.1U("1f-1g",b,c,b,c,"#1V")}};8 2F(){L.V("2H.I","",17)};8 2J(){L.V("2K.I","",17)};8 2L(a){7 b="2M.I?2r="+a;L.V(b,"",17)};',62,174,'|||||val||var|function|objSBGrid|||||||length|if||sPRJT_ID|null|objSBGridMmth|put|sMAN_MONTH|center|sCURR_STAGE|sETC_DISC|new|toString|col|else|option|objResultMmthData|getTextMatrix|false|fn_SetSBGridCol|fn_AjaxSend|sBIZ_AMOUNT|sPRJT_MANG_ID|sPRJT_NM|sOS_TYPE|sSERVER_TYPE|for|Map|jsp|sPRJT_DISC|sETC_TYPE|window||sDBMS_TYPE|sDEV_METHOD|sPRJT_END_DT|sPRJT_STRT_DT|sMAIN_BIZ_PART_CD|sUSE_TOOL|sPRGM_LANG|sCUS_CD|open|output|fn_SelectPrjtInfo|fn_CreateMnthGrid|col0||return|resultData|PMS_PROC_INSERT|input||objGridInitInfoMmInfo|popupStyle|sYYYYMM|id|type|ref|style|text|align|background|color|prjtStageInfo|30|push|substring|fn_SetDataSelectPrjtInfo|fn_ObjSBGridChangeGrid|createColumns|sPRJT_MANG_NM|sPRJT_STAGE|sEND_DT|sCUS_NM|dd|sMAIN_BIZ_PART_NM|mm|fn_SetDateType|yyyy|sSTRT_DT|inputdate|objColumnsInfo|createSBDataGrid|true|fn_InitSBGrid|45|rebuild|prjtMmthInfo|alert|fn_InitGrid|00|value|Array|fn_SetDataInitLoad|WSPJ010101|putMapList|jsonParse|fn_SetDataModifyPrjtMM|rows|fn_SetDataModifyPrjtStage|getMouseRow|getMouseCol|setCellStyle|F3F781|searchPrjtID|objGridInitInfo|getGrid|strId||destroy|prjtStage|02|55|03|fn_InitLoad|sCODE|left|04|EAEFF3|fn_InsertPrjt|sPRJT_STAGE_NM|SELECT_PRJT_STAGE|INSERT_PRJT_ID|selected|WSPJ010121|sCODE_NM|fn_ModifyPrjtMM|getCaption|split|fn_Init_Clear|addEventListener|location|onvaluechanged|fn_SearchNum|WSPJ010111|PJ010101|sPRJT_MMONTH|prjtInfo|WSPJ010122A|fn_ModifyPrjtStage|01|sPRJT_STAGE_INFO|WSPJ010122B|empty|205px|parseFloat|append|each|fn_ObjSBGridMmthChangeGrid|fn_SearchPrjtInfo|75px|PU010101|SBGrid|fn_SearchUser|PU010111|fn_SearchCoop|PU010121|mmthInfo'.split('|'),0,{}))

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
			<jsp:include page="../common/layout_left_wspj.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[PJ01] 프로젝트정보관리</h2>
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
			
					<div class="section">
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
									</td>
								</tr>
								<!--tr>
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
								</tr-->
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
									</td>		
									<th class="w100">주사업자</th>
									<td>
										<input type="text" class="txtinp w100" id="sMAIN_BIZ_PART_NM" name="sMAIN_BIZ_PART_NM" readOnly/>
										<input type="hidden" id="sMAIN_BIZ_PART_CD" name="sMAIN_BIZ_PART_CD"/>
									</td>
								</tr>
								<tr>	
									<th class="w100">시작일자</th>
									<td><input type="text" class="txtinp w100" id="sPRJT_STRT_DT" name="sPRJT_STRT_DT" /></td>
									<th class="w100">종료일자</th>
									<td><input type="text" class="txtinp w100" id="sPRJT_END_DT" name="sPRJT_END_DT" /></td>
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