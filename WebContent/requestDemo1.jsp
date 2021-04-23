<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request对象获取请求头信息</title>
</head>
<body>
	<h2>客户端发送的HTTP请求头包含如下信息</h2>
	<%
		Enumeration<String> headers=request.getHeaderNames();
		while(headers.hasMoreElements()){
			String headersName=headers.nextElement();
			String headersValue=request.getHeader(headersName);
	%>
	<b><%= headersName%></b>&nbsp&nbsp&nbsp&nbsp<b><%= headersValue%></b>
	<br>
	<%
		}
	%>
</body>
</html>