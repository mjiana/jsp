<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cook Cookie</title>
</head>
<%
String cookieName = "myCookie";
String cookieName2 = "myCookie2";
String cookieName3 = "CookieCookie";
Cookie cookie = new Cookie(cookieName, "Apple");
Cookie cookie2 = new Cookie(cookieName2, "Apple");
Cookie cookie3 = new Cookie(cookieName3, "Apple");
cookie.setMaxAge(60); //60�� = 1��
cookie2.setMaxAge(60);
cookie3.setMaxAge(60);
cookie.setValue("Melon");
cookie2.setValue("Mango");
cookie3.setValue("Strawberry");
response.addCookie(cookie);
response.addCookie(cookie2);
response.addCookie(cookie3);
%>
<body>
<h1>Cookie Example</h1>
<p>��Ű�� ����ϴ�</p>
��Ű ������ <a href="TasteCookie.jsp">�����!</a>
</body>
</html>