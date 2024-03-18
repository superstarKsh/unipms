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
<!-- end : include common -->

<script type="text/javascript">

function fn_Init() {

	$("#container input[type=text], #container select, #container textarea").val("");
	
	$("#searchUserID").val('<%=(String) session.getAttribute("sSEARCH_USER_ID")%>');
	$("#searchUserNM").val('<%=(String) session.getAttribute("sSEARCH_USER_NM")%>');
	$("#sSEARCH_YN").val('<%=(String) session.getAttribute("sSEARCH_YN")%>');
	$("#sSEARCH_PARAM").val('<%=(String) session.getAttribute("sSEARCH_PARAM")%>');
	
	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('2 6="N";1 1J(){6="N";9($("#1j").0()=="H"){2 a=X.18("1C");a.19("1b","W:1c");2 b=X.18("1x");b.19("1b","W:1c");2 b=X.18("1w");b.19("1b","W:1c")}2 c={};o(c,"1e",1f,i)};1 1f(c){2 d=\'<3 4="x">선 택</3>\';2 e=\'<3 4="x">선 택</3>\';2 f=\'<3 4="x">선 택</3>\';2 g=\'<3 4="x">선 택</3>\';2 h="";$.w(c.26,1(a,b){h=h+"<1a 21=\'1g\' 1H=\'1G 1F\' 1y=\'j\' 1k=\'j\' 4=\'"+b.q+"\' 12/>"+b.r});$("#1B").1A(h);$.w(c.2c,1(a,b){d=d+\'<3 4="\'+b.q+\'">\'+b.r+\'</3>\';$("#t").S().T(d)});$.w(c.20,1(a,b){e=e+\'<3 4="\'+b.q+\'">\'+b.r+\'</3>\';$("#v").S().T(e)});$.w(c.1D,1(a,b){f=f+\'<3 4="\'+b.q+\'">\'+b.r+\'</3>\';$("#n").S().T(f)});$.w(c.1E,1(a,b){g=g+\'<3 4="\'+b.q+\'">\'+b.r+\'</3>\';$("#u").S().T(g)});1m()};1 Z(){Q.1v="1z.8"};1 1m(){2 a={5:$("#10").0()};o(a,"1Y",1t,i)};1 1t(a){2 b=a.23;9(b==i){$("#K").O("G","../14/15/16.17");F}m 9(b.7==i||b.7==""){$("#K").O("G","../14/15/16.17")}m{9(b.7=="")$("#K").O("G","../14/15/16.17");m $("#K").O("G","../1I/1K/"+b.7)}$("#10").0(b.5);$("#1h").0(b.k);$("#5").0(b.5);$("#k").0(b.k);$("#B").0(b.B);$("#A").0(b.A);$("#z").0(b.z);$("1a:1g[1k=j]:1a[4="+b.j+"]").27("12",2a);$("#l").0(b.l);$("#s").0(b.s);$("#J").0(b.J);$("#I").0(b.I);$("#D").0(b.D);$("#C").0(b.C);$("#y").0(b.y);$("#V").0(b.V);$("#U").0(b.U);$("#R").0(b.R);$("#P").0(b.P);$("#7").0(b.7);$("#M").0(b.M);$("#1i").0(b.1i);$("#t").0(b.t);$("#v").0(b.v);$("#n").0(b.n);$("#u").0(b.u);$("#E").0(b.E);$("#13").0(b.13);6="N"};1 1l(){9(6=="Y"){1u(1L);F}2 a=\'\';9($("#13").0()==\'\')a=\'1M\';m a=$("#E").0();2 b={5:$("#5").0(),k:$("#k").0(),B:$("#B").0(),A:$("#A").0(),z:$("#z").0(),j:$("#j:12").0(),l:$("#l").0(),s:$("#s").0(),J:$("#J").0(),I:$("#I").0(),D:$("#D").0(),C:$("#C").0(),y:$("#y").0(),V:$("#V").0(),U:$("#U").0(),R:$("#R").0(),P:$("#P").0(),7:1N($("#7").0()),M:$("#M").0(),t:$("#t").0(),v:$("#v").0(),n:$("#n").0(),E:a,u:$("#u").0()};o(b,"1O",Z,1P)};1 1Q(){2 a={5:$("#5").0()};o(a,"1R",Z,1S)};1 1T(){1U("1V",1l)};1 1W(){2 a={5:$("#5").0()};o(a,"1X",1n,i)};1 1n(a){2 b=a.1Z;6=b.6;9(b.6=="Y"){6="Y";1u("이미 사용중인 아이디입니다.");F}m{6="N";F}};$(1(){$("#l").1o(1p);$("#s").1o(1p)});1 22(a){2 b="";b+="1q=Y";b+="&";b+="24="+$("#10").0();b+="&";b+="25="+$("#1h").0();b+="&";b+="1j=L";1r(b,"1s.8",a+"?p="+28,i)};1 29(){Q.11("2b.8","",1d)};1 2d(){Q.11("2e.8","",1d)};1 2f(){Q.11("2g.8","",1d)};1 2h(){2 a="";a+="1q=N";1r(a,"1s.8","1e.8",i)};',62,142,'val|function|var|option|value|sUSER_ID|sDUP_YN|sPHOTO|jsp|if|||||||||null|sLUNAR_DIV|sUSER_NM|sJOIN_DT|else|sEMP_TYPE|fn_AjaxSend||sCODE|sCODE_NM|sRTRE_DT|sBIZ_QUARTER|sPMS_AUTH|sUSER_PSTN|each|99|sZIP_CD_DO|sBRTH|sPSNL_NO|sUSER_PW|sADDR_JI|sZIP_CD_JI|sCURR_PRJT_ID|return|src||sCARR_MM|sCARR_YY|picImg||sCOOP_ID||attr|sEMAIL|window|sPHONE_NUM|empty|append|sOFFICE_NUM|sADDR_DO|display|document||fn_Init_Clear|searchUserID|open|checked|sCURR_PRJT_NM|images|common|noimg|png|getElementById|setAttribute|input|style|none|popupStyle|AD020101|fn_SetDataInitLoad|radio|searchUserNM|sCOOP_NM|sSEARCH_PARAM|name|fn_InsertPrjt|fn_SelectPrjtInfo|fn_SetDataCheckDupId|datepicker|setCalendar|sSEARCH_YN|fn_AjaxSendSesUrl|pms_session_ad0201|fn_SetDataSelectPrjtInfo|alert|location|btnMoveList|searchBSection|id|AD020111|html|lunarRadio|searchSection|empInfo|pmsAuthInfo|ml10|radiobox|class|upload|fn_InitLoad|image|PMS_USED_ID|00000000|fn_GetFileName|AD020121|PMS_PROC_INSERT|fn_DeletePrjt|AD020141|PMS_PROC_DELETE|fn_InsertPrjtFile|fn_ImageUploadFile|AD02|fn_CheckDupId|AD020115|AD020113|dupInfo|pstnInfo|type|fn_MovePage|memInfo|sSEARCH_USER_ID|sSEARCH_USER_NM|lunaInfo|prop|paramP|fn_SearchPrjtInfo|true|PU010101|bizQuarterInfo|fn_SearchUser|PU010111|fn_SearchCoop|PU010121|fn_MoveToList'.split('|'),0,{}))

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
    			<!-- Form -->
    			<form id="contentsForm" name="contentsForm" action="../common/pms_upload.jsp" method="post" enctype="multipart/form-data" onSubmit="return false;">	
    				<div class="fixbox">
	
						<!-- START : title -->
	    		        <h2>[AD02] 인력정보 등록</h2>
	    		        <!-- END : title -->
	
						<!-- START : search section -->
	    		        <div id="searchSection" class="section">
	    		            <div class="search">
	    		                <div class="box">
	    		                    <ul>
	    		                        <li class="name"><span>아이디/이름</span></li>
	    		                        <li><input type="text" class="txtinp w100" id="searchUserID" name="searchUserID" readOnly/></li>
	    		                        <li><input type="text" class="txtinp w200" id="searchUserNM"  name="searchUserNM" readOnly/></li>
	    		                        <li><a href="javascript:fn_SearchUser();" class="btn01">검색</a></li>
	    		                    </ul>
	    		                </div>
	    		            </div><!--//search-->
	    		        </div><!--//section-->
	    		        <div id="searchBSection" class="section">
	                        <ul class="btnbox right">
	                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
	                     	</ul>
	                    </div>
	    		        <!-- END : search section -->
	
						<!-- START : input table section -->
	    		        <div id="section" class="section">
							<ul class="tab">
								<li class="on"><a href="javascript:fn_MovePage('AD020111.jsp')">기본정보</a></li>
								<li><a href="javascript:fn_MovePage('AD020121.jsp')">학력</a></li>
								<li><a href="javascript:fn_MovePage('AD020131.jsp')">자격증</a></li>
								<li><a href="javascript:fn_MovePage('AD020141.jsp')">교육이수</a></li>
								<li><a href="javascript:fn_MovePage('AD020151.jsp')">경력</a></li>
								<li><a href="javascript:fn_MovePage('AD020161.jsp')">프로젝트경력</a></li>
							</ul><!--//tab-->
	    		            <table class="table01" border="0" cellspacing="0" summary="">
	    		                <tbody>
	    		                	<tr>
	    		                        <th class="w100">사진</th>
	    		                        <td>
	    		                        	<img id="picImg" class="picImg" src="" alt="이미지 사진을 등록하세요."/>
	    		                        	<div class="inputfileL last">
												<input type="hidden" id="sPHOTO" name="sPHOTO" readOnly/>
												<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sPHOTO').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
									        </div>
	    		                        </td>
	    		                        <th class="w100">
	    		                        	<div>이름</div>
	    		                        	<div>생년월일</div>
	    		                        	<div>입사일자</div>
	    		                        	<div>퇴사일자</div>
	    		                        	<div class='last'>이메일</div>
	    		                        </th>
	    		                        <td>
	    		                        	<div><input type="text" class="txtinp w100" id="sUSER_NM" name="sUSER_NM"/></div>
	    		                        	<div><input type="text" class="txtinp w80" id="sPSNL_NO" name="sPSNL_NO"/>    		                        	
											<span id="lunarRadio"></span></div>	    		                        	
	    		                        	<div><input type="text" class="txtinp w100" id="sJOIN_DT" name="sJOIN_DT" onkeydown="javascript:fn_SetDateType();" /></div>
	    		                        	<div><input type="text" class="txtinp w100" id="sRTRE_DT" name="sRTRE_DT"/></div>
	    		                        	<div class='last'><input type="text" class="txtinp w200" id="sEMAIL" name="sEMAIL"/></div>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">아이디</th>
	    		                        <td>
	    		                        	<ul class="tase">
		    		                        	<li><input type="text" class="txtinp w100" id="sUSER_ID" name="sUSER_ID" /></li>
		    		                        	<li><a href="javascript:fn_CheckDupId();" class="btn01">중복</a></li>
		    		                        </ul>
	    		                        </td>
	    		                        <th class="w100">비밀번호</th>
	    		                        <td>
	                                        <input type="text" class="txtinp w100" id="sUSER_PW" name="sUSER_PW"/>
	                                    </td>
	    		                    </tr>   		                    
	    		                    <tr>
	    		                        <th class="w100">경력</th>
	    		                        <td colspan="3">
	                                        <input type="text" class="txtinp w40" id="sCARR_YY" name="sCARR_YY"/> 년
	                                        <input type="text" class="txtinp w40" id="sCARR_MM" name="sCARR_MM"/> 개월
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">소속사</th>
	    		                        <td>
	                                        <ul class="tase">
		    		                        	<li><input type="text" class="txtinp w100" id="sCOOP_NM" name="sCOOP_NM" readOnly/></li>
		    		                            <li><a href="javascript:fn_SearchCoop();" class="btn01">검색</a></li>
		    		                            <li><input type="hidden" id="sCOOP_ID" name="sCOOP_ID"/></li>
											</ul>
	                                    </td>
	                                    <th class="w100">부서</th>
	    		                        <td>
	    		                        	<select class="selectbox" name="selectbox" id="sBIZ_QUARTER" name="sBIZ_QUARTER">
											</select>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">직급</th>
	    		                        <td>
	    		                        	<select class="selectbox" name="selectbox" id="sUSER_PSTN" name="sUSER_PSTN">
											</select>
	                                    </td>
	                                    <th class="w100">고용형태</th>
	    		                        <td>
	    		                        	<select class="selectbox" name="selectbox" id="sEMP_TYPE" name="sEMP_TYPE">
											</select>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">현재프로젝트</th>
	    		                        <td>
	                                        <ul class="tase">
		    		                        	<li><input type="text" class="txtinp w100" id="sCURR_PRJT_NM" name="sCURR_PRJT_NM"/></li>
		    		                        	<li><a href="javascript:fn_SearchPrjtInfo();" class="btn01">검색</a></li>
			    		                        <li><input type="hidden" id="sCURR_PRJT_ID" name="sCURR_PRJT_ID"/></li>
			    		                    </ul>    
	                                    </td>
	                                    <th class="w100">PMS 사용권한</th>
	    		                        <td>
	    		                        	<select class="selectbox" name="selectbox" id="sPMS_AUTH" name="sPMS_AUTH">
											</select>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">전화번호</th>
	    		                        <td>
	                                        <input type="text" class="txtinp w100" id="sOFFICE_NUM" name="sOFFICE_NUM"/>
	                                    </td>
	                                    <th class="w100">핸드폰번호</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" id="sPHONE_NUM" name="sPHONE_NUM"/>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">지번주소</th>
	    		                        <td colspan="3">
	                                        <input type="text" class="txtinp w100" id="sZIP_CD_JI" name="sZIP_CD_JI"/>
	                                        <input type="text" class="txtinp w500" id="sADDR_JI" name="sADDR_JI"/>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">도로명주소</th>
	    		                        <td colspan="3">
	                                        <input type="text" class="txtinp w100" id="sZIP_CD_DO" name="sZIP_CD_DO"/>
	                                        <input type="text" class="txtinp w500" id="sADDR_DO" name="sADDR_DO"/>
	                                    </td>
	    		                    </tr>
	    		                </tbody>
	    		            </table>
	    		        </div><!--//section-->
	    		        <!-- END : input table section -->
	
						<!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
								<li id="btnMoveList"><a href="javascript:fn_MoveToList();" class="btnimg03">목록</a></li>
	    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
	    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
	    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
	    		            </ul>
	    		        </div><!--//section-->
	    		    </div><!--//pixbox-->   
	    		    <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
						<input type="hidden" class="inputType" id="sSEARCH_PARAM" name="sSEARCH_PARAM"/>
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