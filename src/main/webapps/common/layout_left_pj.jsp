<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
	<div class="nav">
		<h1>프로젝트정보관리</h1>
		<ul>
<%
	String sPRJT_TYPE = "";
	if ((String) session.getAttribute("sPRJT_TYPE") != null)
		sPRJT_TYPE = (String) session.getAttribute("sPRJT_TYPE");

	if (sPRJT_TYPE.equals("01")) {
%>
			<li id="lmPJ010101"><a href="PJ010101.jsp">프로젝트정보관리</a></li>			
<%
	} else if (sPRJT_TYPE.equals("02")) {
%>
			<li id="lmPJ010101"><a href="PJ010201.jsp">프로젝트정보관리</a></li>
<%
	} else {
%>
			<li id="lmPJ010101"><a href="PJ010101.jsp">프로젝트정보관리</a></li>	
<%
	}
%>
			<li id="lmPJ020101"><a href="PJ020101.jsp">프로젝트인력관리</a></li>
			<li id="lmAD010301"><a href="AD030101.jsp?p=02">협력사정보조회</a></li>
		</ul>
	</div>
</body>

<script type="text/javascript">
	
	$("#MTOP_HOME").removeClass();
	$("#MTOP_PJ").addClass("on");

</script>

</html>