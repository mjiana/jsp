<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
<link rel="stylesheet" type="text/css" href="Reg_style.css">
<script type="text/javascript" src="Reg_script.js"></script>
</head>
<body onload="regForm.mem_id.focus()">
<br><br>
<form name="regForm" method="post" action="RegisterProc.jsp"> 
<table border="1">
	<tr>
		<td colspan="3"><b>ȸ������</b></td>
	</tr>
	<tr>
		<td>���̵�</td>
		<td>
			<input type="text" name="mem_id" id="mem_id" size="20">
			<input type="hidden" name="idCk" value="no">
			<input type="button" value="ID�ߺ�Ȯ��" onclick="idCheck(this.form.mem_id.value)">
		</td>
		<td>���̵� ����� ���ڷ� �����ּ���</td>
	</tr>
	<tr>
		<td>��й�ȣ</td>
		<td><input type="password" name="mem_passwd" size="20"></td>
		<td>��й�ȣ�� �����ּ���</td>
	</tr>
	<tr>
		<td>��й�ȣ Ȯ��</td>
		<td><input type="password" name="mem_repasswd" size="20"></td>
		<td>��й�ȣ�� Ȯ���մϴ�</td>
	</tr>
	<tr>
		<td>�̸�</td>
		<td><input type="text" name="mem_name" size="20"></td>
		<td>������ �Ǹ��� �����ּ���</td>
	</tr>
	<tr>
		<td>�ֹε�Ϲ�ȣ</td>
		<td>
			<input type="text" name="mem_num1" size="10" maxlength="6" onkeyup="if(this.value.length==6)regForm.mem_num2.focus()">
			- <input type="text" name="mem_num2" size="12" maxlength="7" onkeyup="if(this.value.length==7)regForm.mem_email.focus()">
		</td>
		<td>�ֹε�Ϲ�ȣ�� �����ּ���</td>
	</tr>
	<tr>
		<td>�̸���</td>
		<td><input type="text" name="mem_email" size="30"></td>
		<td>�̸����� �����ּ���</td>
	</tr>
	<tr>
		<td>��ȭ��ȣ</td>
		<td>
			<input type="hidden" name="mem_phone">
			<input type="text" name="mem_phone1" size="5" maxlength="3" onkeyup="if(this.value.length==3)regForm.mem_phone2.focus()"> 
			- <input type="text" name="mem_phone2" size="5" maxlength="4" onkeyup="if(this.value.length==4)regForm.mem_phone3.focus()"> 
			- <input type="text" name="mem_phone3" size="5" maxlength="4">
		</td>
		<td>��ȭ��ȣ�� �����ּ���</td>
	</tr>
	<tr>
		<td>�����ȣ</td>
		<td>
			<input type="text" name="mem_zipcode" size="10" readonly="readonly">
			<input type="hidden" name="zipCk" value="no">
			<input type="button" value="�����ȣ ã��" onclick="zipCheck()">
		</td>
		<td>�����ȣ�� �˻��ϼ���</td>
	</tr>
	<tr>
		<td>�ּ�</td>
		<td><input type="text" name="mem_address" size="50"></td>
		<td>�ּҸ� �����ּ���</td>
	</tr>
	<tr>
		<td>����</td>
		<td>
			<select name="mem_job">
				<option value="0">�����ϼ���</option>
				<option value="ȸ���">ȸ���</option>
				<option value="����������">����������</option>
				<option value="�����л�">�����л�</option>
				<option value="�Ϲ��ڿ���">�Ϲ��ڿ���</option>
				<option value="������">������</option>
				<option value="�Ƿ���">�Ƿ���</option>
				<option value="������">������</option>
				<option value="����,���,������">����,���,������</option>
				<option value="��,��,����,������">��,��,����,������</option>
				<option value="�ֺ�">�ֺ�</option>
				<option value="����">����</option>
				<option value="��Ÿ">��Ÿ</option>
			</select>
		</td>
		<td>������ �������ּ���</td>
	</tr>
	<tr>
		<td colspan="3">
			<input type="button" value="ȸ������" onclick="inputCheck()">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="�ٽþ���">
		</td>
	</tr>
</table>
</form>
</body>
</html>