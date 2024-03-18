<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
</head>
<body>
	<div class="nav">
		<h1>테스트관리</h1>
		<ul>
			<li><a href="TS010101.jsp">통합테스트<br>시나리오등록<img height=15></a></li>
			<li><img height=15></li>
			<li><a href="TS010201.jsp">통합테스트 시나리오<br>테스트케이스등록<img height=15></a></li>
			<li><img height=15></li>
			<li><a href="TS010301.jsp">통합테스트<br>결과등록<img height=15></a></li>
			<li><img height=15></li>
			<li><a href="TS010401.jsp">통합테스트<br>결과조회<img height=15></a></li>
			<li><img height=15></li>
			<li><a href="TS020101.jsp">건별테스트 결과조회</a></li>
			<li><a href="TS020102.jsp">건별테스트 결과등록</a></li>
			<li><a href="TS030101.jsp">단위테스트 결과</a></li>
		</ul>
	</div>
</body>

<script type="text/javascript">
	$("#MTOP_HOME").removeClass();
	$("#MTOP_TS").addClass("on");
</script>
