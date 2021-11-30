<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%@ page import="java.util.*" %>
<%@ page import="com.orion.model.CsDAO" %>
<%
	CsDAO cs = (CsDAO) request.getAttribute("cs");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객문의</title>
<link rel="stylesheet" href="./css/reset2.css">
<link rel="stylesheet" href="./css/a_common.css">
<style>
.tit { padding-top:50px; line-height:50px; text-align:center; }
table { display:table; border-collapse:collapse; }
tr { display:table-row; }
th, td { display:table-cell; }
.tb { width:900px; margin:20px auto; }
.tb th, .tb td { line-height:42px; border-bottom:1px solid #333; }
.tb th { background:#E1E1E1; }
.tb tr:first-child th, .tb tr:first-child td { border-top:1px solid #333; } 
.in_data { display:block; line-height:32px; height:32px; margin-left:10px; padding-left:5px; width:650px; }
.in_btn { background-color: #333; color: #fff; border-style: none; height:32px;}
.in_btn:hover {  background-color:#ABABAB; }
.in_data_area { line-height:1.6; padding:5px; width:400px; margin-left:10px; }
.btn_wrap { width:220px; margin:20px auto; }
.btn_wrap .in_btn { display:block; width:80px; margin:15px; background-color:#333; color:#fff; 
text-align:center; border:0; outline:0; float:left; line-height:38px; }
.btn_wrap .in_btn:hover { background-color:#ABABAB; }
.in_comment { padding-left:18px; }
input[readonly] { background:#f1f1f1; }
</style>
</head>
<body>
<%@ include file="p_header.jsp"%>
<h2 class="tit">고객문의</h2>
<form action="DetailCsCtrl" method="post" id="cform" name="cform">
	<table class="tb">
		<tbody>
			<tr>
				<th class="col_hd">
					<label for="cs_num" >번호</label>
				</th>
				<td class="col_data">
					<input type="text" id="cs_num" name="cs_num" class="in_data" value="<%=cs.getNum() %>" readonly required />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="cs_id" >고객문의 글 번호</label>
				</th>
				<td class="col_data">
					<input type="text" id="cs_id" name="cs_id" class="in_data" value="<%=cs.getCs_id() %>" readonly />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="cs_name" >작성자</label>
				</th>
				<td class="col_data">
					<input type="text" id="cs_name" name="cs_name" class="in_data" value="<%=cs.getCs_name() %>" readonly />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="cs_title">공지사항 제목</label>
				</th>
				<td class="col_data">
					<input type="text" id="cs_title" name="cs_title" class="in_data" value="<%=cs.getCs_title() %>" readonly />
				</td>
			</tr>
			 <tr>
            <th class="col_hd">
               <label for="cs_file">첨부파일</label>
            </th>
            <td class="col_data">
              <img src='./img/<%=cs.getCs_file() %>' alt="" readonly/>	
         	</tr>
			<tr>
				<th class="col_hd">
					<label for="cs_sub">공지사항 내용</label>
				</th>
				<td class="col_data">
					<textarea cols="95" rows="30" id="cs_sub" name="cs_sub" readonly/><%=cs.getCs_sub() %>
					</textarea>
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="cs_date">작성일</label>
				</th>
				<td class="col_data">
					<input type="text" id="cs_date" name="cs_date" class="in_data" value="<%=cs.getCs_date() %>" readonly/>
				</td>
			</tr>
		</tbody>
	</table>
    <hr />
</form>

</body>
</html>