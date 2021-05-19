<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" buffer="1kb" autoFlush="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
//buffer="1kb" autoFlush="true" : 1kb가 차면 자동으로 내용을 전송한다.

for(int i=1; i<=1000; i++){
	int size = out.getBufferSize();
	int size2 = out.getRemaining();
	out.print(i+" 무궁화 꽃이 피었습니다 : "+size
			+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : "+size2+"<br>");
}

%>
</body>
</html>