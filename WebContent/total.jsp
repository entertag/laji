<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>统计访问次数</title>
</head>
<body>
	<%
		int count=0;
		/* 整个程序共享一个application */
		//第一次访问
		if(application.getAttribute("count")==null){
			count++;
		}else{
			count=Integer.parseInt(application.getAttribute("count")+"")+1;
		}
		//存储访问次数
		application.setAttribute("count", count);
		
		
	%>
	<%="第"+count+"次访问"  %>
</body>
</html>