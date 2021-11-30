<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>only orion</title>
<link rel="stylesheet" href="./css/a_common.css">
<link rel="stylesheet" href="./css/reset2.css">
<style>
.content {
	clear: both;
	width: 100%;
}

.content .breadcrumb {
	clear: both;
	width: 1000px;
	height: 80px;
	background-color: #fff;
	margin: 0 auto;
}

.tit {
	float: left;
	font-size: 24px;
	line-height: 80px;
}

.bread {
	float: right;
	line-height: 80px;
}

.bread a, .bread span, .bread select, .bread .loc_area {
	display: block;
	line-height: 80px;
	float: left;
	margin-left: 10px;
	font-size: 14px;
}

.bread a {
	color: gold;
}

.bread span:last-child {
	color: #333;
}

.con {
	clear: both;
	width: 100%;
	border-top: 2px solid red;
}

.sidebar {
	width: 200px;
	min-height: 100vh;
	float: left;
	position: relative;
}

.lnb {
	clear: both;
}

.lnb li {
	line-height: 50px;
	background-color: #333;
}

.lnb li a {
	padding-left: 30px;
	color: #fff;
	font-size: 14px;
}

.lnb li a.cur {
	color: gold;
	font-size: 16px;
	font-weight: bold;
}

.con_data {
	float: right;
	width: calc(100% - 202px);
	border-left: 2px solid #f1f1f1;
	padding-top:20px;
	text-align: center;
}

.vs {
	clear: both;
	width: 660px;
	margin: 0 auto;
}

.vs .vs_tit:first-child {
	width: 121px;
}

.vs .vs_tit2 {
	width: 96px;
}

.vs .vs_tit3 {
	width: 63px;
	margin-bottom: 10px;
}

.vs .vs_sub {
	margin-bottom: 10px;
}

.vs .vs_sub_tit {
	border-bottom: 2px solid red;
	margin-bottom: 10px;
}

.con_data .vs img {
	display: block;
	width: 100%;
	height: auto;
}
</style>
</head>
<body>
	<%@ include file="p_header.jsp"%>
	<div class="content">
		<div class="breadcrumb">
			<h2 class="tit">회사소개</h2>
			<div class="bread">
				<p>
					<a href="">회사소개</a> <span> &gt;</span> <span>회사소개</span>
				</p>
			</div>
		</div>
		<section class="con">
			<aside class="sidebar">
				<nav class="lnb">
					<ul>
						<li><a href="p_company.jsp" class="cur">회사소개</a></li>
						<li><a href="p_companycom.jsp">오시는 길</a></li>
					</ul>
				</nav>
			</aside>
		</section>
		<section class="con_data">
			<div class="vs">
				<figure class="vs_tit">
					<img src="./img/only_orion.gif" alt="" class="vs_img">
				</figure>
				<figure class="vs_tit2">
					<img src="./img/tab_way_on.png" alt="" class="vs_img">
				</figure>
				<figure class="vs_sub_tit">
					<img src="./img/sub_way.gif" alt="" class="vs_img">
				</figure>
				<figure class="vs_tit3">
					<img src="./img/tit_smart.gif" alt="" class="vs_img">
				</figure>
				<figure class="vs_sub">
					<img src="./img/txt_smart02.gif" alt="" class="vs_img">
				</figure>
				<figure class="vs_sub">
					<img src="./img/txt_smart03.gif" alt="" class="vs_img">
				</figure>
				<figure class="vs_sub">
					<img src="./img/txt_smart04.gif" alt="" class="vs_img">
				</figure>
				<figure class="vs_tit3">
					<img src="./img/tit_strong.gif" alt="" class="vs_img">
				</figure>
				<figure class="vs_sub">
					<img src="./img/txt_strong01.gif" alt="" class="vs_img">
				</figure>
				<figure class="vs_sub">
					<img src="./img/txt_strong02.gif" alt="" class="vs_img">
				</figure>
				<figure class="vs_sub">
					<img src="./img/txt_strong03.gif" alt="" class="vs_img">
				</figure>
				<figure class="vs_sub">
					<img src="./img/txt_strong04.gif" alt="" class="vs_img">
				</figure>
				<figure class="vs_sub">
					<img src="./img/txt_strong_list01.gif" alt="" class="vs_img">
				</figure>
				<figure class="vs_sub">
					<img src="./img/txt_strong_list02.gif" alt="" class="vs_img">
				</figure>
				<figure class="vs_sub">
					<img src="./img/txt_strong_list03.gif" alt="" class="vs_img">
				</figure>
				<figure class="vs_sub">
					<img src="./img/txt_strong_list04.gif" alt="" class="vs_img">
				</figure>
			</div>
		</section>
	</div>
</body>
<%@ include file="p_footer.jsp"%>
</html>