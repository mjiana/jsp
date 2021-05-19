<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" session="true"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<% 
request.setCharacterEncoding("euc-kr"); 
String id = request.getParameter("id");
String pw = request.getParameter("pw");

//세션 변수 설정
session.setAttribute("idKey", id);
//세션 유지시간 설정
session.setMaxInactiveInterval(60*5);
%>
<body>
<h1>SessionExample1</h1>
<form method="post" action="SessionExample1_1.jsp">
1. 가장 좋아하는 계절은?<br>
<input type="radio" name="season" value="봄">봄
<input type="radio" name="season" value="여름">여름
<input type="radio" name="season" value="가을">가을
<input type="radio" name="season" value="겨울">겨울
<p>
2. 가장 좋아하는 과일은?<br>
<input type="radio" name="fruit" value="watermelon">수박
<input type="radio" name="fruit" value="melon">멜론
<input type="radio" name="fruit" value="apple">사과
<input type="radio" name="fruit" value="orange">오렌지
<p>
<input type="submit" value="결과보기">
</form>
</body>
</html>