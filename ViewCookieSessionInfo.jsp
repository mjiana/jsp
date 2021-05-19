<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션쿠키 확인 예제</title>
</head>
<body>
<jsp:include page="ViewSessionInfo.jsp"/>
세션쿠키------------------------------------------<br>
<%--  
<jsp:include page="TasteCookie.jsp"/>을 사용하면 간결하고 좋겠지만 
15번째 줄에 값과 관련없는 세션쿠키를 출력하지 않기위해 만들었던 if문에 걸려서 주석처리
if(!cookies[i].getName().equals("JSESSIONID"))
--%>
<%
Cookie [] cookies = request.getCookies();
if(cookies != null){
	for(int i=0; i<cookies.length; ++i){
		%>
			<p>
			Cookie Name = <%=cookies[i].getName() %><br>
			Cookie Value = <%=cookies[i].getValue() %>
			</p>
		<%
	}//for end
}//if end
%>
</body>
</html>