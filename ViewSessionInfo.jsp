<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� Ȯ�� ����</title>
</head>
<body>
<%
Enumeration <String> en = session.getAttributeNames();

while(en.hasMoreElements()){
	String name = en.nextElement();
	String value = (String)session.getAttribute(name);	
	
	out.print("<p>session name : "+name+"<br>");
	out.print("session value : "+value+"</p>");
}//while end
%>
</body>
</html>