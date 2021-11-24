<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.orion.model.NewProductDAO" %>
<%
NewProductDAO newproduct = (NewProductDAO) request.getAttribute("newproduct");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 제품 수정</title>
<style>
.tit { padding-top:50px; line-height:50px; text-align:center; }
table { display:table; border-collapse:collapse; }
tr { display:table-row; }
th, td { display:table-cell; }
.tb { width:600px; margin:20px auto; }
.tb th, .tb td { line-height:42px; border-bottom:1px solid #333; }
.tb th { background:#E1E1E1; }
.tb tr:first-child th, .tb tr:first-child td { border-top:1px solid #333; } 
.in_data { display:block; line-height:32px; height:32px; margin-left:10px; padding-left:5px; width:240px; }
.in_data2 { display:block; line-height:32px; height:200px; margin-left:10px; padding-left:5px; width:240px; }
.btn_wrap { width:220px; margin:20px auto; }
.btn_wrap .in_btn { display:block; width:80px; margin:15px; background-color:#333; color:#fff; 
text-align:center; border:0; outline:0; float:left; line-height:38px; }
.btn_wrap .in_btn:hover { background-color:#E1E1E1; }
.in_comment { padding-left:18px; }
input[readonly] { background:#f1f1f1; }
</style>
</head>
<body>
<h2 class="tit">상세 제품 정보 수정</h2>
<form action="EditNewProductCtrl" method="post" id="frm" name="frm">
   <table class="tb">
      <tbody>
         <tr>
            <th class="col_hd">
               <label for="n_num">제품코드</label>
            </th>
            <td class="col_data">
               <input type="text" id="n_num" name="n_num" class="in_data" value="<%=newproduct.getN_num() %>" readonly required />
            </td>
         </tr>
         <tr>
            <th class="col_hd">
               <label for="n_name" >이름</label>
            </th>
            <td class="col_data">
               <input type="text" id="n_name" name="n_name" class="in_data" value="<%=newproduct.getN_name() %>" />
            </td>
         </tr>
         <tr>
            <th class="col_hd">
               <label for="n_kind">종류</label>
            </th>
            <td class="col_data">
               <input type="text" id="n_kind" name="n_kind" class="in_data" value="<%=newproduct.getN_kind() %>" />
            </td>
         </tr>
         <tr>
            <th class="col_hd">
               <label for="n_price">가격</label>
            </th>
            <td class="col_data">
               <input type="text" id="n_price" name="n_price" class="in_data" value="<%=newproduct.getN_price() %>"/>
            </td>
         </tr>
         <tr>
            <th class="col_hd">
               <label for="n_ub">내용</label>
            </th>
            <td class="col_data">
               <input type="text" id="n_sub" name="n_sub" class="in_data2" value="<%=newproduct.getN_sub() %>"/>
            </td>
         </tr>
         <tr>
            <th class="col_hd">
               <label for="n_img">이미지</label>
            </th>
            <td class="col_data">
               <input type="text" id="n_img" name="n_img" class="in_data" value="<%=newproduct.getN_img() %>"/>
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

</body>
</html>