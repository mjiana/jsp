<%@ page language="java" 
	contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
out.flush();
//<=out.flush()>도 가능
/*
버퍼의 디폴트 크기는 8kb, 최소 전송량은 512byte
최소 전송량을 못맞추면 전달이 자동으로 진행되지 않으므로 
html이 기다리지 않고 자체적으로 오류처리를 해버린다.
그러므로 out.flush();를 통해 일단 내용을 먼저 보내주고 
준비가 완료되면 다시 내용을 보낸다.
*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
contentType="text/html; charset=EUC-KR" : 현재 페이지에 한글이 포함되어 있음을 서버에게 알림
 건드리면 이클립스가 저장을 안시켜준다.<br>
pageEncoding="EUC-KR" : 클라이언트에게 한글로 인코딩해서 전송<br>
meta charset="EUC-KR" : 브라우저에게 내용물에 한글이 있음을 알림
</body>
</html>