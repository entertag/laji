<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 六大部分 -->
	<!-- 1、脚本段：嵌套java代码 -->
	<% 
		int a=6;
		int b=5;
		int max=a>=b?a:b;
		System.out.println(max);
		show();
	%>
	
	<!-- 2、表达式 -->
	<%="最大值"+max %>
	<!-- 3、声明（变量、方法） -->
	<%!
		public void show(){
		System.out.println("hello JSP");
	}
	%>
	<!-- 4、注释 -->
	<%--JSP独有注释，不会被JSP引擎解析，在JSP文件解析成java文件时里面的内容不会出现 --%>
	<!-- HTML注释 -->
	<%
		//单行注释
		/**
		*多行注释
		*/
	%>
	<!-- 5、指令 导入包 -->
	<%
		Random rd=new Random();
		int num=rd.nextInt();
	%>
	<br>
	<%=num %>
	<!-- 6、静态内容HTML、CSS、JS -->
</body>
</html>