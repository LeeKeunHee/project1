<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<style>
.content {
	clear: both;
	width: 100%;
	min-height: 2000px;
}
</style>
<style>
/* 내부 스타일 */
.frm fieldset {
	width: 600px;
	border-style: none;
	padding: 10px;
	margin: 20px auto;
}

.frm>fieldset>li {
	list-style: none;
}

.con_tit {
	font-size:x-large;
	padding-top:20px;
	text-align: center;
	font-family: 'Noto Sans KR', sans-serif;
}

.indata {
	display: block;
	width: 600px;
	height: 48px;
	line-height: 48px;
	text-indent: 16px;
	margin: 30px auto;
}

.btn_fr {
	width: 600px;
}

.btn_fr li:first-child {
	float: left;
}

.btn_fr li:last-child {
	float: right;
}

.inbtn {
	display: block;
	width: 240px;
	height: 48px;
	line-height: 48px;
	text-align: center;
	background-color: #333;
	color: #fff;
	border: 0;
	outline: 0;
	border-radius: 28px;
}

.inbtn:hover {
	background-color: #ABABAB;
}
</style>
<link rel="stylesheet" href="./css/a_common.css">
<link rel="stylesheet" href="./css/reset2.css">
</head>
<body>
	<%@ include file="p_header.jsp"%>
	<section class="content" style="background-color: #fff;">
		<h1 class="con_tit">로그인</h1>
		<form action="p_login.jsp" method="post" class="frm">
			<fieldset>
				<li>아이디</li> <input type="text" class="indata" id="m_id" name="m_id"
					placeholder="아이디 입력" autofocus required />
				<li>비밀번호</li> <input type="password" class="indata" id="m_pw"
					name="m_pw" placeholder="비밀번호 입력" required /> <br />
				<br />
				<ul class="btn_fr">
					<li><input type="submit" class="inbtn" value="로그인" /></li>
					<li><input type="reset" class="inbtn" value="취소" /></li>
				</ul>
			</fieldset>
		</form>
	</section>
	<%@ include file="p_footer.jsp"%>
</body>
</html>