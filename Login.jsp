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
			<td><b><%=mem_id %></b>�� ȯ���մϴ�. </td>
		</tr>
		<tr>
			<td>
				<input type="button" value="�� ��������" onclick="viewPage()">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="�α׾ƿ�" onclick="logCheck()">
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
		<td>���̵�</td>
		<td><input type="text" name="mem_id"></td>
	</tr>
	<tr>
		<td>��й�ȣ</td>
		<td><input type="password" name="mem_passwd"></td>
	</tr>
	<tr>
		<td colspan="2">
			<br>
			<input type="button" value="�α���" onclick="loginCheck()">
			<div align="right"><a href="javascript:memberReg()">ȸ������</a></div>
		</td>
	</tr>
</table>
</form>
<%
}
%>
</body>
</html>