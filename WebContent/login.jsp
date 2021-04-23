<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>源辰信息科技</title>
</head>
<body>
<!-- 跳转到doLogin.jsp网页 get请求会显示信息在地址栏上 一般使用post请求 -->
<form action="doLogin.jsp" method="post">
	<table>
		<tr>
			<td>用户名：</td>
			<td><input type="text" name="username" /></td>
		</tr>
		<tr>
			<td>密码：</td>
			<td><input type="password" name="userpwd" /></td>
		</tr>
		</tr>
			<td>兴趣：</td>
			<td>
				<input type="checkbox" name="inter" value="阅读" />阅读
				<input type="checkbox" name="inter" value="竞走" />竞走
				<input type="checkbox" name="inter" value="跑步" />跑步
			</td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" = value="登陆" /></td>
		</tr>
	</table>
</form>
</body>
</html>