<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String memberId = (String)session.getAttribute("memID");
if(memberId != null){
%>
<script type="text/javascript">
alert("이미 로그인된 상태 입니다.");
location.href = "SessionLoginConfirm.jsp";
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
<script type="text/javascript" src="SessionMemberCheck.js"></script>
</head>
<body>
<form method="post" action="SessionMemberLoginOK.jsp" name="memForm">
<table>
	<tr>
		<td colspan="2"><b>Login</b></td>
	</tr>	
	<tr>
		<td width="30%">ID</td>
		<td width="70%"><input type="text" name="memberid"></td>
	</tr>
	<tr>
		<td>PW</td>
		<td><input type="text" name="memberpw"></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="button" value="login" onclick="memCheck()">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="reset">
		</td>
	</tr>	
</table>
</form>
</body>
</html>