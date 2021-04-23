<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		/* 
		session能够跨页面共享数据 
		session中的值在浏览器关闭前不会销毁
		*/
		out.write("我是个人主页");
		/* 解决：重定向  （此种方式跳转网页：提交的数据会丢失） */
		//从session里面取值
		String utype2=session.getAttribute("utype")+"";
		out.write("职位"+utype2);
	%>
</body>
</html>