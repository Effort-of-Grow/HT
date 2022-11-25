<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
 #header{
    font-weight: bold;
    background-color: brown;
    font-size: 30px;
    color: white;
}
.wrapper{
    width: 100%;
    min-height: 100px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.lists{
    display: flex;
    margin-right: 60px;
}
.lists li{
    margin-right: 20px;
}
.title{
    font-size: 40px;
    margin-left: 30px;
}
.log{
    margin-right: 30px;
}

</style>
<meta charset="UTF-8">
<title>호텔</title>
<c:set var="cpath">${pageContext.request.contextPath }</c:set>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- Vue.js  -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
</head>
<%
	// 세션에 저장된 값 가죠오기
	String userId = (String) session.getAttribute("userId");
%>
<!-- 헤더 파일 -->
<header>
	<div style="border-bottom: 1px solid #d3d3d3; vertical-align: middle; margin-bottom: 10px;">
		<div style="width: auto; margin: auto; height:45px; display: flex; justify-content: space-between; margin-left:45%;">
			<div style="font-size: 15pt; margin-top: 10px;">
				<a href="${cpath }" style="color:black;">HOTEL</a>
			</div>
			<div style="display: flex;">
				<div style="text-align: center;line-height: 45px;">
					${sessionScope.userId}
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"  aria-expanded="false" role="button" style="padding:0px;">
								<img id="open_submenu" height="40px" src="https://cdn.dailyhotel.com/ux/nav-short-ic@2x.png">						
							</a>
							<ul class="dropdown-menu" role="menu" style="position:inherit;">
								<c:if test="${sessionScope.userId eq null}">
									<li>
										<a href="/">로그인</a>
									</li>	
								</c:if>	
								<c:if test="${not empty sessionScope.userId}">
									<li>
										<a href="">마이페이지</a>
									</li>
									<li>
										<a href="/logout">로그아웃</a>
									</li>
								</c:if>
							</ul>									
						</li>
					</ul>		
				</div>		
			</div>
		</div>
	</div>
</header>

<script>
$(document).ready(function(){
	// 세션 가져오기
	var sessionUserId = '${sessionScope.userId}';	
	// 세션이 없을 시 로그인 페이지로 이동 	
	if(sessionUserId == '' || sessionUserId == null){
		alert("세션정보가 만료되었습니다. 다시 로그인해 주세요.")
		location.href = "/";
	}
			
});
</script>