<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">
	function focusIt() {
		document.inform.id.focus();
	}
	
	function checkIt(){
		inputForm=eval("document.inform");
		if(!inputForm.id.value){
			alert("���̵� �Է��ϼ���~");
			inputForm.id.focus();
			return false;
		}
		if(!inputForm.password.value){
			alert("��й�ȣ�� �Է��ϼ���~");
			inputForm.password.focus();
			return false;
		}
	}


</script>
<title>�α���</title>
</head>

<center>
<body onload="focusIt()">
	<form name="inform"  method="post"  action="-------------" onsubmit="return checkIt();">
	<b><font size="5" color="skyblue">�α���</font></b><br/>
	<table border="3"  bordercolor="skyblue">
		<tr>
		<td bgcolor="skyblue"  style="text-align:center" >&nbsp; &nbsp; &nbsp; ID :&nbsp; &nbsp; &nbsp;     <input type="text"  name="id"  width="50'"/></td></tr>
		<tr>
		<td bgcolor="skyblue" >Password : <input type="password"  name="password" width="50'"/></td></tr>
		</table><br/>
		<input type="submit" value="�α���"/>
	<input type="button" value="���̵�/��й�ȣ ã��"  onclick="location.href="findLogin.jsp"/>
	<input type="button" value="ȸ������"  onclick="location.href="join.jsp"/>

</form>
</body>
</center>
</html>