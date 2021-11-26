<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.orion.model.NewProductDAO" %>
<%
	ArrayList<NewProductDAO> newProductList = (ArrayList<NewProductDAO>) request.getAttribute("newProductList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신제품 목록</title>
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
</style>
</head>
<body>
<%@ include file = "p_admin_header.jsp" %><br><br><br><br>
	<h2 class="tit">신제품 목록</h2>
	<table class="tb">
		<thead>
			<tr>
				<th class="item1">제품코드</th>
				<th class="item2">제품명</th>
				<th class="item3">제품종류</th>
				<th class="item4">가격</th>
				<th class="item5">제품이미지</th>
			</tr>
		</thead>		
		<tbody>
<%
	for(int i=0; i<newProductList.size();i++){
		NewProductDAO newProduct = newProductList.get(i);
	
%>
		<tr>
			<td class="item1"><a href="EditNewProductFormCtrl?id=<%=newProduct.getN_num()%>"><%=newProduct.getN_num() %></a></td>	
			<td class="item2"><%=newProduct.getN_name() %></td>	
			<td class="item3"><%=newProduct.getN_kind() %></td>
			<td class="item4"><%=newProduct.getN_price() %></td>
			<td> <img src='./img/<%=newProduct.getN_img() %>' alt=""></td>
				
		</tr>
<%
	}
%>	
	
</body>
</html>