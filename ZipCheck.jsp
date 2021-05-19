<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, ch11.*"  %>
<jsp:useBean id="memMgr" class="ch11.MemberMgr" />
<%
request.setCharacterEncoding("euc-kr");
String check = request.getParameter("check");
String area3 = request.getParameter("area3");
Vector zipcodeList = memMgr.zipcodeRead(area3);
int totalList = zipcodeList.size();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����ȣ �˻�</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script type="text/javascript">
function dongCheck(){
	var dzf = document.zipForm;
	if(dzf.area3.value == ""){
		alert("���̸��� �Է��ϼ���");
		dzf.area3.focus();
		return;
	}
	dzf.submit();
}

function sendAddress(zipcode, area1, area2, area3, area4){
	var address = area1+" "+area2+" "+area3+" "+area4;
	
	opener.document.regForm.mem_zipcode.value = zipcode;
	opener.document.regForm.mem_address.value = address;
	self.close();
}
</script>
</head>
<body>
<b>�����ȣ �˻�</b>
<table>
	<tr>
		<td><br>
		<form name="zipForm" method="post" action="ZipCheck.jsp">
		���̸� �Է� : <input type="text" name="area3">
		<input type="button" value="�˻�" onclick="dongCheck()">
		<input type="hidden" value="n" name="check">
		</form>
		</td>
	</tr>
	<%
	if(check.equals("n")){
		if(zipcodeList.isEmpty()){
	%>
	<tr>
		<td><br>�˻��� ����� �����ϴ�.<br></td>
	</tr>
	<%
		}else{
	%>
	<tr>
		<td><br>�˻� �� �Ʒ��� �����ȣ�� Ŭ���ϸ� �ڵ����� �Էµ˴ϴ�.</td>
	</tr>
	<%	
			for(int i=0; i<totalList; i++){
				ZipcodeBean zipBean = (ZipcodeBean)zipcodeList.elementAt(i);
				String tempZipcode = zipBean.getZipcode();
				String tempArea1 = zipBean.getArea1();
				String tempArea2 = zipBean.getArea2();
				String tempArea3 = zipBean.getArea3();
				String tempArea4 = zipBean.getArea4();
			%>
	<tr>
		<td>
			<a href="javascript:sendAddress('<%=tempZipcode%>','<%=tempArea1%>','<%=tempArea2%>','<%=tempArea3%>','<%=tempArea4%>')">
				<%=tempZipcode%>&nbsp;<%=tempArea1%>&nbsp;<%=tempArea2%>&nbsp;<%=tempArea3%>&nbsp;<%=tempArea4%>
			</a>
		</td>
	</tr>
			<%
			}//for end
		}//if(zipcodeList.isEmpty()) else end
	} //if(check.equals("n")) end
	%>
	<tr>
		<td><br><input type="button" value="�ݱ�" onclick="self.close()"> </td>
	</tr>
</table>
</body>
</html>