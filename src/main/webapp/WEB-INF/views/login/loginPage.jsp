<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!-- 개발 스크립트. 도움되는 콘솔 경고를 포함. -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
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
							<label id="app">{{ title }}</label>
							<input type="text" class="form-control" placeholder="User ID">
						</div>
						<div class="form-group">
							<label>비밀번호</label>
							<input type="password" class="form-control" placeholder="Password">
						</div>
					</div>
					<div style="margin-right: 30%; margin-top: 10%;">
						<button type="submit" class="btn btn-black" style="margin-left: 10px; width: 95px; height: 80px; margin-top:6px;">로그인</button>
					</div>
			    </div>                                
				<button type="submit" class="btn btn-secondary">회원가입</button>
			    <button type="submit" class="btn btn-secondary">아이디 찾기</button>
			    <button type="submit" class="btn btn-secondary">비밀번호 찾기</button>               
		    </div>
	    </div>
 	</div> 
</body>
<script>
new Vue({
  el: '#app', 
  data: {
    title: '아이디'
  }   
})
</script>
</html>