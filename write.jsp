<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խ��� �۾���</title>
<link rel="stylesheet" type="text/css" href="boardCSS.css">
<script type="text/javascript">
function trans(theform){
	if(theform.name.value == ""){
		alert("�̸��� �����ϼ���");
		theform.name.focus();
		return;
	}
	if(theform.email.value == ""){
		alert("�̸����� �����ϼ���");
		theform.email.focus();
		return;
	}
	if(theform.homepage.value == ""){
		alert("Ȩ�������� �����ϼ���");
		theform.homepage.focus();
		return;
	}
	if(theform.title.value == ""){
		alert("������ �����ϼ���");
		theform.title.focus();
		return;
	}
	if(theform.content.value == ""){
		alert("������ �����ϼ���");
		theform.content.focus();
		return;
	}
	if(theform.pwd.value == ""){
		alert("��ȣ�� �����ϼ���");
		theform.pwd.focus();
		return;
	}
	theform.submit();
}
</script>
</head>
<body>
<table>
	<tr>
		<td><font>�Ϲ��� �Խ���</font></td>
	</tr>
</table>
<br>
<form method="post" action="write_ok.jsp" name="wform">
<table>
	<tr>
		<td colspan="2">&nbsp;�� �� ����</td>
	</tr>
	<tr>
		<td>&nbsp;�̸�</td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>&nbsp;�̸���</td>
		<td><input type="text" name="email"></td>
	</tr>
	<tr>
		<td>&nbsp;Ȩ������</td>
		<td><input type="text" name="homepage"></td>
	</tr>
	<tr>
		<td>&nbsp;����</td>
		<td><input type="text" name="title"></td>
	</tr>
	<tr>
		<td>&nbsp;����</td>
		<td><textarea name="content"></textarea></td>
	</tr>
	<tr>
		<td>&nbsp;��ȣ</td>
		<td><input type="password" name="pwd"></td>
	</tr>
	<tr>
		<td colspan="2">
		&nbsp;<input type="button" value="���ε�" onclick="trans(this.form)">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" value="�ٽþ���">
		</td>
	</tr>
</table>
</form>
<br>
<table>
	<tr>
		<td>[<a href="./list.jsp">����Ʈ</a>]</td>
	</tr>
</table>
</body>
</html>