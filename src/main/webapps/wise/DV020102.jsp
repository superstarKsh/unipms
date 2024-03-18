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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('k 27(){h a={z:$("#B").f()};A(a,"2K",1J,j)};k 1J(c){h d=\'<w 16="">선 택</w>\';$.2g(c.2h,k(a,b){d=d+\'<w 16="\'+b.2A+\'">\'+b.2J+\'</w>\';$("#p").1N().2a(d)});$("#p").f($("#2e").f());1r()};k 1r(){h a="J K^J 명^시작일자^종료일자^담당자^범위확정^";h b="15%,2x%,13%,13%,14%,10%";1b=1g("1S","u",a,b,"2b","1l",U,j);u=1z(1b);1D=[n("1K","x","m","r",j,o),n("1p","x","1P","L",j,o),n("1w","x","C","r","S.R.W",o),n("1a","x","y","r","S.R.W",o),n("1f","x","T","L",j,o),n("1h","x","E","r",j,o),n("1j","x","F","r",j,U)];u.1m(1D);u.1n("1o","O","","");a="*J K^*1q K^1q 명^업무내용^담당자^담당자^시작일자^종료일자^범위확정^";b="12%,12%,25%,25%,12%,3%,13%,13%,10%,10%";1C=1g("2u","g",a,b,"2y","1E",U,j);g=1z(1C);1I=[n("1K","x","m","r",j,o),n("1p","V","t","r",j,o),n("1w","V","M","L",j,o),n("1a","V","N","L",j,o),n("1f","x","T","L",j,o),n("1h","1Q","","r",j,o),n("1j","1c","C","r","S.R.W",o),n("1U","1c","y","r","S.R.W",o),n("1W","1X","E","r",["21","2O","16"],o),n("28","x","F","r",j,U)];g.1m(1I);g.1n("1o","1d","","");1e()};k 2c(){Q.2f="Y.P"};k 11(){$("#X V[2j=2m], #X 2q, #X 2r").f("")};k 1k(){h a=u.I();q(a<=0)v;h b={z:$("#B").f(),D:$("#p w:G").f(),m:u.l(a,0)};A(b,"1O",1s,j)};k 1s(a){h b=a.1t;$("#t").f(b.t)};k 1e(){11();h a={z:$("#B").f(),D:$("#p w:G").f()};A(a,"1R",1u,j)};k 1u(a){1l=a.1T;u.1v()};k 1V(){q($("#p").f()==j||$("#p").f()==""){H(1x);v}q($("#m").f()==j||$("#m").f()==""){H(1Y);v}q($("#t").f()==j||$("#t").f()==""){H(1Z);v}h a={z:$("#B").f(),D:$("#p w:G").f(),m:$("#m").f(),t:$("#t").f(),M:$("#M").f(),N:$("#N").f(),C:$("#C").f(),y:$("#y").f(),F:$("#F").f(),E:$("#E").f()};A(a,"20",O,1y)};k 22(){h a={z:$("#B").f(),D:$("#p w:G").f(),m:$("#m").f(),t:$("#t").f()};A(a,"23",O,24)};k 26(){q($("#p").f()==j||$("#p").f()==""){H(1x);v}h a=Z 1A();h b=Z 29(g.1B-1);h c=u.I();q(c<=0)v;a.s("z",$("#B").f());a.s("D",$("#p w:G").f());a.s("m",$("#m").f());2d(h i=1;i<g.1B;i++){h d=Z 1A();q($("#m").f()==""){H("J K를 입력해주세요.");v}d.s("t",g.l(i,1));d.s("M",g.l(i,2));d.s("N",g.l(i,3));d.s("C",g.l(i,6));d.s("y",g.l(i,7));d.s("E",g.l(i,8));d.s("F",g.l(i,9));d.s("T",g.l(i,4));b[i-1]=d}a.2k("2l",b);h e=a.2n();A(e,"2o",O,1y)};k O(){11();h a=u.I();q(a<=0)v;$("#m").f(u.l(a,0));h b={z:$("#B").f(),D:$("#p w:G").f(),m:$("#m").f()};A(b,"2p",1F,j)};k 1F(a){1E=a.1t;g.1v();1k()};k 1d(){h a=g.I();q(a<=0)v;$("#m").f(g.l(a,0));$("#t").f(g.l(a,1));$("#M").f(g.l(a,2));$("#N").f(g.l(a,3));$("#T").f(g.l(a,4));$("#C").f(1G(g.l(a,6)));$("#y").f(1G(g.l(a,7)));$("#E").f(g.l(a,8));$("#F").f(g.l(a,9));h b=g.2s;h c=g.2t;h d="1H.P?2v="+c+"&Y=2w";q(b==5){Q.17(d,"",18)}};k 2z(){h a=u.I();q(a<=0){H("J K를 선택해주세요.");v}q(g.19(0)==\'-1\'){g.2B();g.1L(g.2C()-1,0,$("#m").f())}2D{g.2E(g.19(0),"2F");g.1L(g.19(0),0,$("#m").f())}};k 2G(){h a=g.2H();g.2I(a)};$(k(){$("#C").1M(1i);$("#y").1M(1i)});k 2L(){Q.17("2M.P","",18)};k 2N(){h a="1H.P?Y=2i";Q.17(a,"",18)};',62,175,'|||||||||||||||val|objSBGridDetail|var||null|function|getTextMatrix|sTASK_ID|fn_SetSBGridCol|false|searchPrjtStage|if|center|put|sSEG_ID|objSBGrid|return|option|output|sEND_DT|sPRJT_ID|fn_AjaxSend|searchPrjtID|sSTRT_DT|sPRJT_STAGE|sDEF_YN|sCORP_MNG_ID|selected|alert|getRow|TASK|ID|left|sSEG_NM|sSEG_DESC|fn_SelectListInfo|jsp|window|mm|yyyy|sCORP_MNG_NM|true|input|dd|section|DV020102|new||fn_Init_Data|||||value|open|popupStyle|selectedRow|03|objGridInitInfo|inputdate|fn_SelectListInfoDetail|fn_SelectPrjtInfo|04|fn_InitSBGrid|05|setCalendar|06|fn_SelectSegID|resultData|createColumns|addEventListener|onclick|01|SEG|fn_InitGrid|fn_SetDataSelectSegID|segInfo|fn_SetDataSelectPrjtInfo|rebuild|02|SELECT_PRJT_STAGE|PMS_PROC_INSERT|createSBDataGrid|Map|rows|objGridInitInfoDetail|objColumnsInfo|resultDataDetail|fn_SetDataSelectListInfo|fn_SetDateType|PU010112|objColumnsInfoDetail|fn_SetDataInitLoad|00|setTextMatrix|datepicker|empty|DV020102A|sTASK_NM|imageS|DV020111|prjtTaskInfo|taskInfo|07|fn_InsertPrjt|08|combo|SELECT_TASK_ID|INSERT_SEG_ID|DV020121A|yesNo|fn_DeletePrjt|DV020141A|PMS_PROC_DELETE||fn_ModifyPrjt|fn_InitLoad|09|Array|append|250px|fn_Init_Clear|for|sCURR_STAGE|location|each|prjtStage|sTEXT_INFO|type|putMapList|sPRJT_TASK_SEG_INFO|text|jsonParse|DV020122A|DV020111A|select|textarea|col|row|prjtSegInfo|nSelRow|sGRID_INFO|35|400px|fn_AddRow|sCODE|addItem|getRows|else|insertItem|below|fn_DelRow|getClickedRow|deleteItem|sCODE_NM|DV020101|fn_SearchPrjtInfo|PU010101|fn_SearchUser|label'.split('|'),0,{}))

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
    		        <h2>[DV02] SEGMENT관리</h2>
    		        <!-- END : title -->
					<!-- START : search section -->
    		        <div id="searchSection" class="section">
    		            <div class="search">
    		                <div class="box">
    		                    <ul>
    		                        <li class="name"><span>프로젝트ID</span></li>
    		                        <li><input type="text" class="txtinp w100" id="searchPrjtID" name="searchPrjtID" readOnly/></li>
    		                        <li><input type="text" class="txtinp w300" id="searchPrjtNM" name="searchPrjtNM" readOnly/></li>
    		                        <li><a href="javascript:fn_SearchPrjtInfo();" class="btn01">검색</a></li>
    		                    </ul>
    		                    <ul>
    		                        <li class="name"><span>진행단계</span></li>
    		                    	<li><select class="selectbox" id="searchPrjtStage" name="searchPrjtStage" ></select></li>
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
	    		        <div id="prjtTaskInfo">
						</div>
	    		    </div>
    		        <!-- END : grid section -->
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
									<th class="w100">SEG 명</th>
									<td colspan="3">
										<input type="text" class="txtinp w700" id="sSEG_NM" name="sSEG_NM"   > 
									</td>
								</tr>
								<tr>
									<th class="w100">업무내용</th>
									<td colspan="3">
										<textarea class="txtinp w700" cols="100" rows="5" name="sSEG_DESC" id="sSEG_DESC" ></textarea>
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
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
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
	    		        <div id="prjtSegInfo">
						</div>
	    		    </div>
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