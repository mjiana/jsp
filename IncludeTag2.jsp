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
String siteName = request.getParameter("siteName"); 
%>
<body>
<h1>IncludeTag2</h1>
<jsp:include page="IncludeTagTop2.jsp">
	<jsp:param value="JSPstudy" name="siteName"/>
</jsp:include>
include Action Tag Body<p>
<b><%=siteName %></b>
<hr>
</body>
</html>