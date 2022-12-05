<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<br> 
<title>🎉🎉회원가입🎉🎉</title>
</head>
<body>
<h2 align="center">🎉🎉회원가입🎉🎉</h2>
<form method="post" align="center" onsubmit="return checkAll()">
<br> <br> <br> 
	<table align="center">
		<tr>
			<td width="5%" align="center">*</td>
			<td width="20%" >아이디</td>
			<td><input type="text" maxlength="20" name="userId" ></td>
			<td><button type="button">중복확인</td>
		</tr>
		<tr>
			<td width="5%" align="center">*</td>
			<td width="20%">비밀번호</td>
			<td><input type="password" id="pw" name="password1" onchange="checkPw()"></td>
		</tr>
		<tr>
			<td width="5%" align="center">*</td>
			<td width="20%">비밀번호 확인</td>
			<td><input type="password" id="pw2" name="password2" onchange="checkPw()">&nbsp;</td>
			<td><span id="check"></span></td>
		</tr>
		<tr>
			<td width="5%" align="center">*</td>
			<td width="20%">이름</td>
			<td><input type="text"></td>
		</tr>
		<tr>
			<td width="5%" align="center">*</td>
			<td width="20%">주민등록번호</td>
			<td><input type="text"></td>
		</tr>
		<tr>
			<td width="5%" align="center">*</td>
			<td width="20%">이메일</td>
			<td><input type="email"></td>
		</tr>
		<tr>
			<td width="5%" align="center">*</td>
			<td width="20%">휴대폰</td>
			<td><input type="tel" placeholder="010-0000-0000"></td>
		</tr>
	</table>
	<br> <br> <br> 
	<input type="reset" value="다시 입력">
	<input type="submit" value="완료" >		
</form>
<script>      
		function checkPw() {
			var pw = document.getElementById('pw').value;
			var pw2 = document.getElementById('pw2').value;
			var SC = [ "~", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")" ]
			var check_SC = 0;
			
			if(pw.length < 8 || pw.length > 20) {
				alert("8 ~ 20자의 비밀번호를 입력해주세요.");
				document.getElementById('pw').value='';
			}
			
			for(var i=0; i<SC.length; i++){
				if(pw.indexOf(SC[i]) != -1){
					check_SC=1;
				}
			}
			if(check_SC == 0){
				alert("비밀번호는 영문, 숫자, 특수문자를 모두 포함하여야 합니다.")
				document.getElementById('pw').value='';
			}
			if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!='') {
				if(document.getElementById('pw').value==document.getElementById('pw2').value){
	                document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
	                document.getElementById('check').style.color='blue';
	            }
	            else{
	                document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
	                document.getElementById('check').style.color='red';
	            }	
			}	
		}
</script>
</body>
</html>