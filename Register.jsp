<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="Reg_style.css">
<script type="text/javascript" src="Reg_script.js"></script>
</head>
<body onload="regForm.mem_id.focus()">
<br><br>
<form name="regForm" method="post" action="RegisterProc.jsp"> 
<table border="1">
	<tr>
		<td colspan="3"><b>회원가입</b></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td>
			<input type="text" name="mem_id" id="mem_id" size="20">
			<input type="hidden" name="idCk" value="no">
			<input type="button" value="ID중복확인" onclick="idCheck(this.form.mem_id.value)">
		</td>
		<td>아이디를 영어와 숫자로 적어주세요</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="mem_passwd" size="20"></td>
		<td>비밀번호를 적어주세요</td>
	</tr>
	<tr>
		<td>비밀번호 확인</td>
		<td><input type="password" name="mem_repasswd" size="20"></td>
		<td>비밀번호를 확인합니다</td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="mem_name" size="20"></td>
		<td>고객님의 실명을 적어주세요</td>
	</tr>
	<tr>
		<td>주민등록번호</td>
		<td>
			<input type="text" name="mem_num1" size="10" maxlength="6" onkeyup="if(this.value.length==6)regForm.mem_num2.focus()">
			- <input type="text" name="mem_num2" size="12" maxlength="7" onkeyup="if(this.value.length==7)regForm.mem_email.focus()">
		</td>
		<td>주민등록번호를 적어주세요</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="mem_email" size="30"></td>
		<td>이메일을 적어주세요</td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td>
			<input type="hidden" name="mem_phone">
			<input type="text" name="mem_phone1" size="5" maxlength="3" onkeyup="if(this.value.length==3)regForm.mem_phone2.focus()"> 
			- <input type="text" name="mem_phone2" size="5" maxlength="4" onkeyup="if(this.value.length==4)regForm.mem_phone3.focus()"> 
			- <input type="text" name="mem_phone3" size="5" maxlength="4">
		</td>
		<td>전화번호를 적어주세요</td>
	</tr>
	<tr>
		<td>우편번호</td>
		<td>
			<input type="text" name="mem_zipcode" size="10" readonly="readonly">
			<input type="hidden" name="zipCk" value="no">
			<input type="button" value="우편번호 찾기" onclick="zipCheck()">
		</td>
		<td>우편번호를 검색하세요</td>
	</tr>
	<tr>
		<td>주소</td>
		<td><input type="text" name="mem_address" size="50"></td>
		<td>주소를 적어주세요</td>
	</tr>
	<tr>
		<td>직업</td>
		<td>
			<select name="mem_job">
				<option value="0">선택하세요</option>
				<option value="회사원">회사원</option>
				<option value="연구전문직">연구전문직</option>
				<option value="교수학생">교수학생</option>
				<option value="일반자영업">일반자영업</option>
				<option value="공무원">공무원</option>
				<option value="의료인">의료인</option>
				<option value="법조인">법조인</option>
				<option value="종교,언론,예술인">종교,언론,예술인</option>
				<option value="농,축,수산,광업인">농,축,수산,광업인</option>
				<option value="주부">주부</option>
				<option value="무직">무직</option>
				<option value="기타">기타</option>
			</select>
		</td>
		<td>직업을 선택해주세요</td>
	</tr>
	<tr>
		<td colspan="3">
			<input type="button" value="회원가입" onclick="inputCheck()">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="다시쓰기">
		</td>
	</tr>
</table>
</form>
</body>
</html>