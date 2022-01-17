<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style type="text/css">
	li {list-style: none; display:inline; padding: 6px;}
</style>
<ul>
	<li><a href="list">목록</a></li>
	<li><a href="writeView">글 작성</a></li>
	<li>
		<c:if test="${member != null}"><a href="../member/logout">로그아웃</a></c:if>
		<c:if test="${member == null}">
			<a href="../member/loginForm">로그인</a>
			<a href="../member/register">회원가입</a>
		</c:if>
	</li>
	<li>
		<c:if test="${member != null}">
			<p>${member.userid}님 안녕하세요.</p>
		</c:if>
	</li>
</ul>