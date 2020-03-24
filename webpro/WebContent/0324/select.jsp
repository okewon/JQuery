<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//1. 드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//2. Connection 객체 얻기
		String url = "jdbc:orable:thin:@localhost:1521:xe";
		String user = "Ock";
		String password = "java";
		Connection conn = DriverManager.getConnection(url, user, password);
		
		//3. Statement 객체 만들기
		Statement stmt = conn.createStatement();
		
		//4. sql 문장 만들기
		String sql = "select * from lprod";
		
		//5. sql 문장을 실행하기
		ResultSet rs = stmt.executeQuery(sql);
		
		//6. 출력하기
		while(rs.next()){
			
		}
	%>
</body>
</html>