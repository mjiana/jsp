<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<% 
request.setCharacterEncoding("euc-kr"); 
String season = request.getParameter("season");
String fruit = request.getParameter("fruit");
//세션변수 형변환
String id = (String)session.getAttribute("idKey");
//식별자값
String sessionId = session.getId();
int time = session.getMaxInactiveInterval();
%>
<body>
<%
if(id != null){
%>
	<b><%=id %></b>님이 좋아하는 계절과 과일은 <p>
	<b><%=season %></b>과 <b><%=fruit %></b>입니다.</p>
	
	세션ID : <%=sessionId %><p>
	세션 유지시간 : <%=time %>초
	</p>
<%
	//세션 제거
	session.invalidate();
} else{
	out.print("세션 시간이 초과하였거나 다른 이유로 연결할 수 없습니다.");
}
%>
</body>
</html>