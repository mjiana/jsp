<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판 글쓰기</title>
<link rel="stylesheet" type="text/css" href="boardCSS.css">
<script type="text/javascript">
function trans(theform){
	if(theform.name.value == ""){
		alert("이름을 기입하세요");
		theform.name.focus();
		return;
	}
	if(theform.email.value == ""){
		alert("이메일을 기입하세요");
		theform.email.focus();
		return;
	}
	if(theform.homepage.value == ""){
		alert("홈페이지를 기입하세요");
		theform.homepage.focus();
		return;
	}
	if(theform.title.value == ""){
		alert("제목을 기입하세요");
		theform.title.focus();
		return;
	}
	if(theform.content.value == ""){
		alert("내용을 기입하세요");
		theform.content.focus();
		return;
	}
	if(theform.pwd.value == ""){
		alert("암호를 기입하세요");
		theform.pwd.focus();
		return;
	}
	theform.submit();
}
</script>
</head>
<body>
<table>
	<tr>
		<td><font>일반형 게시판</font></td>
	</tr>
</table>
<br>
<form method="post" action="write_ok.jsp" name="wform">
<table>
	<tr>
		<td colspan="2">&nbsp;새 글 쓰기</td>
	</tr>
	<tr>
		<td>&nbsp;이름</td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>&nbsp;이메일</td>
		<td><input type="text" name="email"></td>
	</tr>
	<tr>
		<td>&nbsp;홈페이지</td>
		<td><input type="text" name="homepage"></td>
	</tr>
	<tr>
		<td>&nbsp;제목</td>
		<td><input type="text" name="title"></td>
	</tr>
	<tr>
		<td>&nbsp;내용</td>
		<td><textarea name="content"></textarea></td>
	</tr>
	<tr>
		<td>&nbsp;암호</td>
		<td><input type="password" name="pwd"></td>
	</tr>
	<tr>
		<td colspan="2">
		&nbsp;<input type="button" value="업로드" onclick="trans(this.form)">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" value="다시쓰기">
		</td>
	</tr>
</table>
</form>
<br>
<table>
	<tr>
		<td>[<a href="./list.jsp">리스트</a>]</td>
	</tr>
</table>
</body>
</html>