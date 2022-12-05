<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<style>
body {font-family: "Lato", sans-serif;}
.main-head{height: 150px;background: #FFF;}
.sidenav { height: 100vh;
           width: 100vw; 
           overflow-x: hidden;
           padding-top: 20px;
           background-image: url(https://img.freepik.com/free-vector/flat-hotel-review-background_23-2148157030.jpg?w=740&t=st=1668848636~exp=1668849236~hmac=af52ba94e900abaab8a5a9baecbcef646c17fcd2e31b0f63c7a3a87b295c2f4c);
           background-repeat : no-repeat;
           background-size : cover;
           }
.main {padding: 0px 10px;}
@media screen and (max-height: 450px) {.sidenav {padding-top: 15px;}}
@media screen and (max-width: 450px) {
	.login-form{margin-top: 10%;}
	.register-form{margin-top: 10%;}
}
@media screen and (min-width: 768px){
    .main{margin-left: 40%;}
	.sidenav{width: 40%;position: fixed;z-index: 1;top: 0;left: 0;}
    .login-form{margin-top: 40%;}
    .register-form{margin-top: 20%;}
}
.login-main-text{margin-top: 20%;padding: 60px;color: #fff;}
.login-main-text h2{font-weight: 300;}
.btn-black{background-color: #000 !important;color: #fff;}
</style>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js" charset="utf-8"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
	<div class="sidenav">
         <div class="login-main-text">
            <h2>Hotel<br> Login Page</h2>
            <p>Login or register from here to access.</p>
         </div>
	</div>
    <div class="main">
	    <div class="col-sm-12">
		    <div class="login-form">
			    <div style="width: 100%; display: flex;"> 
				    <div style="width: 100%;">              
						<div class="form-group">							
							<label>아이디</label>
							<input type="text" class="form-control" placeholder="User ID" id="userId" onkeyup="enterkey()">
						</div>
						<div class="form-group">
							<label>비밀번호</label>
							<input type="password" class="form-control" placeholder="Password" id="password" onkeyup="enterkey()">
						</div>
					</div>
					<div style="margin-right: 30%; margin-top: 10%;">
						<button type="button" id="loginBtn" class="btn btn-black" style="margin-left: 10px; width: 95px; height: 80px; margin-top:6px;">로그인</button>
					</div>
			    </div>                                
				<button type="submit" class="btn btn-secondary" onclick="joinAlert()">회원가입</button>
					<button class="btn btn-secondary" data-toggle="modal" data-target="#selectUserIdModal">아이디 찾기</button>
					<button class="btn btn-secondary" data-toggle="modal" data-target="#selectUserPwModal">비밀번호 찾기</button>			    
		    </div>
	    </div>
 	</div>
 	<%@ include file="../login/modal/selectUserIdPage.jsp" %> 
 	<%@ include file="../login/modal/selectUserPwPage.jsp" %> 
</body>
<script>
function enterkey() {
	if (window.event.keyCode == 13) {
		$("#loginBtn").click();
    }
}
// 로그인 버튼 클릭 시
$("#loginBtn").click(function (){
	// 아이디 가져오기
	let userId = $("#userId").val();
	// 비밀번호 가져오기
	let password = $("#password").val();
	
	if(userId == null || userId == ''){
		alert("아이디를 입력해주세요.");
		return false;
	}
	if(password == null || password == ''){
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	
    // ajax 통신
    $.ajax({
        type : "POST",           	
        url : "/login/userLogin",        
        data : {userId:userId, password:password},            
        success : function(res){        	
        	// 로그인 성공
        	if (res != ''){ 
        		location.href="/home"
        	}
        	else {
        		alert("로그인 실패 : 아이디 또는 비밀번호를 확인해주시기 바립니다.")	
        	}
        },
        error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
            alert("오류발생. 관리자에게 문의해주시기 바랍니다.")
        }
    });
	
	
});
function joinAlert() {
	alert("만 19세 이상부터 가입 가능합니다.");
	location.href='consentTerm';
}
</script>
</html>