<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	if (session.getAttribute("sUSER_ID") == null) {
		out.println("<script>alert('잘못된 접근이거나 장시간 사용하지 않아 로그인 화면으로 이동합니다.');window.location = 'CM000101.jsp';</script>");
	}

	String sUSER_ID   = "";
	String sUSER_NM   = "";
	String sUSER_NO   = "";
	String sPRJT_ID   = "";
	String sPRJT_NM   = "";
	String sPMS_AUTH  = "";
	String sCURR_PRJT_ID  = "";
	String sPRJT_TYPE = "";
	
	if ((String) session.getAttribute("sUSER_ID") != null)
		sUSER_ID = (String) session.getAttribute("sUSER_ID");
	
	if ((String) session.getAttribute("sUSER_NM") != null)
		sUSER_NM = (String) session.getAttribute("sUSER_NM");
	
	if ((String) session.getAttribute("sUSER_NO") != null)
		sUSER_NO = (String) session.getAttribute("sUSER_NO");

	if ((String) session.getAttribute("sPRJT_ID") != null)
		sPRJT_ID = (String) session.getAttribute("sPRJT_ID");
	
	if ((String) session.getAttribute("sPRJT_NM") != null)
		sPRJT_NM = (String) session.getAttribute("sPRJT_NM");
	
	if ((String) session.getAttribute("sPMS_AUTH") != null)
		sPMS_AUTH = (String) session.getAttribute("sPMS_AUTH");
	
	if ((String) session.getAttribute("sCURR_PRJT_ID") != null)
		sCURR_PRJT_ID = (String) session.getAttribute("sCURR_PRJT_ID");
	
	if ((String) session.getAttribute("sPRJT_TYPE") != null)
		sPRJT_TYPE = (String) session.getAttribute("sPRJT_TYPE");

%>

<head>
</head>

<script type="text/javascript">

var strLocalMenu = $("#sLOCALMENU").val();

function fn_Logout() {
	
	var content = "";
	content +="sPARAM=LOGOUT";
		
	$.ajax({
		type:"POST"
		, url : "../common/pms_common_session.jsp"
		, data : content
		, success  : function(result) {
		}
		, complete : function(xhr, status, error) {
			window.location = "CM000101.jsp";
		}
		, error : function(x, e) {
			fn_ErrorAlert(x, e);
			return;
		}
	});

};

function fn_HeaderSessionCreate() {
	
	if (domainPath == "wise") {
		var strUserId = '<%=sUSER_NO%>';
		window.open("http://km.wise.co.kr/WiseIntranet/selectMemberPopAction.action?EMPID=" + strUserId,"",userPopupStyle);
	} else {
		var content = "";
		content += "sSEARCH_YN=Y";
		content += "&";
		content += "sSEARCH_USER_ID="+ '<%=sUSER_ID%>';
		content += "&";
		content += "sSEARCH_USER_NM="+ '<%=sUSER_NM%>';
		content += "&";
		content += "sSEARCH_PARAM=H";
		
		$.ajax({
			type:"POST"
			, url : "../common/pms_session_ad0201.jsp"
			, data : content
			, success  : function(result) {
	        }
			, complete : function(xhr, status, error) {
	        	window.location = "AD020111.jsp";
	        }
			, error : function(xhr, status, error) {
	        }
		});
	}
};

</script>
<body>
	<!--header-->
	<div id="header">
		<ul>
			<li class="noline"><a href="#">
<%
	if (sCURR_PRJT_ID.equals("00000000")  || "".equals(sCURR_PRJT_ID)) {
		out.println((String) session.getAttribute("sCURR_PRJT_ID"));
	} else {
		out.println(sPRJT_NM + " (" + sPRJT_ID + ")");
	}
%>
			</a></li>
			<li><a href="javascript:fn_HeaderSessionCreate()"><%=sUSER_NM+"("+sUSER_ID+") "%> 님</a></li>
<%
	if ((sPMS_AUTH.equals("01") || sPMS_AUTH.equals("02"))) {
%>
			<li id="hAD010101"><a href="AD010101.jsp">ADMIN</a></li>
<%
    }
%>
			<li><a href="javascript:fn_Logout()">로그아웃</a></li>
		</ul>
	</div><!--//header-->

	<input type="hidden" id="sLOCALMENU"  name="sLOCALMENU" readOnly/>
	<!--container-->
	<div id="containerhome">
		<div class="content">
			<div class="gnb">
				<ul>
<%
	if (sCURR_PRJT_ID.equals("00000000")  || "".equals(sCURR_PRJT_ID)) {
%>
					<li class="on"><a href='MN010101.jsp'>HOME</a></li>
<%
	} else {
%>
					<li class="on"><a href='MN020101.jsp'>HOME</a></li>
<%
	}
%>

<%
	if (sPRJT_TYPE.equals("01")) {
%>
					<li id="MTOP_PJ"><a href='PJ010101.jsp'>프로젝트정보관리</a></li>
					<li id="MTOP_MG"><a href='MG010101.jsp'>프로젝트관리</a></li>
					<li id="MTOP_DV"><a href='DV020101.jsp'>개발관리</a></li>
					<li id="MTOP_TS"><a href='TS010101.jsp'>테스트관리</a></li>
					<li id="MTOP_IS"><a href='CF010101.jsp'>이슈/회의</a></li>
					<li id="MTOP_QT"><a href='QT010101.jsp'>품질관리</a></li>
					<li id="MTOP_NT"><a href='NT010101.jsp'>게시판</a></li>
<%
	} else if (sPRJT_TYPE.equals("02")) {
%>
					<li id="MTOP_SM"><a href='PJ010201.jsp'>프로젝트정보관리</a></li>
					<li id="MTOP_CS"><a href='CS010101.jsp'>CSR/서비스</a></li>
					<li><a href=''>장애/Help Desk</a></li>
					<li><a href=''>이슈/회의</a></li>
					<li><a href=''>SLA</a></li>
					<li><a href=''>게시판</a></li>
<%
	} else {
%>
					<li id="MTOP_PJ"><a href='PJ010101.jsp'>프로젝트정보관리</a></li>
					<li id="MTOP_MG"><a href='MG010101.jsp'>프로젝트관리</a></li>
					<li id="MTOP_DV"><a href='DV020101.jsp'>개발관리</a></li>
					<li id="MTOP_TS"><a href='TS010101.jsp'>테스트관리</a></li>
					<li id="MTOP_IS"><a href='CF010101.jsp'>이슈/회의</a></li>
					<li id="MTOP_QT"><a href='QT010101.jsp'>품질관리</a></li>
					<li id="MTOP_NT"><a href='NT010101.jsp'>게시판</a></li>
<%
	}
%>
				</ul>
			</div><!--//gnb-->
		</div><!--//content-->
	</div><!--//container-->
</body>

<script type="text/javascript">
	var domainPath=location.href.substring(offsetUniPath + 1,location.href.indexOf('/',offsetUniPath+1));
	if(domainPath == "wise") {
		if (document.getElementById('hAD010101') != null)
	    	document.getElementById('hAD010101').innerHTML = "<a href='WSAD010101.jsp'>ADMIN</a>";

		document.getElementById('MTOP_PJ').innerHTML = "<a href='WSPJ010101.jsp'>프로젝트정보관리</a>";
		document.getElementById('MTOP_IS').innerHTML = "<a href='WSCF010101.jsp'>이슈/회의</a>";
	}
</script>
