<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JSP</h1>
<h2> post에 의한 요청 </h2>
<h2> post 요청시 한글이 전달되어 오면 한글 encoding처리 해줘야 한다.</h2>
<h3> request : 내장되어 있는 요청객체</h3>
<h3> response : 내장되어 있는 응답객체</h3>
<h3> out : 내장되어있는 출력객체</h3>
<%
  
  request.setCharacterEncoding("UTF-8");

  String userName = request.getParameter("name");
  String userId = request.getParameter("id");
  
  out.print("이름: " + userName + "<br>");
  out.print("아이디: " + userId + "<br>");
  
  
%>
</body>
</html>