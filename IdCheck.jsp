<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="memMgr" class="ch11.MemberMgr" />
<% 
String mem_id = request.getParameter("mem_id");
boolean check = memMgr.checkId(mem_id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ID�ߺ�Ȯ��</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script type="text/javascript">

function yesId(){
	alert("���̵� ����մϴ�.");
	opener.document.regForm.mem_id.readOnly = true;
	//��Ŀ���� �������� �����ٵ�
	self.close();
}
function noId(){
	alert("�ۼ��� ���̵� �ʱ�ȭ �˴ϴ�.");
	opener.document.regForm.mem_id.readOnly = false;
	opener.document.regForm.mem_id.value="";
	opener.document.regForm.mem_id.focus();
	self.close();
}
</script>
</head>
<body>
<br>
<p align="center">
<b><%=mem_id %></b>��
</p>
<%
if(check) {
%>
	<p align="center">�̹� �����ϴ� ID�Դϴ�.</p>
	<p align="center">
		<input type="button" value="�ݱ�" onclick="self.close()">
	</p>
<%
}
else {
%>
	<p align="center">
	��밡���� ID�Դϴ�.<br>
	����Ͻðڽ��ϱ�?
	</p>
	<p align="center">
	<input type="button" value="yes" onclick="yesId()">
	<input type="button" value="no" onclick="noId()">
	</p>
<%
}
%>

</body>
</html>