<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
 h1{
  color : red;
 }

 p{
  font-size : 2.0em;
 }
</style>
</head>
<body>
<h1>JSP : Java Server Page</h1>

 <%
   String username = request.getParameter("name");
   out.print("<p>이름: " + username + "</p>");
 %>
 
  <p> 이름 : <%= username %> </p>
</body>
</html>