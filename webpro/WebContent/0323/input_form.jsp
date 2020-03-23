<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> JSP : Java Server Page </h1>
	<%
		request.setCharacterEncoding("UTF-8");
	
	
		String inputName = request.getParameter("name");
		String inputId = request.getParameter("id");
	%>
	
	<%= inputId %>님 즐거운 하루 되세요.<br>
	<%= inputName %>님 반값습니다.
</body>
</html>