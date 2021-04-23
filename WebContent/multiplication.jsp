<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>九九乘法表</title>
<style>
	td{
		border:1px solid skyblue;
	}
</style>
</head>
<body>
	<%
		out.println("九九乘法表");
	%>
	<br>
	<%
		for(int i=1;i<=9;i++){
			for(int j=1;j<=i;j++){
	%>
	<%=i+"*"+j+"="+i*j%>&nbsp&nbsp
	<%
			}
	%>
	<br>
	<%
		}
	%>
	
	<table>
	<%
		for(int i=1;i<=9;i++){
	%>
	<tr>
	<% 
			for(int j=1;j<=i;j++){
	%>
	<td>
	<%=i+"*"+j+"="+i*j%>
	</td>
	<%
			}
	%>
	</tr>
	<%
		}
	%>
	
	</table>
</body>
</html>