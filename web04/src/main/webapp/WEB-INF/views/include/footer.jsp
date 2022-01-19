<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />  
<!DOCTYPE html>
<html>
<body>
<div id="footer">
    <!--퀵탑-->
    <ul class="scroll_btn" id="back-top" style="display: none;">
        <li><a href="" >사이트맵</a></li> 
        <li id="moveTop" ><a href="#header">top</a></li>
    </ul>
    <!--//퀵탑-->
    <div class="footer_left">
        <div class="footer_logo">
            <img src="${path}/include/image/logo.png" alt="문화체육관광부">
        </div>
        <ul class="footer_menu"> 
            <li><a href=""><strong>개인정보처리방침</strong></a></li>
            <li><a href="" >행정서비스헌장 </a></li>
            <li><a href="">저작권정책</a></li>
            <li><a href="">누리집 이용안내</a></li>
            <li><a href="" >누리집 개선의견</a></li>
            <li><a href="">읽기 전용 프로그램 안내</a></li>
        </ul>
        <div class="footer_bottom">
            <address>
            30119 세종특별자치시 갈매로 388 정부세종청사 15동<br /> 
            대표전화 : <a class="tel" href="tel:044-203-2000"><strong class="blue">(044) 203-2000</strong></a>(월~금 09:00~18:00, 공휴일 제외)&nbsp;&nbsp;팩스 : (044) 203-3447<br /> 
            Copyright ⓒ Ministry of Culture, Sports and Tourism
            </address>
        </div>
    </div>
    <div class="footer_right">
        <a href="http://www.kogl.or.kr" class="open" target="_blank" title="공공누리 사이트 새 창 열림"><img src="${path}/include/image/footer_open.gif" alt="OPEN 공공누리 공공저작물 자유이용허락 사이트 바로가기" /></a>
        <a href="/kor/s_etc/webAccess/accessibility.jsp" class="wa" ><img src="${path}/include/image/wa_mark.gif" alt="웹 접근성 품질마크 내용보기" /></a>
    </div>
</div>
</body>
</html>