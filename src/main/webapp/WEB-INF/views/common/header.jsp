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
</head>

<!-- 헤더 파일 -->
<div>
<div style="width: auto; margin: auto; height:45px; display: flex; justify-content: space-between; margin-bottom: 10px; margin-left:45%;">
	<div style="font-size: 15pt; margin-top: 10px;">
		<a href="${cpath }" style="color:black;">HOTEL</a>
	</div>
	<div style="display: flex;">
		<div>
			<a href="${cpath }/search">
			 	<img height="40px" src="https://cdn.dailyhotel.com/ux/nav-search-ic@2x.png">
			</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"  aria-expanded="false" role="button" style="padding:0px;">
						<img id="open_submenu" height="40px" src="https://cdn.dailyhotel.com/ux/nav-short-ic@2x.png">						
					</a>
					<ul class="dropdown-menu" role="menu" style="position:inherit;">
						<li>
							<a href="/login">로그인</a>
						</li>	
					</ul>									
				</li>
			</ul>		
		</div>		
	</div>
</div>
</div>
<body>