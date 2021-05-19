/**
 * 
 */
function memCheck(){
	var df = document.memForm;
	if(df.memberid.value==""){
		alert("아이디를 입력해주세요.");
		df.memberid.focus();
		return;
	}
	if(df.memberpw.value==""){
		alert("비밀번호를 입력해주세요.");
		df.memberpw.focus();
		return;
	}
	
	df.submit();
}