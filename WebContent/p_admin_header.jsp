<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
    <div class="wrap">
        <header class="hd">
            <div class="hd_wrap">
                <nav class="tnb">
                    <a href="p_admin.jsp" class="logo">
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
         <li><a href="index.jsp">메인 페이지로 이동</a></li>
<%
    } else {   
%>         
         <li><a href="p_loginpage.jsp">로그인</a></li>
         <li><a href="p_join.jsp">회원가입</a></li>
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
                            <a href="NoticeListCtrl" class="dp1">공지사항관리</a>
                            <ul class="sub">
                            	<li><a href="NoticeListCtrl">공지사항목록</a></li>
                                <li><a href="p_insertNotice.jsp">공지사항등록</a></li>
                                <li><a href="NoticeDel">공지사항삭제</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="MemberListCtrl" class="dp1">회원관리</a>
                            <ul class="sub">
                            	<li><a href="MemberListCtrl">회원목록</a></li>
                                <li><a href="MemberDel">회원탈퇴</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="ProductListCtrl" class="dp1">제품관리</a>
                            <ul class="sub">
                            	<li><a href="ProductListCtrl">제품목록</a></li>
                                <li><a href="p_insertProduct.jsp">제품등록</a></li>
                                <li><a href="ProductDel">제품삭제</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="NewProductListCtrl" class="dp1">신제품관리</a>
                            <ul class="sub">
                            	<li><a href="NewProductListCtrl">신제품 목록</a></li>
                                <li><a href="p_insertNewProduct.jsp">신제품 등록</a></li>
                                <li><a href="NewProductDel">신제품 삭제</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="CsListCtrl" class="dp1">고객문의관리</a>
                            <ul class="sub">
                                <li><a href="CsListCtrl">고객문의목록</a></li>
                                <li><a href="CsDel">고객문의삭제</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
</body>
</html>