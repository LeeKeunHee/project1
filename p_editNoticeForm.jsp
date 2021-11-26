<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%@ page import="java.util.*" %>
<%@ page import="com.orion.model.NoticeDAO" %>
<%
	NoticeDAO notice = (NoticeDAO) request.getAttribute("notice");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 공지사항 수정</title>
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
<%@ include file="p_admin_header.jsp"%>
<h2 class="tit">공지사항 수정</h2>
<form action="EditNoticeCtrl" method="post" id="nform" name="nform">
	<table class="tb">
		<tbody>
			<tr>
				<th class="col_hd">
					<label for="n_num" >번호</label>
				</th>
				<td class="col_data">
					<input type="text" id="n_num" name="n_num" class="in_data" value="<%=notice.getNum() %>" readonly required />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="n_name" >공지사항 번호</label>
				</th>
				<td class="col_data">
					<input type="text" id="n_id" name="n_id" class="in_data" value="<%=notice.getN_id() %>" readonly />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="n_name" >작성자</label>
				</th>
				<td class="col_data">
					<input type="text" id="n_name" name="n_name" class="in_data" value="<%=notice.getN_name() %>" readonly />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="n_title">공지사항 제목</label>
				</th>
				<td class="col_data">
					<input type="text" id="n_title" name="n_title" class="in_data" value="<%=notice.getN_title() %>"  />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="ubirth">공지사항 내용</label>
				</th>
				<td class="col_data">
					<input type="text" id="n_sub" name="n_sub" class="in_data" value="<%=notice.getN_sub() %>" style="height: 300px"/>
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="uregdate">작성일</label>
				</th>
				<td class="col_data">
					<input type="text" id="n_date" name="n_date" class="in_data" value="<%=notice.getN_date() %>" readonly/>
				</td>
			</tr>
			 <tr>
            <th class="col_hd">
               <label for="n_file">첨부파일</label>
            </th>
            <td class="col_data">
              <input type="text" name="n_file" id="n_file" class="in_data" value="<%=notice.getN_file() %>" /> 
					<td class="col_data">
					<input type="button" value="첨부파일 업로드" class="in_btn" onclick="imgCheck()"  /> 
					<input type="hidden" value="" name="imgck" id="imgck" /></td>
         </tr>
		</tbody>
	</table>
    <hr />
	<div class="btn_wrap">	
		<button type="submit" class="in_btn" onclick="">수정</button>
		<button type="reset" class="in_btn" onclick="">취소</button>
	</div>	
</form>
 <script>
		
		function imgCheck() {
			window.open("p_fileCheckForm.jsp", "pimgcheck",
					"width=300, height=300");
		}
		function pCheck() {
			if (f.imgck.value != "yes") {
				alert("이미지 체크가 되어 있지 않습니다.")
				return false;
			}
		}
	</script>
</body>
</html>