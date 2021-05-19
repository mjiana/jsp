/**
 * 
 */
function inputCheck(){
	var drf = document.regForm;
	if(drf.mem_id.value==""){
		alert("아이디를 입력해주세요.");
		drf.mem_id.focus();
		return;
	}
	if(drf.mem_passwd.value==""){
		alert("비밀번호를 입력해주세요.");
		drf.mem_passwd.focus();
		return;
	}
	if(drf.mem_repasswd.value==""){
		alert("비밀번호 확인을 입력해주세요.");
		drf.mem_repasswd.focus();
		return;
	}
	if(drf.mem_name.value==""){
		alert("이름을 입력해주세요.");
		drf.mem_name.focus();
		return;
	}
	if(drf.mem_email.value==""){
		alert("이메일을 입력해주세요.");
		drf.mem_email.focus();
		return;
	}
	if(drf.mem_phone.value==""){
		alert("전화번호를 입력해주세요.");
		drf.mem_phone.focus();
		return;
	}
	if(drf.mem_passwd.value != drf.mem_repasswd.value){
		alert("비밀번호가 일치하지 않습니다.");
		drf.mem_repasswd.focus();
		return;
	}
	
	drf.submit();
}
