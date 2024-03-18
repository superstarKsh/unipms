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

	fn_SelectPrjtInfo();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('0 j(){1 a={6:$("#7").e()};f(a,"v",4,2)};0 4(d){$.8(d.9,0(a,b){1 c=g.h(b.i);B(c!=2){c.k("l","m-n:#o;")}})};0 p(a){1 b="";b+="q=r";b+="&";b+="s="+a;t(b,"u.3","w.3",2)};0 x(){y.z("A.3","",5)};',38,38,'function|var|null|jsp|fn_SetDataSelectPrjtInfo|popupStyle|sPRJT_ID|searchPrjtID|each|mngInfo|||||val|fn_AjaxSend|document|getElementById|sACTIVITY_ID|fn_SelectPrjtInfo|setAttribute|style|background|color|d7908c|fn_SearchPage|sSEARCH_YN|Y|sSEARCH_ACTIVITY_ID|fn_AjaxSendSesUrl|pms_session_mg1401|MG140111|MG130101|fn_SearchPrjtInfo|window|open|PU010101|if'.split('|'),0,{}))
  
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
			<jsp:include page="../common/layout_left_mg.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    			<form name="contentsForm">
	    			<h2>[MG14] 사업관리현황조회</h2>
    		        <!-- END : title --><!-- START : search section -->
    		        <div class="section" style="width:825px;">
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
    		        <div class="section" style="width:825px;">
                        <ul class="btnbox right">
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                     	</ul>
                    </div>
                    
    		        <br/>
					<!-- START : button section -->
	    		    <div class="freebox" id="freebox">
						<!-- START : title -->
						<div class="graph" id= "graph">
							<div class="positi">
						    	<div class="graphbox a0100">
						    		<a href="javascript:fn_SearchPage('A0100');">
							    		<dl class="bg01" id="A0100" name="A0100">
							    			<dt>A0100</dt>
							    			<dd>프로젝트 수행<br />범위 도출</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox a0200">
						    		<a href="javascript:fn_SearchPage('A0200');">
							    		<dl class="bg01" id="A0200" name="A0200">
							    			<dt>A0200</dt>
							    			<dd>프로젝트 환경<br />설정/구축</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox b1100">
						    		<a href="javascript:fn_SearchPage('B1100');">
							    		<dl class="bg01" id="B1100" name="B1100">
							    			<dt>B1100</dt>
							    			<dd>보안관리<br />계획수립</dd>
							    		</dl>
							    	</a>	
						    	</div>
						    	<div class="graphbox a0400">
						    		<a href="javascript:fn_SearchPage('A0400');">
							    		<dl class="bg01" id="A0400" name="A0400">
							    			<dt>A0400</dt>
							    			<dd>프로젝트 참여자<br />준수사항</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox a0300">
						    		<a href="javascript:fn_SearchPage('A0300');">
							    		<dl class="bg01" id="A0300" name="A0300">
							    			<dt>A0300</dt>
							    			<dd>사업 목적/목표/<br />관련정책 실별</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox b0100">
						    		<a href="javascript:fn_SearchPage('B0100');">
							    		<dl class="bg01" id="B0100" name="B0100">
							    			<dt>B0100</dt>
							    			<dd>개발표준<br />설정</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox b0200">
						    		<a href="javascript:fn_SearchPage('B0200');">
							    		<dl class="bg01" id="B0200" name="B0200">
							    			<dt>B0200</dt>
							    			<dd>요소기술/표준<br />프로파일 분석</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox a0500">
						    		<a href="javascript:fn_SearchPage('A0500');">
							    		<dl class="bg01" id="A0500" name="A0500">
							    			<dt>A0500</dt>
							    			<dd>산출내역서<br />작성</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox a0700">
						    		<a href="javascript:fn_SearchPage('A0700');">
							    		<dl class="bg01" id="A0700" name="A0700">
							    			<dt>A0700</dt>
							    			<dd>선금신청</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox c0800">
						    		<a href="javascript:fn_SearchPage('C0800');">
							    		<dl class="bg02" id="C0800" name="C0800">
							    			<dt>C0800</dt>
							    			<dd>기성금 신청</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox a0600">
						    		<a href="javascript:fn_SearchPage('A0600');">
							    		<dl class="bg01" id="A0600" name="A0600">
							    			<dt>A0600</dt>
							    			<dd>착수계<br />제출</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox b0300">
						    		<a href="javascript:fn_SearchPage('B0300');">
							    		<dl class="bg01" id="B0300" name="B0300">
							    			<dt>B0300</dt>
							    			<dd>범위관리<br />계획수립</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox b0400">
						    		<a href="javascript:fn_SearchPage('B0400');">
							    		<dl class="bg01" id="B0400" name="B0400">
							    			<dt>B0400</dt>
							    			<dd>일정관리<br />계획수립</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox b0800">
						    		<a href="javascript:fn_SearchPage('B0800');">
							    		<dl class="bg01" id="B0800" name="B0800">
							    			<dt>B0800</dt>
							    			<dd>품질관리<br />계획수립</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox b0500">
						    		<a href="javascript:fn_SearchPage('B0500');">
							    		<dl class="bg01" id="B0500" name="B0500">
							    			<dt>B0500</dt>
							    			<dd>인력관리<br />계획수립</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox b0900">
						    		<a href="javascript:fn_SearchPage('B0900');">
							    		<dl class="bg01" id="B0900" name="B0900">
							    			<dt>B0900</dt>
							    			<dd>교육훈련<br />계획수립</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox b0600">
						    		<a href="javascript:fn_SearchPage('B0600');">
							    		<dl class="bg01" id="B0600" name="B0600">
							    			<dt>B0600</dt>
							    			<dd>의사소통<br />계획수립</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox b1000">
						    		<a href="javascript:fn_SearchPage('B1000');">
							    		<dl class="bg01" id="B1000" name="B1000">
							    			<dt>B1000</dt>
							    			<dd>위험/이슈관리<br />계획수립</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox b1200">
						    		<a href="javascript:fn_SearchPage('B1200');">
							    		<dl class="bg01" id="B1200" name="B1200">
							    			<dt>B1200</dt>
							    			<dd>수업수행계획서<br />작성</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox b0700">
						    		<a href="javascript:fn_SearchPage('B0700');">
							    		<dl class="bg01" id="B0700" name="B0700">
							    			<dt>B0700</dt>
							    			<dd>계획수립</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox c1100">
						    		<a href="javascript:fn_SearchPage('C1100');">
							    		<dl class="bg01" id="C1100" name="C1100">
							    			<dt>C1100</dt>
							    			<dd>용어집 관리</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<!---->
						    	<div class="graphbox a0800">
						    		<a href="javascript:fn_SearchPage('A0800');">
							    		<dl class="bg01" id="A0800" name="A0800">
							    			<dt>A0800</dt>
							    			<dd>프로젝트 관리 및<br />지원도구 적용</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox c0100">
						    		<a href="javascript:fn_SearchPage('C0100');">
							    		<dl class="bg02" id="C0100" name="C0100">
							    			<dt>C0100</dt>
							    			<dd>요구사항 관리</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox c0200">
						    		<a href="javascript:fn_SearchPage('C0200');">
							    		<dl class="bg02" id="C0200" name="C0200">
							    			<dt>C0200</dt>
							    			<dd>품질보증 활동</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox c0300">
						    		<a href="javascript:fn_SearchPage('C0300');">
							    		<dl class="bg02" id="C0300" name="C0300">
							    			<dt>C0300</dt>
							    			<dd>의사소통<br />관리</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox c0400">
						    		<a href="javascript:fn_SearchPage('C0400');">
							    		<dl class="bg02" id="C0400" name="C0400">
							    			<dt>C0400</dt>
							    			<dd>교육훈련</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox c0500">
						    		<a href="javascript:fn_SearchPage('C0500');">
							    		<dl class="bg02" id="C0500" name="C0500">
							    			<dt>C0500</dt>
							    			<dd>감리수감</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox c0600">
						    		<a href="javascript:fn_SearchPage('C0600');">
							    		<dl class="bg02" id="C0600" name="C0600">
							    			<dt>C0600</dt>
							    			<dd>변경 및 형상<br />관리</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox c0700">
						    		<a href="javascript:fn_SearchPage('C0700');">
							    		<dl class="bg02" id="C0700" name="C0700">
							    			<dt>C0700</dt>
							    			<dd>위험/이슈<br />관리</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox c0900">
						    		<a href="javascript:fn_SearchPage('C0900');">
							    		<dl class="bg02" id="C0900" name="C0900">
							    			<dt>C0900</dt>
							    			<dd>하도급 관리</dd>
						    			</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox c1000">
						    		<a href="javascript:fn_SearchPage('C1000');">
							    		<dl class="bg02" id="C1000" name="C1000">
							    			<dt>C1000</dt>
							    			<dd>정기 보안점검</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox d0100">
						    		<a href="javascript:fn_SearchPage('D0100');">
							    		<dl class="bg03" id="D0100" name="D0100">
							    			<dt>D0100</dt>
							    			<dd>운영 및 관리<br />지침작성</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox d0200">
						    		<a href="javascript:fn_SearchPage('D0200');">
							    		<dl class="bg03" id="D0200" name="D0200">
							    			<dt>D0200</dt>
							    			<dd>요구사항 이행<br />여부확인</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox d0300">
						    		<a href="javascript:fn_SearchPage('D0300');">
							    		<dl class="bg03" id="D0300" name="D0300">
							    			<dt>D0300</dt>
							    			<dd>최종품질시험</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox d0400">
						    		<a href="javascript:fn_SearchPage('D0400');">
							    		<dl class="bg03" id="D0400" name="D0400">
							    			<dt>D0400</dt>
							    			<dd>행정적 종료 준비</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox d0500">
						    		<a href="javascript:fn_SearchPage('D0500');">
							    		<dl class="bg03" id="D0500" name="D0500">
							    			<dt>D0500</dt>
							    			<dd>잔금신청</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox d0600">
						    		<a href="javascript:fn_SearchPage('D0600');">
							    		<dl class="bg03" id="D0600" name="D0600">
							    			<dt>D0600</dt>
							    			<dd>최종 산출물 납품</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox d0700">
						    		<a href="javascript:fn_SearchPage('D0700');">
							    		<dl class="bg03" id="D0700" name="D0700">
							    			<dt>D0700</dt>
							    			<dd>현장철수 및<br />자료 정리</dd>
							    		</dl>
						    		</a>
						    	</div>
						    	<div class="graphbox e0100">
						    		<a href="javascript:fn_SearchPage('E0100');">
							    		<dl class="bg04" id="E0100" name="E0100">
							    			<dt>E0100</dt>
							    			<dd>교훈 및 학습정리</dd>
							    		</dl>
						    		</a>
						    	</div>
							</div>
						</div>
					</div>	
	    		    <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sTag" name="sTag"/>
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