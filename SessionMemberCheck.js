/**
 * 
 */
function memCheck(){
	var df = document.memForm;
	if(df.memberid.value==""){
		alert("���̵� �Է����ּ���.");
		df.memberid.focus();
		return;
	}
	if(df.memberpw.value==""){
		alert("��й�ȣ�� �Է����ּ���.");
		df.memberpw.focus();
		return;
	}
	
	df.submit();
}