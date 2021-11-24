<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.orion.model.CsDAO" %>
<%
	ArrayList<CsDAO> CsList = (ArrayList<CsDAO>) request.getAttribute("CsList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객문의 목록</title>
<link rel="stylesheet" href="./css/reset2.css">
<link rel="stylesheet" href="./css/a_common.css">
<style>
.tit{text-align:center;}
table { display:table; border-collapse:collapse;}
tr { display:table-row;}
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
<%@ include file = "p_admin_header.jsp" %><br><br><br><br>
	<h2 class="tit">고객문의 목록</h2>
	<table class="tb">
		<thead>
			<tr>
				<th class="item1">번호</th>
				<th class="item2">제목</th>
				<th class="item3">작성자</th>
				<th class="item4">작성일시</th>
			</tr>
		</thead>		
		<tbody>
	
<%
	for(int i=0; i<CsList.size();i++){
		int a=i+1;
		CsDAO notice = CsList.get(i);
	
%>
			<tr>
				<td class="item1"><%=a %></td>	
				<td class="item2"><a href=""><%=notice.getCs_title() %></a></td>
				<td class="item3"><%=notice.getCs_name() %></td>
				<td class="item4"><%=notice.getCs_date() %></td>
			</tr>
<%
	}
%>	
</body>
</html>