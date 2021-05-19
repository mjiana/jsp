<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="chapter07.TestBean" %>
<!DOCTYPE html>
<!-- 1. import 2. instance 3. method -->
<html>
<head>
<meta charset="EUC-KR">
<title>디자인이 없을 경우 Bean 활용</title>
</head>
<body>
<%
//인스턴스화
TestBean tb = new TestBean();

//java로 td 전달
tb.setName("홍길동");
tb.setAge(30);
%>

<%=tb.getName()  %><br>
<%=tb.getAge()  %><br>
</body>
</html>