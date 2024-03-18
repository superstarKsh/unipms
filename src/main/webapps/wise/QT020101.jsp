<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
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
<script type="text/javascript" src="../editor/js/HuskyEZCreator.js"></script>
<!-- end : include common -->

<script type="text/javascript">
function fn_Init() {
	$("#container input[type=text], #container select, #container textarea").val("");

	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");

	var sSEARCH_YN = '<%=(String) session.getAttribute("sSEARCH_YN")%>';
	
	if (sSEARCH_YN != null && sSEARCH_YN=='Y') {
		
		var sQULTY_ID = '<%=(String) session.getAttribute("sQULTY_ID")%>';
		var sQULTY_TITLE = '<%=(String) session.getAttribute("sQULTY_TITLE")%>';
		var sQULTY_CNTL_ID = '<%=(String) session.getAttribute("sQULTY_CNTL_ID")%>';

		$("#sSEARCH_YN").val(sSEARCH_YN);
		$("#sQULTY_ID").val(sQULTY_ID);
		$("#sQULTY_TITLE").val(sQULTY_TITLE);
		$("#sQULTY_CNTL_ID").val(sQULTY_CNTL_ID);
	}

	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('1 O(){3 c=\'<s u="">선 택</s>\';$.1c(1a,1(a,b){c=c+\'<s u="\'+b.18+\'">\'+b.u+\'</s>\';$("#8").17().Z(c)});E()};1 E(){C($("#z").0()==\'Y\'){$("#z").0("");3 a="";a+="z=N";V(a,"U.9",l,B)}};1 x(){n.T="G.9"};1 S(){3 a={p:$("#q").0(),4:$("#4").0()};r(a,"R",H,l)};1 H(a){3 b=a.Q;$("#2").0(b.2)};1 B(){3 a={p:$("#q").0(),4:$("#4").0(),2:$("#2").0()};r(a,"P",D,l)};1 D(a){3 b=a.M;C(b==l)10;L{$("#2").0(b.2);$("#i").0(b.i);$("#I").0(b.I);$("#f").0(j(b.f));$("#F").0(b.F);$("#m").0(b.m);$("#6").0(b.6);$("#5").0(b.5);$("#7").0(j(b.7));$("#8").0(b.8);$("#d").0(b.d);$("#J").0(b.J);$("#o").0(b.o);$("#g").0(j(b.g));$("#5").0(j(b.5));$("#e").0(b.e)}};1 W(){X.w["6"].A("y",[]);K.w["d"].A("y",[]);11.w["e"].A("y",[]);3 a={p:$("#q").0(),4:$("#4").0(),2:$("#2").0(),i:$("#i").0(),6:$("#6").0(),d:$("#d").0(),f:$("#f").0(),m:$("#m").0(),o:$("#o").0(),e:$("#e").0(),g:$("#g").0(),5:$("#5").0(),8:$("#8").0(),7:$("#7").0()};r(a,"12",x,13)};1 14(){3 a={p:$("#q").0(),4:$("#4").0(),2:$("#2").0()};r(a,"15",x,16)};$(1(){$("#f").k(h);$("#7").k(h);$("#g").k(h);$("#5").k(h)});1 19(){n.v("1b.9","",t)};1 1d(a){3 b="1e.9?G="+a;n.v(b,"",t)};1 1f(){n.v("1g.9","",t)};',62,79,'val|function|sQULTY_CNTL_ID|var|sQULTY_ID|sCORRT_DT|sCNTL_DESC|sCONFRM_DT|sCONFRM_YN|jsp||||sISSUE_DESC|sCORRT_DESC|sCNTL_DT|sCORRT_SCHD_DT|setCalendar|sTITLE|fn_SetDateType|datepicker|null|sCNTL_USER_ID|window|sDEV_USER_ID|sPRJT_ID|searchPrjtID|fn_AjaxSend|option|popupStyle|value|open|getById|fn_Init_Clear|UPDATE_CONTENTS_FIELD|sSEARCH_YN|exec|fn_SelectPrjtInfo|if|fn_SetDataSelectPrjtInfo|fn_SessionCheck|sCNTL_USER_NM|QT020101|fn_SetDataSelectInitID|sSTRT_DT|sDEV_USER_NM|oEditors2|else|qultyInfo||fn_InitLoad|QT020113|qultyID|QT020102|fn_SelectInitID|location|pms_session_qt0201|fn_AjaxSendSesUrl|fn_InsertPrjt|oEditors||append|return|oEditors3|QT020121|PMS_PROC_INSERT|fn_DeletePrjt|QT020141|PMS_PROC_DELETE|empty|label|fn_SearchPrjtInfo|yesNo_YN|PU010101|each|fn_SearchUser|PU010112|fn_SearchQultyInfo|PU010141'.split('|'),0,{}))

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
			<jsp:include page="../common/layout_left_qt.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[QT02] 품질관리</h2>
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
    		        <!-- END : search section -->

					<!-- START : input table section -->
    		        <div class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100"><pk>*</pk> 품질관리 일정</th>
    		                        <td colspan="3">
                                        <ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sQULTY_ID" name="sQULTY_ID" readOnly/></li>
	    		                            <li><input type="text" class="txtinp w400" id="sQULTY_TITLE" name="sQULTY_TITLE" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchQultyInfo();" class="btn01">검색</a></li>
										</ul>
                                    </td>
    		                    </tr>
    		                </tbody>
    		            </table>
    		        </div>
    		        <div class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100"><pk>*</pk> 품질점검 ID</th>
    		                        <td colspan="3">
    		                        	<input type="text" class="txtinp w100"  id="sQULTY_CNTL_ID" name="sQULTY_CNTL_ID"/>
    		                        </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">품질점검 제목</th>
    		                        <td colspan="3">
    		                        	<input type="text" class="txtinp w700"  id="sTITLE" name="sTITLE"/>
                                    </td>
    		                    </tr>
    		                    <tr>
                                    <th class="w100">점검일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sCNTL_DT" name="sCNTL_DT"/>
                                    </td>
    		                        <th class="w100">점검자</th>
    		                        <td>
                                        <ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sCNTL_USER_NM" name="sCNTL_USER_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser('sCNTL_USER_ID');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" class="txtinp w100" id="sCNTL_USER_ID" name="sCNTL_USER_ID"/></li>
										</ul>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">점검사항</th>
    		                        <td colspan="3">
										<textarea class="txtinp w700" id="sCNTL_DESC" name="sCNTL_DESC" style="height:150px; display: none;"></textarea>
									</td>
									<script type="text/javascript">
											var oEditors = [];
											nhn.husky.EZCreator.createInIFrame({
											oAppRef: oEditors,
											elPlaceHolder: "sCNTL_DESC",
											sSkinURI: "../editor/SmartEditor3Skin.html",
											fCreator: "createSEditor2",
											htParams: {fOnBeforeUnload : function(){}}
											});
									</script>
    		                    </tr>
    		                    <tr>
                                    <th class="w100">점검완료일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sCONFRM_DT" name="sCONFRM_DT"/>
                                    </td>
    		                        <th class="w100">점검완료구분</th>
    		                        <td>
                                        <select class="selectbox" name="selectbox" id="sCONFRM_YN" name="sCONFRM_YN">
										</select>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">결함사항</th>
    		                        <td colspan="3">
										<textarea class="txtinp w700" id="sISSUE_DESC" name="sISSUE_DESC" style="height:150px; display: none;"></textarea>
									</td>
									<script type="text/javascript">
											var oEditors2 = [];
											nhn.husky.EZCreator.createInIFrame({
											oAppRef: oEditors2,
											elPlaceHolder: "sISSUE_DESC",
											sSkinURI: "../editor/SmartEditor3Skin.html",
											fCreator: "createSEditor2",
											htParams: {fOnBeforeUnload : function(){}}
											});
									</script>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">담당자</th>
    		                        <td colspan="3">
                                        <ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sDEV_USER_NM" name="sDEV_USER_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser('sDEV_USER_ID');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" class="txtinp w100" id="sDEV_USER_ID" name="sDEV_USER_ID"/></li>
										</ul>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                    	<th class="w100">수정예정일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sCORRT_SCHD_DT" name="sCORRT_SCHD_DT"/>
                                    </td>
    		                        <th class="w100">수정완료일자</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" id="sCORRT_DT" name="sCORRT_DT"/>
                                    </td>
                                </tr>
    		                    <tr>
    		                        <th class="w100">담당자의견</th>
    		                        <td colspan="3">
										<textarea class="txtinp w700"  id="sCORRT_DESC" name="sCORRT_DESC" style="height:150px; display: none;"></textarea>
									</td>
									<script type="text/javascript">
											var oEditors3 = [];
											nhn.husky.EZCreator.createInIFrame({
											oAppRef: oEditors3,
											elPlaceHolder: "sCORRT_DESC",
											sSkinURI: "../editor/SmartEditor3Skin.html",
											fCreator: "createSEditor2",
											htParams: {fOnBeforeUnload : function(){}}
											});
									</script>
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

    		    </div><!--//pixbox-->
    		    <div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
				</div>
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