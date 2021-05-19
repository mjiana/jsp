<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>CommentExample1</h1>
<%
String name = "Korea";
%>
<!-- 주석, 브라우저의 소스보기에서 보인다. -->
<%-- 
jsp 페이지에서만 보이고 브라우저의 소스보기에서 안보인다.
 --%>
 <!-- <%=name %> 주석에도 동적인 변수 사용 -->
 <%=name /*표현식의 주석 */ %> Fighting~
</body>
</html>