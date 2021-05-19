<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="test" class="chapter07.SimpleBean" scope="page" />
<!-- scope="page"는 변수의 사용범위, 디폴트 값이므로 안쓰면 page값이다  -->
<jsp:setProperty property="message" name="test" value="빈을 쉽게 정복하자"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>간단한 빈 프로그래밍</h1><br>
Message : <jsp:getProperty property="message" name="test"/>
</body>
</html>