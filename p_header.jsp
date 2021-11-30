<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
    <div class="wrap">
        <header class="hd">
            <div class="hd_wrap">
                <nav class="tnb">
                    <a href="p_index.jsp" class="logo">
                        <img src="./img/logo.png" alt="앰블럼이미지">
                    </a>
                    <ul class="right">
                        <%
    
    String m_id = (String) session.getAttribute("id");
    String m_name = (String) session.getAttribute("name");
    
   
    if(m_id!=null) {
%>      
         <li><%=m_name %>님이 로그인 중입니다.</li>
         <li style="clear:both"><a href="p_logout.jsp">로그아웃</a></li>
<<<<<<< HEAD
         <li><a href="p_mypage.jsp">마이 페이지</a></li>
=======
         <li><a href="EditMemberFormCtrl">회원정보수정</a></li>
>>>>>>> 65e1348ed04f6a95ef0222e7ad0554bc16569a31
         <li><a href="sitemap.html">사이트맵</a></li>
<%
    } else {   
%>         
         <li><a href="p_loginpage.jsp">로그인</a></li>
         <li><a href="p_agreement.jsp">회원가입</a></li>
         <li><a href="sitemap.html">사이트맵</a></li>
<%
    }
%>         
                    </ul>
                </nav>
            </div>
            <div class="hd_wrap">
                <nav class="gnb">
                    <ul>
                        <li>
                            <a href="NoticeListCtrl2" class="dp1">공지사항</a>
                            <ul class="sub">
                                <li><a href="NoticeListCtrl2">공지사항</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="p_company.jsp" class="dp1">회사소개</a>
                            <ul class="sub">
                                <li><a href="p_company.jsp">회사소개</a></li>
                                <li><a href="p_companycom.jsp">찾아 오시는 길</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="p_allProduct.jsp" class="dp1">제품소개</a>
                            <ul class="sub">
                                <li><a href="p_pie.jsp">파이류</a></li>
                                <li><a href="p_snack.jsp">스낵류</a></li>
                                <li><a href="p_bisket.jsp">비스킷류</a></li>
                                <li><a href="p_gum.jsp">껌류</a></li>
                                <li><a href="p_candy.jsp">캔디류</a></li>
                                <li><a href="p_chocolate.jsp">초콜릿류</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="" class="dp1">신제품 소개</a>
                            <ul class="sub">
                                <li><a href="">신제품 / 리뉴얼 소개</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="CsListCtrl2" class="dp1">고객문의</a>
                            <ul class="sub">
                                <li><a href="CsListCtrl2">고객문의</a></li>
                                <li><a href="">영업소 위치</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
</body>
</html>