/**
 * 
 */
function inputCheck(){
	var drf = document.regForm;
	if(drf.mem_id.value==""){
		alert("���̵� �Է����ּ���.");
		drf.mem_id.focus();
		return;
	}
	if(drf.mem_passwd.value==""){
		alert("��й�ȣ�� �Է����ּ���.");
		drf.mem_passwd.focus();
		return;
	}
	if(drf.mem_repasswd.value==""){
		alert("��й�ȣ Ȯ���� �Է����ּ���.");
		drf.mem_repasswd.focus();
		return;
	}
	if(drf.mem_name.value==""){
		alert("�̸��� �Է����ּ���.");
		drf.mem_name.focus();
		return;
	}
	if(drf.mem_email.value==""){
		alert("�̸����� �Է����ּ���.");
		drf.mem_email.focus();
		return;
	}
	if(drf.mem_phone.value==""){
		alert("��ȭ��ȣ�� �Է����ּ���.");
		drf.mem_phone.focus();
		return;
	}
	if(drf.mem_passwd.value != drf.mem_repasswd.value){
		alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
		drf.mem_repasswd.focus();
		return;
	}
	
	drf.submit();
}
