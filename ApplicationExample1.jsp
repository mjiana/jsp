<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
String serverInfo = application.getServerInfo();
String mimeType1 = application.getMimeType("RequestExample1.html");
String mimeType2 = application.getMimeType("RequestExample1.jsp");
String realPath = application.getRealPath("/");
application.log("application 내부 객체 로그 테스트");
%>
<body>
<h1>ApplicationExample1</h1>
서블릿 컨테이너의 이름과 버전 : <%=serverInfo %><p>
<!-- MIME Type : ASCII코드는 문제가 없지만 바이너리 코드의 문제를 텍스트타입으로 변경 -->
RequestExample1.html의 MIME Type : <%=mimeType1 %><p>
RequestExample1.jsp의 MIME Type : <%=mimeType2 %><p>
로컬 파일 시스템 경로 : <%=realPath %>
</body>
</html>