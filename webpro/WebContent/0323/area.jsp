<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	img{
		width : 150px;
		height : 100px;
	}
	div{
		border : 1px dotted green;
		padding : 20px;
		width : 50%;
		margin : 50px auto;
	}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name3");
		String area = request.getParameter("area");
		String job = request.getParameter("job");
		//입력한 모양대로 줄바꾸기
		area = area.replaceAll("\r", "").replaceAll("\n", "<br>");
		
	%>
	<div>
		<%= name%>님<br>
		직업 <%= job %><br><br>
		<img src = "../images/호랑이.jpg"><br><br>
		<%= area %>
	</div>
</body>
</html>