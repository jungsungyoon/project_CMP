<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
ul {
  padding: 0;
  background-color: yellow;
  text-align:center;  marginn:0;
}
li {
  display: inline-block;
	
}

ul li a {
	text-decoration: none;
	font-weight: bold;
	color: black;
	font-size: 15pt;
	margin-right: 2em;
}
nav{
padding:0;
margin:0;
}
</style>
<body>
<nav>
<ul>
   <li><a href="index.jsp"></a></li>
<li><a href="#">회사등록</a></li> 
<li><a href="index.jsp?section='search.jsp'">회사조회</a></li> </ul>
</nav>
</body>
</html>