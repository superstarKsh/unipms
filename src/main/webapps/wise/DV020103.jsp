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
	$("#sCURR_STAGE").val("<%=(String) session.getAttribute("sCURR_STAGE")%>");

	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('l 2i(){h a={z:$("#B").f()};A(a,"24",1T,j)};l 1T(c){h d=\'<v 14="">선 택</v>\';$.2S(c.30,l(a,b){d=d+\'<v 14="\'+b.1Y+\'">\'+b.21+\'</v>\';$("#s").2m().2s(d)});$("#s").f($("#2B").f());1L()};l 1L(){h a="1h J^1h 명";h b="1G%,1Z%";1F=1f("2d","C",a,b,"1w","1v",I,j);C=11(1F);1t=[o("1d","t","k","q",j,p),o("1c","t","2u","M",j,p)];C.1a(1t);C.17("16","1Q","","");a="R J^R 명^시작일자^종료일자^";b="20%,1G%,20%,20%,20%";1B=1f("27","w",a,b,"1w","1A",I,j);w=11(1B);1x=[o("1d","t","n","q",j,p),o("1c","t","2x","M",j,p),o("1u","t","F","q","T.U.V",p),o("1p","t","G","q","T.U.V",p),o("1m","t","k","q",j,I)];w.1a(1x);w.17("16","P","","");a="*1h J^*R J^*R 1R J^R 1R 명^업무내용^담당자^담당자^시작일자^종료일자^범위확정^";b="12%,12%,15%,23%,19%,12%,3%,13%,13%,10%";1n=1f("2E","g",a,b,"2Z","1r",I,j);g=11(1n);1s=[o("1d","t","k","q",j,p),o("1c","t","n","q",j,p),o("1u","S","y","q",j,p),o("1p","S","K","M",j,p),o("1m","S","Q","M",j,I),o("25","t","1H","M",j,p),o("29","2b","","q",j,p),o("2c","1K","F","q","T.U.V",p),o("2f","1K","G","q","T.U.V",p),o("2h","34","O","q",["2n","2p","14"],p),o("10","t","N","q",j,I)];g.1a(1s);g.17("16","1S","","");1l()};l 2r(){X.2t="18.W"};l 1o(){$("#1b S[2F=2I]:2L([2M=k]), #1b 2P, #1b 2R").f("")};l 1q(){h a=w.H();r(a<=0)x;h b={z:$("#B").f(),D:$("#s v:E").f(),k:$("#k").f(),n:$("#n").f()};A(b,"22",1k,j)};l 1k(a){h b=a.1y;$("#y").f(b.y)};l 1l(){h a={z:$("#B").f(),D:$("#s v:E").f(),k:$("#k").f()};A(a,"26",1z,j)};l 1z(a){1v=a.28;C.1e()};l 2a(){r($("#s").f()==j||$("#s").f()==""){L(1C);x}r($("#n").f()==j||$("#n").f()==""){L(1D);x}h a={z:$("#B").f(),D:$("#s v:E").f(),k:$("#k").f(),n:$("#n").f(),y:$("#y").f(),K:$("#K").f(),Q:$("#Q").f(),F:$("#F").f(),G:$("#G").f(),N:$("#N").f(),O:$("#O").f()};A(a,"2e",P,1E)};l 2g(){h a=w.H();r(a<=0)x;h b={z:$("#B").f(),D:$("#s v:E").f(),k:$("#k").f(),n:w.m(a,1),y:$("#y").f()};A(b,"2j",P,2k)};l 2l(){r($("#s").f()==j||$("#s").f()==""){L(1C);x}h a=1g 1I();h b=1g 2o(g.1J-1);h c=w.H();r(c<=0)x;a.u("z",$("#B").f());a.u("D",$("#s v:E").f());a.u("k",$("#k").f());a.u("n",$("#n").f());2q(h i=1;i<g.1J;i++){h d=1g 1I();d.u("y",g.m(i,2));d.u("K",g.m(i,3));d.u("Q",g.m(i,4));d.u("F",g.m(i,7));d.u("G",g.m(i,8));d.u("O",g.m(i,9));d.u("N",g.m(i,10));b[i-1]=d}a.2v("2w",b);h e=a.2y();A(e,"2z",P,1E)};l 1Q(){h a=C.H();r(a<=0)x;$("#k").f(C.m(a,0));$("#n").f("");$("#y").f("");h b={z:$("#B").f(),D:$("#s v:E").f(),k:$("#k").f()};A(b,"2A",1M,j)};l 1M(a){1A=a.2C;w.1e()};l P(){1o();h a=w.H();r(a<=0)x;$("#n").f(w.m(a,0));h b={z:$("#B").f(),D:$("#s v:E").f(),k:$("#k").f(),n:$("#n").f()};A(b,"2D",1N,j)};l 1N(a){1r=a.1y;g.1e();1q()};l 1S(){h a=g.H();r(a<=0)x;$("#k").f(g.m(a,0));$("#n").f(g.m(a,1));$("#y").f(g.m(a,2));$("#K").f(g.m(a,3));$("#Q").f(g.m(a,4));$("#1H").f(g.m(a,5));$("#F").f(1O(g.m(a,7)));$("#G").f(1O(g.m(a,8)));$("#O").f(g.m(a,9));$("#N").f(g.m(a,10));h b=g.2G;h c=g.2H;h d="1P.W?2J="+c+"&18=2K";r(b==6){X.1i(d,"",1j)}};l 2N(){r($("#k").f()==""){L(2O);x}r($("#n").f()==""){L(1D);x}r(g.Z(0)==\'-1\'){g.2Q();g.Y(g.1U()-1,0,$("#k").f());g.Y(g.1U()-1,1,$("#n").f())}2T{g.2U(g.Z(0),"2V");g.Y(g.Z(0),0,$("#k").f());g.Y(g.Z(0),1,$("#n").f())}};l 2W(){h a=g.2X();g.2Y(a)};$(l(){$("#F").1V(1W);$("#G").1V(1W)});l 31(){X.1i("32.W","",1j)};l 33(){h a="1P.W?18=1X";X.1i(a,"",1j)};',62,191,'|||||||||||||||val|objSBGridDetail|var||null|sTASK_ID|function|getTextMatrix|sSEG_ID|fn_SetSBGridCol|false|center|if|searchPrjtStage|output|put|option|objSBGrid|return|sSEG_SUB_ID|sPRJT_ID|fn_AjaxSend|searchPrjtID|objSBGridStat|sPRJT_STAGE|selected|sSTRT_DT|sEND_DT|getRow|true|ID|sSEG_SUB_NM|alert|left|sCORP_MNG_ID|sDEF_YN|fn_SelectListInfo|sSEG_SUB_DESC|SEG|input|yyyy|mm|dd|jsp|window|setTextMatrix|selectedRow||createSBDataGrid|||value||onclick|addEventListener|DV020103||createColumns|section|01|00|rebuild|fn_InitSBGrid|new|TASK|open|popupStyle|fn_SetDataSelectSegID|fn_SelectPrjtInfo|04|objGridInitInfoDetail|fn_Init_Data|03|fn_SelectInitID|resultDataDetail|objColumnsInfoDetail|objColumnsInfoStat|02|resultDataStat|250px|objColumnsInfo|segSubInfo|fn_SetDataSelectPrjtInfo|resultData|objGridInitInfo|SELECT_PRJT_STAGE|SELECT_SEG_ID|PMS_PROC_INSERT|objGridInitInfoStat|40|sCORP_MNG_NM|Map|rows|inputdate|fn_InitGrid|fn_SetDataSelectTaskInfo|fn_SetDataSelectListInfo|fn_SetDateType|PU010112|fn_SelectTaskInfo|SUB|fn_SelectListInfoDetail|fn_SetDataInitLoad|getRows|datepicker|setCalendar|sTEXT_INFO|sCODE|60||sCODE_NM|DV020102B||DV020101|05|DV020111|prjtSegInfo|taskInfo|06|fn_InsertPrjt|imageS|07|prjtTaskInfo|DV020121B|08|fn_DeletePrjt|09|fn_InitLoad|DV020141|PMS_PROC_DELETE|fn_ModifyPrjt|empty|yesNo|Array|label|for|fn_Init_Clear|append|location|sTASK_NM|putMapList|sPRJT_TASK_SEG_SUB_INFO|sSEG_NM|jsonParse|DV020122B|DV020111A|sCURR_STAGE|segInfo|DV020111B|prjtSegSubInfo|type|col|row|text|nSelRow|sGRID_INFO|not|id|fn_AddRow|SELECT_TASK_ID|select|addItem|textarea|each|else|insertItem|below|fn_DelRow|getClickedRow|deleteItem|400px|prjtStage|fn_SearchPrjtInfo|PU010101|fn_SearchUser|combo'.split('|'),0,{}))

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
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[DV02] SUB SEGMENT관리</h2>
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
    		                    <ul>
    		                        <li class="name"><span>진행단계</span></li>
    		                        <li><select class="selectbox" id="searchPrjtStage" name="searchPrjtStage"></select></li>
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
						<div id="prjtTaskInfo" style="float:left; width:40%;">
						</div>
						<div id="prjtSegInfo" style="float:left; width:59%; padding-left:1%;">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
				
					<!-- START : input table section -->
    		        <div id="section" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
								<tr>
									<th class="w100"><pk>*</pk> TASK ID</th>
									<td >
										<input type="text" class="txtinp w100" id="sTASK_ID" name="sTASK_ID" > 
									</td>
									<th class="w100"><pk>*</pk> SEG ID</th>
									<td >
										<input type="text" class="txtinp w100" id="sSEG_ID" name="sSEG_ID" readonly> 
									</td>
								</tr>
								<tr>
									<th class="w100"><pk>*</pk> SEG SUB ID</th>
									<td colspan="3">
										<input type="text" class="txtinp w100" id="sSEG_SUB_ID" name="sSEG_SUB_ID" readonly> 
									</td>
								</tr>
								<tr>
									<th class="w100">SEG SUB 명</th>
									<td colspan="3">
										<input type="text" class="txtinp w700" id="sSEG_SUB_NM" name="sSEG_SUB_NM"   > 
									</td>
								</tr>
								<tr>
									<th class="w100">업무내용</th>
									<td colspan="3">
										<textarea class="txtinp w700" cols="100" rows="5" name="sSEG_SUB_DESC" id="sSEG_SUB_DESC" ></textarea>
									</td>
								</tr>
								<tr>
    		                        <th class="w100">시작일자</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sSTRT_DT" id="sSTRT_DT"/>
                                    </td>
                                    <th class="w100">종료일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sEND_DT" id="sEND_DT"/>
                                    </td>
    		                    </tr>
								<tr>	
									<th class="w100">담당자</th>
									<td>
										<input type="hidden" class="txtinp w100" id="sCORP_MNG_ID" name="sCORP_MNG_ID"   >
										<input type="text" class="txtinp w100" id="sCORP_MNG_NM" name="sCORP_MNG_NM" readOnly  > 
										<a href="javascript:fn_SearchUser();" class="btn01" >검 색</a>
									</td>
									<th class="w100">범위확정</th>
									<td>
										<select class="selectbox" class="selectbox" id="sDEF_YN" name="sDEF_YN">
											 <option value="" >선택</option>
											 <option value="Y">확정</option>
											 <option value="N">미확정</option>
										</select>
									</td>
								</tr>
							</tbody>
    		            </table>
    		        </div><!--//section-->
    		        <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_Data();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div>
    		        <!-- END : button section -->
					<!--//section-->
    		        <div class="section">
    		            <ul class="btnbox_top right">
    		                <li><a href="javascript:fn_AddRow();" class="btn02">행추가</a></li>
    		                <li><a href="javascript:fn_DelRow();" class="btn03">행 삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
					<!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtSegSubInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
					<!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div>
    		        <!-- END : button section -->
    		        <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sCURR_STAGE" name="sCURR_STAGE"/>
					</div>
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