<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= request.getAttribute("utype")
		
	%>
	<br>
	<%
		/* request的数据共享 */
		String username=request.getParameter("username");
		String userpwd=request.getParameter("userpwd");
		//System.out.println(username);
		//System.out.println(userpwd);
		out.write("WEB-INF欢迎"+username);
	%>
	
	<%
		
	%>
</body>
</html>