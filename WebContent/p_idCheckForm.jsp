<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>id 중복 체크</title>
</head>
<body>
	<div class="wrap">
		<h3 class="pop_tit">아이디 중복 확인</h3>
		<form action="p_idCheckPro.jsp" method="post" onsubmit="return invalidCheck(this)">
			<div class="item_fr">	
				<label for="id" class="lb">아이디 : </label>
				<input type="text" name="id" id="id" placeholder="4~15 문자 및 숫자로 입력" required autofocus />
				<input type="submit" value="중복확인"/>
			</div>	
		</form>
		<script>
		function invalidCheck(f) {
			var id = f.id.value;
			id = id.trim();
			if(id.length<4 || id.length>15) {
				alert("아이디는 글자수가 4이상~15이하 이어야 합니다.");
				return false;
			}
		}
		</script>
	</div>	
</body>
</html>