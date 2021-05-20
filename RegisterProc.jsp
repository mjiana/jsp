<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="regBean" class="ch11.RegisterBean"/>
<jsp:setProperty property="*" name="regBean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입 확인</title>
<link rel="stylesheet" type="text/css" href="Reg_style.css">
</head>
<body>
<form name="regForm" method="post" action="RegisterInsert.jsp"> 
<table border="1">
	<tr>
		<td colspan="2"><b>회원가입 확인</b></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td>
			<input type="text" name="mem_id" id="mem_id" size="20" value="<jsp:getProperty property="mem_id" name="regBean"/>" readonly>
		</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="mem_passwd" size="20" value="<jsp:getProperty property="mem_passwd" name="regBean"/>" readonly></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="mem_name" size="20" value="<jsp:getProperty property="mem_name" name="regBean"/>" readonly></td>
	</tr>
	<tr>
		<td>주민등록번호</td>
		<td>
			<input type="text" name="mem_num1" size="10"  value="<jsp:getProperty property="mem_num1" name="regBean"/>" readonly>
			- <input type="text" name="mem_num2" size="12"  value="<jsp:getProperty property="mem_num2" name="regBean"/>" readonly>
		</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="mem_email" size="30" value="<jsp:getProperty property="mem_email" name="regBean"/>" readonly></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td>
			<input type="text" name="mem_phone"  value="<jsp:getProperty property="mem_phone" name="regBean"/>" readonly>
		</td>
	</tr>
	<tr>
		<td>우편번호</td>
		<td>
			<input type="text" name="mem_zipcode" size="10"  value="<jsp:getProperty property="mem_zipcode" name="regBean"/>" readonly>
		</td>
	</tr>
	<tr>
		<td>주소</td>
		<td><input type="text" name="mem_address" size="50" value="<jsp:getProperty property="mem_address" name="regBean"/>" readonly></td>
	</tr>
	<tr>
		<td>직업</td>
		<td>
			<input type="text" name="mem_job" size="10" value="<jsp:getProperty property="mem_job" name="regBean"/>" readonly>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="회원가입">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="돌아가기" onclick="history.back()">
		</td>
	</tr>
</table>
</form>
</body>
</html>