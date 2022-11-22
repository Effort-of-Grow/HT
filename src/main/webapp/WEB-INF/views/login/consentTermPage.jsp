<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용 약관 동의</title>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
<h1 align="center">이용 약관 동의</h1>
<br> <br>
<div class="checkbox_group" align="center">
	<div>
		<input type="checkbox" id="check_all" >
		<label for="check_all">전체 동의</label>
	</div>
	<div>
		<input type="checkbox" id="check_1" class="normal" >
		<label for="check_1">개인정보 처리방침 동의 (필수)</label>
	</div>
	<div>
		<input type="checkbox" id="check_2" class="normal" >
		<label for="check_2">서비스 이용약관 동의 (필수)</label>
	</div>
	<div>
		<input type="checkbox" id="check_3" class="normal" >
		<label for="check_3">마케팅 수신 동의 (선택)</label>
	</div>
<script>
	// 체크박스 전체 선택 (.:클래스명, #:id명)
	$(".checkbox_group").on("click", "#check_all", function() {
		$(this).parents(".checkbox_group").find('input').prop("checked", $(this).is(":checked"));
	});
	// 체크박스 개별 선택
	$(".checkbox_group").on("click", ".normal", function() {
		 var is_checked = true;
		 
		 $(".checkbox_group .normal").each(function() {
			 is_checked = is_checked && $(this).is(":checked");
		 });
		 
		 $("#check_all").prop("checked", is_checked);
	});
</script>
<script>
	// 체크박스의 필수항목이 체크되었는지 확인
	function CheckTest() {
		//id 'check_1', 'check_2' 체크박스 검사
		if($("#check_1").is(":checked") && $("#check_2").is(":checked")){
			location.href='signup';
		}else{
			alert("필수 이용약관에 동의하셔야 합니다.");
			return false;
		}	
	}
</script>
<br> <br>
<div>
	<button type="submit" onclick="return CheckTest();">회원 가입</button>
</div>
</div>
</body>
</html>