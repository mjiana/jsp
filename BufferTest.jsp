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
//buffer="1kb" autoFlush="true" : 1kb�� ���� �ڵ����� ������ �����Ѵ�.

for(int i=1; i<=1000; i++){
	int size = out.getBufferSize();
	int size2 = out.getRemaining();
	out.print(i+" ����ȭ ���� �Ǿ����ϴ� : "+size
			+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : "+size2+"<br>");
}

%>
</body>
</html>