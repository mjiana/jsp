<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="chapter07.TestBean" %>
<!DOCTYPE html>
<!-- 1. import 2. instance 3. method -->
<html>
<head>
<meta charset="EUC-KR">
<title>�������� ���� ��� Bean Ȱ��</title>
</head>
<body>
<%
//�ν��Ͻ�ȭ
TestBean tb = new TestBean();

//java�� td ����
tb.setName("ȫ�浿");
tb.setAge(30);
%>

<%=tb.getName()  %><br>
<%=tb.getAge()  %><br>
</body>
</html>