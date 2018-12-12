<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "css/css.css?after">
</head>
<body>
	<nav>
		<jsp:include page="nav.jsp"></jsp:include>
	</nav>
	<hr>
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
		<section>
<%
		String st = request.getParameter("section");
		if(st==null || st.equals("")) st = "section.jsp";
%>
		<jsp:include page="<%=st %>"/>
	</section>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>