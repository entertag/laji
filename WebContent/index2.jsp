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
		String utype1=request.getAttribute("utype")+"";
		out.write("职位"+utype1);
	%>
	<hr>
	<%
		/* 解决：重定向  （此种方式跳转网页：提交的数据会丢失） */
		//从session里面取值
		String utype2=session.getAttribute("utype")+"";
		out.write("职位"+utype2);
	%>
</body>
</html>