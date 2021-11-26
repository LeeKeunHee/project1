<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.orion.model.ProductDAO" %>
<%
ProductDAO product = (ProductDAO) request.getAttribute("product");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 제품 수정</title>
<link rel="stylesheet" href="./css/reset2.css">
<link rel="stylesheet" href="./css/a_common.css">
<style>
.tit { padding-top:50px; line-height:50px; text-align:center; }
table { display:table; border-collapse:collapse; }
tr { display:table-row; }
th, td { display:table-cell; }
.tb { width:850px; margin:20px auto; }
.tb th, .tb td { line-height:42px; border-bottom:1px solid #333; }
.tb th { background:#E1E1E1; }
.tb tr:first-child th, .tb tr:first-child td { border-top:1px solid #333; } 
.in_data { display:block; line-height:32px; height:32px; margin-left:10px; padding-left:5px; width:600px; }
.in_data2{ display:block;  height:32px; margin-left:10px; padding-left:5px; width:600px; margin-bottom: 20px; }
.in_btn { display:block; width:120px; margin:15px; background-color:#333; color:#fff; 
text-align:center; border:0; outline:0; float:left; line-height:38px; }
.in_btn:hover { background-color:#ABABAB; }
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
<h2 class="tit">상세 제품 정보 수정</h2>
<form action="EditProductCtrl" method="post" id="pform" name="pform">
   <table class="tb">
      <tbody>
         <tr>
            <th class="col_hd">
               <label for="p_num">제품코드</label>
            </th>
            <td class="col_data">
               <input type="text" id="p_num" name="p_num" class="in_data" value="<%=product.getP_num() %>" readonly required />
            </td>
         </tr>
         <tr>
            <th class="col_hd">
               <label for="p_name" >이름</label>
            </th>
            <td class="col_data">
               <input type="text" id="p_name" name="p_name" class="in_data" value="<%=product.getP_name() %>" />
            </td>
         </tr>
         <tr>
            <th class="col_hd">
               <label for="p_kind">종류</label>
            </th>
            <td class="col_data">
               <select name="p_kind" id="p_kind" class="in_data">
					<option value="파이류">파이류</option>
					<option value="스낵류">스낵류</option>
					<option value="비스킷류">비스킷류</option>
					<option value="껌류">껌류</option>
					<option value="사탕류">사탕류</option>
					<option value="초콜릿류">초콜릿류</option>
					</select>
            </td>
         </tr>
         <tr>
            <th class="col_hd">
               <label for="p_price">가격</label>
            </th>
            <td class="col_data">
               <input type="text" id="p_price" name="p_price" class="in_data" value="<%=product.getP_price() %>"/>
            </td>
         </tr>
         <tr>
            <th class="col_hd">
               <label for="p_ub">내용</label>
            </th>
            <td class="col_data">
               <input type="text" id="p_sub" name="p_sub" class="in_data" value="<%=product.getP_sub() %>"/>
            </td>
         </tr>
         <tr>
            <th class="col_hd">
               <label for="p_img">이미지</label>
            </th>
            <td class="col_data">
               <input type="text" id="p_img" name="p_img" class="in_data2" value="<%=product.getP_img() %>"/></td>
               <td class="col_data">
               		<input type="button" value="이미지 업로드" class="in_btn" onclick="imgCheck()" /> 
					<input type="hidden" value="" name="imgck" id="imgck" />
            </td>
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
			window.open("p_imgCheckForm.jsp", "pimgcheck",
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