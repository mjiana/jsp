<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="IsMember" class="chapter10.MemberMgr"/>
<%
String memberId = "";
String memberPw = "";
if(request.getParameter("memberid") != null)
	memberId = request.getParameter("memberid");
if(request.getParameter("memberpw") != null)
	memberPw = request.getParameter("memberpw");
if(IsMember.passCheck(memberId, memberPw)){
	session.setAttribute("memID", memberId);
%>
	<script type="text/javascript">
		alert("�α��� �Ǿ����ϴ�");
		location.href = "SessionLoginConfirm.jsp";
	</script>
<%
} else {
%>
	<script type="text/javascript">
		alert("�α��ο� �����߽��ϴ�");
		location.href = "SessionMemberLogin.jsp";
	</script>
<%
}
%>