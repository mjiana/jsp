<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String memberId = (String)session.getAttribute("memID");
if(memberId == null){
%>
<script type="text/javascript">
alert("�α��� ���� �ʾҽ��ϴ�.");
location.href = "SessionMemberLogin.jsp";
</script>
<%
}// if end
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Simple Login</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<table>
	<tr>
		<td colspan="2"><b>Log On Page</b></td>
	</tr>	
	<tr>
		<td><b><%=memberId %></b>���� �α��� �ϼ̽��ϴ�.</td>
		<td><a href="SessionLogout.jsp"><b>LOGOUT</b></a></td>
	</tr>
</table>
</body>
</html>