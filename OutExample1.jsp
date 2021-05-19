<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" buffer="5kb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
int totalBuffer = out.getBufferSize();
int remainBuffer = out.getRemaining();
int useBuffer = totalBuffer - remainBuffer;
%>
<body>
<h1>Out Example1</h1>
<b>현재페이지의 Buffer 상태</b><p>
출력 Buffer의 전체 크기 : <%=totalBuffer %>byte<p>
남은 Buffer의 크기 : <%=remainBuffer %>byte<p>
현재 Buffer의 사용량 :  <%=useBuffer %>byte
</body>
</html>