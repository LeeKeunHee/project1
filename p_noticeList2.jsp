<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.orion.model.NoticeDAO" %>
<%
   ArrayList<NoticeDAO> noticeList = (ArrayList<NoticeDAO>) request.getAttribute("noticeList");
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
<link rel="stylesheet" href="./css/reset2.css">
<link rel="stylesheet" href="./css/a_common.css">
<style>
.tit{text-align:center;}
table { display:table; border-collapse:collapse;}
tr { display:table-row; text-align: center;}
th, td{display:table=cell;}
.tb{ width:1000px; margin:20px auto;}
.tb th, .tb td{ line-height:36px; border-bottom:1px solid #333;}
.tb th { border-top:2px solid #333; background:#ABABAB;}
.tb tbody tr:nth-child(2n) td{background:#E1E1E1;}
.btn_wrap { width:220px; margin:20px auto; }
.btn_wrap .in_btn { display:block; width:80px; margin:15px; background-color:#333; color:#fff; 
text-align:center; border:0; outline:0; float:left; line-height:38px; }
.btn_wrap .in_btn:hover { background-color:#E1E1E1; }
</style>
</head>
<body>
<%@ include file = "p_header.jsp" %><br><br><br><br>
   <h2 class="tit">공지사항 목록</h2>
   <table class="tb">
      <thead>
         <tr>
            <th class="item1">번호</th>
            <th class="item2">공지사항 번호</th>
            <th class="item3">제목</th>
            <th class="item4">작성자</th>
            <th class="item5">작성일시</th>
             <th class="item6">첨부파일</th>
         </tr>
      </thead>      
      <tbody>
   
<%
   for(int i=0; i<noticeList.size();i++){
      int a=i+1;
      NoticeDAO notice = noticeList.get(i);
   
%>
         <tr>
            <td class="item1"><%=a %></td>
            
            <td class="item2">
          						  	<%
									if(m_id!=null) {
									 %>
									<a href="DetailNoticeFormCtrl?num=<%=a %>&id=<%=notice.getN_id() %>"><%=notice.getN_id() %></a>
									<%
									} else {
									%>
									<span><%=notice.getN_id() %></span>
									<%
									}
									%>
            </td>
            <td class="item3"><%=notice.getN_title() %></td>
            <td class="item4"><%=notice.getN_name() %></td>
            <td class="item5"><%=notice.getN_date() %></td>
            <td><img src='./img/<%=notice.getN_file() %>' alt=""></td>
         </tr>
<%
   }
%>   
</tbody>
</table>

</body>
</html>