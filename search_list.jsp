<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
			<tr>
				<td>구분</td>
				<td>타입</td>
				<td>작업제목</td>
				<td>작업내용</td>
				<td>작업자</td>
				<td>비고</td>
			</tr>
 <%
 try{
	 request.setCharacterEncoding("UTF-8");
     response.setCharacterEncoding("UTF-8");
	 String sort,type,title,content,op,other;
	// String company_name=request.getParameter("search");
	 String company=request.getParameter("company");
	 System.out.println(company);
	 Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test3", "root", "muhanbit");
	String sql="SELECT cate.sort, cus.type, cate.title, cus.content, cus.op, cus.other FROM customer_list_tbl as cus INNER JOIN category_tbl as cate ON cus.fk_seq = cate.seq INNER JOIN company_tbl com ON cus.company_name = com.company_name where com.company_name=?";
	PreparedStatement psmt=con.prepareStatement(sql);
	psmt.setString(1, company);
	ResultSet rs=psmt.executeQuery();
	while(rs.next()){
		sort=rs.getString(1);
		type=rs.getString(2);
		title=rs.getString(3);
		content=rs.getString(4);
		op=rs.getString(5);
		other=rs.getString(6);
		%>
	
			<tr>
				<td><%= sort %></td>
				<td><%= type %></td>
				<td><%= title %></td>
				<td><%= content %></td>
				<td><%= op %></td>
				<td><%= other %></td>
			</tr>
			
			
	
		<%
		
	}
			
 }catch(Exception e){
	 e.printStackTrace();
 }
 
 
 %>
 </table>
</body>
</html>