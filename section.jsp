<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	function chek(){
		if(chk.search.value==""){
			alert("검색을 원하는 회사를 입력해 주세요.");
			chk.search.focus();
			return false;
		}
		chk.sumbit();
		
	}
</script>
<body>
	<form action="search_list.jsp" method = "post" name="chk" onsubmit="return chek()">
		<br><br><br><br><br><br>
		<input type = "text" name = "search">
		<input type="submit" value="전송"><br><br>
		<input type = "button" value = "회사 등록" onclick = "location.href='company_insert.jsp'">
	</form>
</body>
</html>