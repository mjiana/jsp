<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="memMgr" class="ch11.MemberMgr"/>
<jsp:useBean id="regBean" class="ch11.RegisterBean"/>
<jsp:setProperty property="*" name="regBean"/>
<% boolean flag = memMgr.memberInsert(regBean); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� �߰�</title>
<link rel="stylesheet" type="text/css" href="Reg_style.css">
</head>
<body>
<br>
<%
if(flag){
%>
	<p> <b>ȸ�������� ���ϵ帳�ϴ�.</b> </p>
	<p> <input type="button" value="�α���" onclick="location.href='Login.jsp'"> </p> 
<%
} else{
%>
	<p> <b>�ٽ� �Է��Ͽ� �ֽʽÿ�.</b> </p>
	<p> <input type="button" value="�ٽ� ����" onclick="location.href='Register.jsp'"> </p> 
<%
}
%>
</body>
</html>