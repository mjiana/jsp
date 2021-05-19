<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>받는쪽</title>
</head>
<%! String msg; %>
<%
request.setCharacterEncoding("EUC-KR");
String name = request.getParameter("name");
String color = request.getParameter("color");

if(color.equals("blue")) msg = "파란색";
else if (color.equals("red")) msg = "빨간색";
else if (color.equals("orange")) msg = "주황색";
else {
	color="white"; 
	msg = "기타색";
}
%>
<body bgcolor="<%=color%>">
<h1>If-else Example</h1>
<%=name %>님이 좋아하는 색상은 <%=msg %>입니다.
</body>
</html>