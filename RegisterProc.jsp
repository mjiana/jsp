<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="regBean" class="ch11.RegisterBean"/>
<jsp:setProperty property="*" name="regBean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ Ȯ��</title>
<link rel="stylesheet" type="text/css" href="Reg_style.css">
</head>
<body>
<form name="regForm" method="post" action="RegisterInsert.jsp"> 
<table border="1">
	<tr>
		<td colspan="2"><b>ȸ������ Ȯ��</b></td>
	</tr>
	<tr>
		<td>���̵�</td>
		<td>
			<input type="text" name="mem_id" id="mem_id" size="20" value="<jsp:getProperty property="mem_id" name="regBean"/>" readonly>
		</td>
	</tr>
	<tr>
		<td>��й�ȣ</td>
		<td><input type="password" name="mem_passwd" size="20" value="<jsp:getProperty property="mem_passwd" name="regBean"/>" readonly></td>
	</tr>
	<tr>
		<td>�̸�</td>
		<td><input type="text" name="mem_name" size="20" value="<jsp:getProperty property="mem_name" name="regBean"/>" readonly></td>
	</tr>
	<tr>
		<td>�ֹε�Ϲ�ȣ</td>
		<td>
			<input type="text" name="mem_num1" size="10"  value="<jsp:getProperty property="mem_num1" name="regBean"/>" readonly>
			- <input type="text" name="mem_num2" size="12"  value="<jsp:getProperty property="mem_num2" name="regBean"/>" readonly>
		</td>
	</tr>
	<tr>
		<td>�̸���</td>
		<td><input type="text" name="mem_email" size="30" value="<jsp:getProperty property="mem_email" name="regBean"/>" readonly></td>
	</tr>
	<tr>
		<td>��ȭ��ȣ</td>
		<td>
			<input type="text" name="mem_phone"  value="<jsp:getProperty property="mem_phone" name="regBean"/>" readonly>
		</td>
	</tr>
	<tr>
		<td>�����ȣ</td>
		<td>
			<input type="text" name="mem_zipcode" size="10"  value="<jsp:getProperty property="mem_zipcode" name="regBean"/>" readonly>
		</td>
	</tr>
	<tr>
		<td>�ּ�</td>
		<td><input type="text" name="mem_address" size="50" value="<jsp:getProperty property="mem_address" name="regBean"/>" readonly></td>
	</tr>
	<tr>
		<td>����</td>
		<td>
			<input type="text" name="mem_job" size="10" value="<jsp:getProperty property="mem_job" name="regBean"/>" readonly>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="ȸ������">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="���ư���" onclick="history.back()">
		</td>
	</tr>
</table>
</form>
</body>
</html>