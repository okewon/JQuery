<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
   h2{
      color : blue;
   }
</style>
</head>
<body>
   <h1>JSP : Java Server Page</h1>
	웹을 통해 실행되는 자바<br>
   	스크립트릿 안에서 자바문장을 쓰는것
	<%
	   request.setCharacterEncoding("UTF-8");
	   String user = request.getParameter("name");
	   out.print("<h2>"+user+"님 환영합니다.</h2>");
	%>
	
	<h2>반갑습니다.</h2>
	<%=user %>님   
   
</body>
</html>