<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<ul>
	<li><a href="board/list">게시판목록</a></li>
	<li><a href="member/reg">회원목록</a></li>
	<li>
		<c:if test="${member != null}"><a href="member/logout">로그아웃</a><br><a href="member/memberDeleteView">회원탈퇴</a></c:if>
		<c:if test="${member == null}">
			<a href="member/loginForm">로그인</a>
			<a href="member/register">회원가입</a>
		</c:if>
	</li>
	<li>
		<c:if test="${member != null}">
			<p>${member.username}님 안녕하세요.</p>
		</c:if>
	</li>
</ul>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>