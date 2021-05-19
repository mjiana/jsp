<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
request.setCharacterEncoding("euc-kr");
String name = request.getParameter("name");
String sNum = request.getParameter("sNum");
String gender = request.getParameter("gender");
String major = request.getParameter("major");

if(gender.equals("man")) gender = "남자";
else gender = "여자";
%>
<body>
<h1>RequestExample1</h1>
성명 : <%=name %><br>
학번 : <%=sNum %><br>
성별 : <%=gender %><br>
학과 : <%=major %>
</body>
</html>