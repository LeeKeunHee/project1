<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오시는 길</title>
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
}

.vs {
	clear: both;
	width: 900px;
	margin: 0 auto;
}

.vs img {
	display: block;
	width: 100%;
	height: auto;
}

.map_area {
	width: 600px;
	height: 400px;
	clear: both;
	margin: 20px auto;
	position: relative;
}
</style>
<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script>
	//좌표 값을 바꿔서 입력 37.65212218608173, 126.77762199256867
	function initialize() {
		var myLatlng = new google.maps.LatLng(37.65212218608173,
				126.77762199256867);
		var mapOptions = {
			zoom : 17,
			center : myLatlng
		}

		var map = new google.maps.Map(document.getElementById('map_canvas'),
				mapOptions);
		var marker = new google.maps.Marker({
			position : myLatlng,
			map : map,
			title : '마두역' //레이블을 바꿔서 입력
		});
	}
	google.maps.event.addDomListener(window, 'load', initialize);
</script>

</head>

<body>
<%@ include file="p_header.jsp"%>
	<div class="content">
		<div class="breadcrumb">
			<h2 class="tit">오시는 길</h2>
			<div class="bread">
			<p><a href="">회사소개</a> <span> &gt;</span> <span>오시는 길</span></p>
			</div>
		</div>
	<section class="con">
		<aside class="sidebar">
			<nav class="lnb">
				<ul>
					<li><a href="p_company.jsp">회사소개</a></li>
					<li><a href="" class="cur">오시는 길</a></li>
				</ul>
			</nav>
		</aside>
		<div class="con_data">
			<div class="map_area">
				<!-- API 지도 삽입 -->
				<div id="map_canvas" style="width: 600px; height: 400px"></div>
			</div>
		</div>
	</section>
</div>
</body>
<%@ include file="p_footer.jsp"%>
</html>