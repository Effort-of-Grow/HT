<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<br> 
<title>ππνμκ°μππ</title>
</head>
<body>
<h2 align="center">ππνμκ°μππ</h2>
<form method="post" align="center" onsubmit="return checkAll()">
<br> <br> <br> 
	<table align="center">
		<tr>
			<td width="5%" align="center">*</td>
			<td width="20%" >μμ΄λ</td>
			<td><input type="text" maxlength="20" name="userId" ></td>
			<td><button type="button">μ€λ³΅νμΈ</td>
		</tr>
		<tr>
			<td width="5%" align="center">*</td>
			<td width="20%">λΉλ°λ²νΈ</td>
			<td><input type="password" id="pw" name="password1" onchange="checkPw()"></td>
		</tr>
		<tr>
			<td width="5%" align="center">*</td>
			<td width="20%">λΉλ°λ²νΈ νμΈ</td>
			<td><input type="password" id="pw2" name="password2" onchange="checkPw()">&nbsp;</td>
			<td><span id="check"></span></td>
		</tr>
		<tr>
			<td width="5%" align="center">*</td>
			<td width="20%">μ΄λ¦</td>
			<td><input type="text"></td>
		</tr>
		<tr>
			<td width="5%" align="center">*</td>
			<td width="20%">μ£Όλ―Όλ±λ‘λ²νΈ</td>
			<td><input type="text"></td>
		</tr>
		<tr>
			<td width="5%" align="center">*</td>
			<td width="20%">μ΄λ©μΌ</td>
			<td><input type="email"></td>
		</tr>
		<tr>
			<td width="5%" align="center">*</td>
			<td width="20%">ν΄λν°</td>
			<td><input type="tel" placeholder="010-0000-0000"></td>
		</tr>
	</table>
	<br> <br> <br> 
	<input type="reset" value="λ€μ μλ ₯">
	<input type="submit" value="μλ£" >		
</form>
<script>      
		function checkPw() {
			var pw = document.getElementById('pw').value;
			var pw2 = document.getElementById('pw2').value;
			var SC = [ "~", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")" ]
			var check_SC = 0;
			
			if(pw.length < 8 || pw.length > 20) {
				alert("8 ~ 20μμ λΉλ°λ²νΈλ₯Ό μλ ₯ν΄μ£ΌμΈμ.");
				document.getElementById('pw').value='';
			}
			
			for(var i=0; i<SC.length; i++){
				if(pw.indexOf(SC[i]) != -1){
					check_SC=1;
				}
			}
			if(check_SC == 0){
				alert("λΉλ°λ²νΈλ μλ¬Έ, μ«μ, νΉμλ¬Έμλ₯Ό λͺ¨λ ν¬ν¨νμ¬μΌ ν©λλ€.")
				document.getElementById('pw').value='';
			}
			if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!='') {
				if(document.getElementById('pw').value==document.getElementById('pw2').value){
	                document.getElementById('check').innerHTML='λΉλ°λ²νΈκ° μΌμΉν©λλ€.'
	                document.getElementById('check').style.color='blue';
	            }
	            else{
	                document.getElementById('check').innerHTML='λΉλ°λ²νΈκ° μΌμΉνμ§ μμ΅λλ€.';
	                document.getElementById('check').style.color='red';
	            }	
			}	
		}
</script>
</body>
</html>