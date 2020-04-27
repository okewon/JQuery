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
	p{
		font-size : 30px;
		color : red;
	}
</style>
</head>
<body>
	<%
		//전송시 입력된/선택한 값을 전달한다.
		request.setCharacterEncoding("UTF-8");
		
		//request.getParameter("hobby");
		String[] str = request.getParameterValues("hobby");
		
		out.print("<h2>당신의 취미는");
		for(int i = 0; i < str.length; i++){
			out.print(str[i] + "<br>");
		}
		out.print("입니다.</h2>");
	%>
	
	<br>
	<br>
	<p>당신의 취미는 <%= str[0] %></p>
</body>
</html>