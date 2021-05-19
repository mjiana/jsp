<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- form의 전송방식을 지정하지않으면 GET방식이 디폴트값이다. -->
<form method="post" action="Req_received.jsp">
<input type="text" name="my" value="my1"><br>
<input type="text" name="my" value="my2"><br>
<input type="text" name="my" value="my3"><br>
<input type="text" name="my" value="my4"><br>
<input type="text" name="my" value="my5"><br>
<input type="submit" value="전송">
</form>
</body>
</html>