<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�޴���</title>
</head>
<%! String msg; %>
<%
request.setCharacterEncoding("EUC-KR");
String name = request.getParameter("name");
String color = request.getParameter("color");

if(color.equals("blue")) msg = "�Ķ���";
else if (color.equals("red")) msg = "������";
else if (color.equals("orange")) msg = "��Ȳ��";
else {
	color="white"; 
	msg = "��Ÿ��";
}
%>
<body bgcolor="<%=color%>">
<h1>If-else Example</h1>
<%=name %>���� �����ϴ� ������ <%=msg %>�Դϴ�.
</body>
</html>