<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
</head>
<body>
	<div class="nav">
		<h1>ADMIN</h1>
		<ul>
			<li id="mAD010101"><a href="AD010101.jsp">프로젝트생성</a></li>
			<li id="mAD020101"><a href='AD020101.jsp'>인력정보관리</a></li>
			<li id="mAD010302"><a href="AD030101.jsp?p=AD">협력사관리</a></li>
			<li id="mAD010401"><a href="AD040101.jsp">산출물 POOL관리</a></li>
			<li id="mAD010501"><a href="AD050101.jsp">공통코드관리</a></li>
		</ul>
	</div>

<script type="text/javascript">

	if (domainPath == "wise") {
		var AD010302 = document.getElementById("mAD010302");
		AD010302.setAttribute("style", "display:none");

		var AD010501 = document.getElementById("mAD010501");
		AD010501.setAttribute("style", "display:none");

		document.getElementById('mAD010101').innerHTML = "<a href='WSAD010101.jsp'>프로젝트생성</a>";
		document.getElementById('mAD020101').innerHTML = "<a href='WSAD020101.jsp'>인력정보관리</a>";
	}

	$("#MTOP_HOME").removeClass();
	$("#MTOP_AD").addClass("on");

</script>
</body>


