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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('g 2d(){f a={u:$("#w").9(),x:$("#k m:y").9()};s(a,"K",1c,j)};g 1c(c){f d=\'<m M="">선 택</m>\';$.1M(c.1P,g(a,b){d=d+\'<m M="\'+b.2o+\'">\'+b.1m+\'</m>\';$("#k").1n().1A(d)});$("#k").9($("#1L").9());R()};g R(){f a="*19 1S^19 명^업무내용^담당자^담당자^시작일자^종료일자^범위확정^";f b="10%,2e%,27%,10%,3%,12%,12%,10%";Q=1u("1x","e",a,b,"1G","U",11,j);e=1O(Q);16=[o("1W","J","l","r",j,p),o("1l","J","C","S",j,p),o("1s","J","D","S",j,p),o("1v","Z","z","r",j,p),o("1B","1C","","r",j,p),o("1D","14","t","r","1j.1a.1b",p),o("1Q","14","v","r","1j.1a.1b",p),o("1T","1U","F","r",["1X","1Y","M"],p),o("1Z","Z","A","r",j,11)];e.26(16);e.2a("2s","1g","","");B()};g 2n(){I.1k="K.H"};g T(){$("#L J[1o=1p], #L 1q, #L 1r").9("");V()};g V(){f a={u:$("#w").9(),x:$("#k m:y").9()};s(a,"1t",W,j)};g W(a){f b=a.X;$("#l").9(b.l)};g B(){T();f a={u:$("#w").9(),x:$("#k m:y").9()};s(a,"1w",Y,j)};g Y(a){U=a.X;e.1y()};g 1z(){q($("#k").9()==j||$("#k").9()==""){G(13);E}q($("#l").9()==j||$("#l").9()==""){G(1E);E}f a={u:$("#w").9(),x:$("#k m:y").9(),l:$("#l").9(),C:$("#C").9(),D:$("#D").9(),t:$("#t").9(),v:$("#v").9(),A:$("#A").9(),z:$("#z").9(),F:$("#F").9()};s(a,"1F",B,15)};g 1H(){f a={u:$("#w").9(),x:$("#k m:y").9(),l:$("#l").9()};s(a,"1I",B,1J)};g 1K(){q($("#k").9()==j||$("#k").9()==""){G(13);E}f a=N 17();f b=N 1N(e.18-1);a.n("u",$("#w").9());a.n("x",$("#k m:y").9());1R(f i=1;i<e.18;i++){f c=N 17();q(e.h(i,0)==""){G(1V);E}c.n("l",e.h(i,0));c.n("C",e.h(i,1));c.n("D",e.h(i,2));c.n("t",e.h(i,5));c.n("v",e.h(i,6));c.n("F",e.h(i,7));c.n("A",e.h(i,8));c.n("z",e.h(i,3));b[i-1]=c}a.21("22",b);f d=a.23();s(d,"24",B,15)};g 1g(){f a=e.25();q(a<=0)E;$("#l").9(e.h(a,0));$("#C").9(e.h(a,1));$("#D").9(e.h(a,2));$("#z").9(e.h(a,3));$("#t").9(1e(e.h(a,5)));$("#v").9(1e(e.h(a,6)));$("#F").9(e.h(a,7));$("#A").9(e.h(a,8));f b=e.28;f c=e.29;f d="1f.H?2b="+c+"&K=2c";q(b==4){I.O(d,"",P)}};g 2f(){q(e.1h(0)==\'-1\'){e.2g()}2h{e.2i(e.1h(0),"2j")}};g 2k(){f a=e.2l();e.2m(a)};$(g(){$("#t").1i(1d);$("#v").1i(1d)});g 2p(){I.O("2q.H","",P)};g 2r(){f a="1f.H?K=20";I.O(a,"",P)};',62,153,'|||||||||val|||||objSBGrid|var|function|getTextMatrix||null|searchPrjtStage|sTASK_ID|option|put|fn_SetSBGridCol|false|if|center|fn_AjaxSend|sSTRT_DT|sPRJT_ID|sEND_DT|searchPrjtID|sPRJT_STAGE|selected|sCORP_MNG_NM|sCORP_MNG_ID|fn_SelectPrjtInfo|sTASK_NM|sTASK_DESC|return|sDEF_YN|alert|jsp|window|input|DV020101|section|value|new|open|popupStyle|objGridInitInfo|fn_InitGrid|left|fn_Init_Data|resultData|fn_SelectInitID|fn_SetDataSelectInitID|taskInfo|fn_SetDataSelectPrjtInfo|output||true||SELECT_PRJT_STAGE|inputdate|PMS_PROC_INSERT|objColumnsInfo|Map|rows|TASK|mm|dd|fn_SetDataInitLoad|setCalendar|fn_SetDateType|PU010112|fn_SelectListInfo|selectedRow|datepicker|yyyy|location|01|sCODE_NM|empty|type|text|select|textarea|02|DV020102|fn_InitSBGrid|03|DV020111|prjtTaskInfo|rebuild|fn_InsertPrjt|append|04|imageS|05|SELECT_TASK_ID|DV020121|400px|fn_DeletePrjt|DV020141|PMS_PROC_DELETE|fn_ModifyPrjt|sCURR_STAGE|each|Array|createSBDataGrid|prjtStage|06|for|ID|07|combo|INSERT_TASK_ID|00|yesNo|label|08|sTEXT_INFO|putMapList|sPRJT_TASK_INFO|jsonParse|DV020122|getRow|createColumns||col|row|addEventListener|nSelRow|sGRID_INFO|fn_InitLoad|35|fn_AddRow|addItem|else|insertItem|below|fn_DelRow|getClickedRow|deleteItem|fn_Init_Clear|sCODE|fn_SearchPrjtInfo|PU010101|fn_SearchUser|onclick'.split('|'),0,{}))

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
    		        <h2>[DV02] TASK관리</h2>
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
					<!-- START : input table section -->
    		        <div id="section" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
	    		                <tr>
									<th class="w100"><pk>*</pk> TASK ID</th>
									<td colspan="3">
										<input type="text" class="txtinp w100" id="sTASK_ID" name="sTASK_ID" > 
									</td>
								</tr>
								<tr>
									<th class="w100">TASK 명</th>
									<td colspan="3">
										<input type="text" class="txtinp w700" id="sTASK_NM" name="sTASK_NM"   > 
									</td>
								</tr>
								<tr>
									<th class="w100">업무내용</th>
									<td colspan="3">
										<textarea class="txtinp w700" cols="100" rows="5" name="sTASK_DESC" id="sTASK_DESC" ></textarea>
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
										<select class="selectbox"  id="sDEF_YN" name="sDEF_YN">
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
	    		        <div id="prjtTaskInfo">
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
	<div>
		<iframe id="dnjsp" name="dnjsp" frameborder="0" width="0" height="0"></iframe>
	</div>
</div><!--//wrap-->
<!--footer-->
<div id="footer">
	<jsp:include page="../common/layout_footer.jsp" flush="true" />
</div><!--//footer-->
</body>