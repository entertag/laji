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
	/* 处理登录数据的后台 */
	
	/* 处理请求和响应的编码集,解决乱码问题*/
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	/* 从页面取单个值（表单元素提交的值）name属性——>value值 */
	/* request的数据共享 */
	String username=request.getParameter("username");
	String userpwd=request.getParameter("userpwd");
	System.out.println(username);
	System.out.println(userpwd);
	/* getParameter()无法获取多个值 */
	/* 从页面取多个值  */
	String[] inters=request.getParameterValues("inter");
	/* 打印 */
	/* for(String str:inters){
		System.out.println(str);
	} */
	/* 判断 */
	if("yc".equals(username) && "123".equals(userpwd)){
		/* 页面跳转 */
		//out.print("<script>alert('登录成功');location.href='index.jsp'</script>");
		
		/* 给request额外添加属性 */
		request.setAttribute("utype", "管理员");
		/* 请求转发 */
		//request.getRequestDispatcher("index2.jsp").forward(request, response);
		//request.getRequestDispatcher("./WEB-INF/index2.jsp").forward(request, response);
		/* 请求转发的目标是外网时，会报错 ，只能在工程内部转发*/
		//request.getRequestDispatcher("http://www.baidu.com").forward(request, response);
		
		/* 重定向  （此种方式跳转网页：提交的数据会丢失） 可重定向到外网*/
		//response.sendRedirect("index2.jsp");
		/* 想要数据不丢失，可以用session */
		/* 存储信息到会话session */
		session.setAttribute("utype", "管理员");
		
		//response.sendRedirect("./WEB-INF/index2.jsp");//error 404
		response.sendRedirect("index2.jsp");
	}else{
		/* 转发到外网 */
		response.sendRedirect("http://www.baidu.com");
		
		
	}
%>
</body>
</html>