<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="modal fade" id="selectUserPwModal" data-backdrop="static" data-keyboard="false">
	    <div class="modal-dialog modal-xl modal-dialog-centered">
	      <div class="modal-content">
	      
	        <!-- Modal Header -->
	        <div class="modal-header">
	          <h4 class="modal-title">비밀번호 찾기</h4>
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	        </div>
	        
	        <!-- Modal body -->
	        <div class="modal-body">
	            <label>아이디</label>
				<input type="text" class="form-control" placeholder="아이디를 입력해주세요." id="selectUserId" onkeyup="selectUserIdEnterkey()">
	        </div>
	        
	        <!-- Modal footer -->
	        <div class="modal-footer">
	          <button type="button" class="btn btn-secondary" id="selectUserPwBtn">비밀번호 찾기</button>
	        </div>
	        
	      </div>
	    </div>
	</div>
</body>
<script>
function selectUserIdEnterkey() {
	if (window.event.keyCode == 13) {
		$("#selectUserPwBtn").click();
    }
}
//비밀번호 찾기 버튼 클릭 시
$("#selectUserPwBtn").click(function (){		
	var userId = $("#selectUserId").val();
	if(userId == null || userId == ''){
		alert("아이디를 입력해주세요.");
		return false;
	}
	// ajax 통신
    $.ajax({
        type : "POST",           	
        url : "/login/selectUserPw",        
        data : {userId:userId},            
        success : function(res){        	
        	if(res == null || res == ''){
        		alert("잘못된 아이디 입니다.")
        	}else {
        		alert("비밀번호는 "+ res + "입니다.")	
        	}        	
        },
        error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
            alert("오류발생. 관리자에게 문의해주시기 바랍니다.")
        }
    });
});
</script>
</html>