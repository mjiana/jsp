<%@page import="ch11.RegisterBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<jsp:useBean id="memMgr" class="ch11.MemberMgr"/>
<% 
String idKey = (String)session.getAttribute("idKey");
if(idKey == null)response.sendRedirect("Login.jsp");
RegisterBean rb = memMgr.memberView(idKey);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� ���� ����</title>
<link rel="stylesheet" type="text/css" href="Reg_style.css">
<script type="text/javascript" src="Reg_script.js"></script>
</head>
<body>
	<table border="1">
		<tr>
			<td>���̵�</td>
			<td><%=rb.getMem_id() %></td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><%=rb.getMem_name() %></td>
		</tr>
		<tr>
			<td>�ֹι�ȣ</td>
			<td><%=rb.getMem_num1() %> - <%=rb.getMem_num2() %></td>
		</tr>
		<tr>
			<td>�̸���</td>
			<td><%=rb.getMem_email() %></td>
		</tr>
		<tr>
			<td>��ȭ��ȣ</td>
			<td><%=rb.getMem_phone() %></td>
		</tr>
		<tr>
			<td>�ּ�</td>
			<td><%=rb.getMem_zipcode() %>&nbsp;<%=rb.getMem_address() %></td>
		</tr>
		<tr>
			<td>����</td>
			<td><%=rb.getMem_job() %></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="�α׾ƿ�" onclick="logCheck()"> 
			</td>
		</tr>
	</table>
</body>
</html>