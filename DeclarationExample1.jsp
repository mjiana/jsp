<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Declaration Example1</title>
</head>
<body>
<h1>DeclarationExample1</h1>
<% 
//지역변수(스크립틀릿 안에서 선언된 변수)는 선언 이후에만 호출 가능하다.
String name = team + "Fighting!"; 
%>
<%! 
//선언부는 스크립틀릿 보다 먼저 실행되어
//전역변수는 문서 내 변수 호출순서와 상관없이 호출 가능하다.
String team = "Korea"; 
%>
출력 결과는 ? <%=name %>
</body>
</html>