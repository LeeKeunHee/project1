<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영업소 위치</title>
<link rel="stylesheet" href="./css/a_common.css">
<link rel="stylesheet" href="./css/reset2.css">
<style>
h2 { clear:both; text-align: center; font-size: xx-large; font-weight: bold; padding: 20px; }
.con_data {
	margin:0 auto;
	width: 80%;
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
		var myLatlng = new google.maps.LatLng(37.66984699568801, 126.76037302383712);
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
<h2>영업소 위치</h2>
		<div class="con_data">
			<div class="map_area">
				<!-- API 지도 삽입 -->
				<div id="map_canvas" style="width: 600px; height: 400px"></div>
			</div>
		</div>
</body>
<%@ include file="p_footer.jsp"%>
</html>