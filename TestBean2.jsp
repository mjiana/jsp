<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>디자인이 있는경우 Bean 활용</title>
</head>
<body>
문서의 가독성 향상을 위해  액션태그를 사용한다.<br>
<!-- bean 인스턴스 생성 액션태그 -->
<jsp:useBean id="tb" class="chapter07.TestBean"/>
<!-- bean에 값 저장하기  property: value: name: -->
<jsp:setProperty property="name" value="홍길동" name="tb"/>
<jsp:setProperty property="age" value="30" name="tb"/>
<!-- bean에서 값 꺼내기 -->
<jsp:getProperty property="name" name="tb"/><br>
<jsp:getProperty property="age" name="tb"/><br>
</body>
</html>