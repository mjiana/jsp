<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% String mem_id = (String)session.getAttribute("idKey"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="Reg_style.css">
<script type="text/javascript" src="Reg_script.js"></script>
</head>
<body onload="login.mem_id.focus()">
<br>
<%
if(mem_id != null){
%>
	<table>
		<tr>
			<td><b><%=mem_id %></b>님 환영합니다. </td>
		</tr>
		<tr>
			<td>
				<input type="button" value="내 정보보기" onclick="viewPage()">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="로그아웃" onclick="logCheck()">
			</td>
		</tr>
	</table>
<%
} else{
%>
<form name="login" method="post" action="LoginProc.jsp">
<table border="1">
	<tr>
		<td colspan="2"><h4>Login</h4></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="mem_id"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="mem_passwd"></td>
	</tr>
	<tr>
		<td colspan="2">
			<br>
			<input type="button" value="로그인" onclick="loginCheck()">
			<div align="right"><a href="javascript:memberReg()">회원가입</a></div>
		</td>
	</tr>
</table>
</form>
<%
}
%>
</body>
</html>