<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="search_list.jsp" method="get">
<select name="company">
<%
try{
	String sql="SELECT company_name from company_tbl";
	String company_name;
	 Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test3", "root", "muhanbit");
		PreparedStatement psmt=con.prepareStatement(sql);
		ResultSet rs=psmt.executeQuery();
		while(rs.next()){
			company_name=rs.getString(1);
			%>
			
				<option value="<%=company_name %>"><%= company_name %></option>
			<% 
		}
	%>
	<input type="submit" value="조회">
	<% 
}catch(Exception e){
	e.printStackTrace();
}



%>
<!-- <script>
	function chek(){
		if(chk.search.value==""){
			alert("검색을 원하는 회사를 입력해 주세요.");
			chk.search.focus();
			return false;
		}
		chk.submit();
		
	}
</script>-->
<!-- onsubmit="return chek()" 
	<form action="search_list.jsp" method = "post" name="chk" >
		<br><br><br><br><br><br>
		<input type = "text" name = "search">
		<input type="button" value="전송" onclick="chek()"><br><br>
		
	</form>-->
	
	</select>
	</form>
</body>
</html>
