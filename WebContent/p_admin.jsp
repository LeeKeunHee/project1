<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>관리자 메인 페이지</title>
<style>
html, body {
	color: #767676;
	font-size: 12px;
	line-height: 120%;
}

* {
	margin: 0;
	padding: 0;
}

div {
	display: block;
}

img {
	border: 0px; margin: 10px;
}

a {
	text-decoration: none;
}

a:link {
	color: #666666;
	text-decoration: none;
}


.link_list {
	width: 1000px;
	margin: 45px auto;
	overflow: hidden;
	position: relative;
}

.link_list .link {
	width: 330px;
	float: left;
	border-left: 2px solid #dfdfdf;
}

.link_list .link a {
	display: block;
}

.link_list .link_1_2 {
	padding-top: 20px;
	margin-top: 20px;
	position: relative;
}

.link_list .link_1_2:after {
	content: '';
	display: block;
	width: 260px;
	height: 2px;
	margin-left: -130px;
	background-color: #dfdfdf;
	position: absolute;
	top: 0;
	left: 50%;
}

.link_list .link_2_2 {
	padding-top: 20px;
	margin-top: 20px;
	position: relative;
}

.link_list .link_2_2:after {
	content: '';
	display: block;
	width: 260px;
	height: 2px;
	margin-left: -130px;
	background-color: #dfdfdf;
	position: absolute;
	top: 0;
	left: 50%;
}
.link_3 {  border-right: 2px solid #dfdfdf; }
.link_list .link_3_2 {
	padding-top: 20px;
	margin-top: 5px;
	position: relative;
	z-index: 999;
}

.link_list .link_3_2:after {
	content: '';
	display: block;
	width: 260px;
	height: 2px;
	margin-left: -130px;
	background-color: #dfdfdf;
	position: absolute;
	top: 0;
	left: 50%;	
}
.ani_img { display:block; transition-delay:0.8s; }
</style>
<link rel="stylesheet" href="./css/reset2.css">
<link rel="stylesheet" href="./css/a_common.css">
</head>
<body>
	<!-- 헤더 -->
	<%@ include file="p_admin_header.jsp"%>
	<div class="link_list">
		<div class="link link_1" style="opacity: 1;">
				<a href="MemberListCtrl"> 
				<img src="./img/admin_customer.jpg" alt="" class="ani_img" style="margin: 15px; transition:0.2s;"/>
				</a>
		</div>
		<div class="link link_2" style="opacity: 1;">
			<div class="link_2_1">
				<a href="ProductListCtrl"> 
				<img src="./img/admin_product.jpg" alt="" class="ani_img" style="margin: 15px; transition:0.8s;" />
				</a>
			</div>
			<div class="link_2_2">
				<a href="NoticeListCtrl">
				<img src="./img/admin_notice.jpg" alt="" style="margin: 15px;" />
				</a>
			</div>
		</div>
		<div class="link link_3" style="opacity: 1;">
			<div class="link_3_1">
				<a href="NewProductListCtrl">
				<img src="./img/admin_newproduct.jpg" alt=""  style="margin: 15px;"/>
				</a>
			</div>
			<div class="link_3_2">
				<a href="CsListCtrl">
				<img src="./img/admin_cus.jpg" alt="" style="margin: 15px;" />
				</a>
			</div>
		</div>
</body>
</html>