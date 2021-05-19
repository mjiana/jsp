<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="Error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>DirectiveExample3</h1>
<% 
/*
버퍼의 디폴트 크기는 8kb, 최소 전송량은 512byte
최소 전송량을 못맞추면 전달이 자동으로 진행되지 않으므로 
html이 기다리지 않고 자체적으로 오류처리를 해버린다.
그러므로 out.flush();를 통해 일단 내용을 먼저 보내주고 
준비가 완료되면 다시 내용을 보낸다.
*/
out.flush();
int one = 1;
int zero = 0;
%>
one과 zero의 사칙연산<p>
one + zero = <%=one+zero %><p>
one - zero = <%=one-zero %><p>
one * zero = <%=one*zero %><p>
one / zero = <%=one/zero %><p>
</body>
</html>