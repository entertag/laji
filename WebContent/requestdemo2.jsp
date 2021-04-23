<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>Request对象应用演示</title></head>
<body>
<h2>Request对象方法演示</h2>
<table border="1">
	<tr>
		<td>通信协议:</td>
		<td><%= request.getProtocol() %></td>
	</tr>
	<tr>
		<td>请求方式:</td>
		<td><%= request.getScheme() %></td>
	</tr>
	<tr>
		<td>服务器名称:</td>
		<td><%= request.getServerName() %></td>
	</tr>
	<tr>
		<td>通信端口:</td>
		<td><%= request.getServerPort() %></td>
	</tr>
	<tr>
		<td>使用者IP:</td>
		<td><%= request.getRemoteAddr() %></td>
	</tr>
	<tr>
		<td>主机地址:</td>
		<td><%= request.getRemoteHost() %></td>
	</tr>
</table>
</body>
</html>