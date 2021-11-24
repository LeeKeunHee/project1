<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orion snack</title>
<link rel="stylesheet" href="./css/a_common.css">
<link rel="stylesheet" href="./css/reset2.css">
<style>
.wrap { display:block; width:100%; height: 2000px; }


dt {
	display: block;
}

dl {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}
p{ font-size: 13px; }
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

.content .contentsBody {
	float: left;
	width: calc(100% - 20%);
	height: 1200px;
	border-left: 2px solid #f1f1f1;
	margin: 0 auto;
}

#subContents {
	clear: both;
	width: 670px;
	height:100%;
	margin: 0 auto;
}

.subTitleArea {
	width: 670px;
	height: 400px;
	clear: both;
	margin: 0 auto;
	position: relative;
	border-bottom: 2px solid #e21321;
}

.subTitleArea {
	height: 45px;
	margin-bottom: 0;
	position: relative;
}

.typeList {
	width: 100%;
	position: relative;
	overflow: hidden;
}

.typeList .typeListLine {
	border-bottom: 1px solid #ff7a83;
	overflow: hidden;
	padding: 32px 0 15px 0;
}

.typeList dl.typeListSet {
	width: 154px;
	float: left;
	margin-right: 12px;
}

.typeList dl.typeListSet dt {
	height: 130px;
	text-align: center;
}
</style>
</head>
<body>
	<%@ include file="p_header.jsp"%>
	<div class="content">
		<div class="breadcrumb">
			<h2 class="tit">스낵류</h2>
			<div class="bread">
				<p>
					<a href="">제품목록</a> <span> &gt;</span> <span>스낵류</span>
				</p>
			</div>
		</div>
		<section class="con">
			<aside class="sidebar">
				<nav class="lnb">
					<ul>
						<li><a href="p_pie.jsp" >파이류</a></li>
						<li><a href="p_snack.jsp" class="cur">스낵류</a></li>
						<li><a href="p_bisket.jsp">비스킷류</a></li>
						<li><a href="p_gum.jsp">껌류</a></li>
						<li><a href="p_candy.jsp">캔디류</a></li>
						<li><a href="p_chocolate.jsp">초콜릿류</a></li>
					</ul>
				</nav>
			</aside>
		</section>
		<section class="contentsBody">
			<div class="subContents">
				<div class="subTitleArea">
					<h3
						style="color: red; font-size: 20px; font-weight:bold; text-align: left; margin-top: 15px;">스낵류</h3>
					<div class="typeList">
						<div class="typeListLine">
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_001.png" alt="" width=125px; height="127" />
									<p>스윙칩 갈릭디핑소스맛</p>
								</dt>
							</dl>
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_002.png" alt="" width=125px; height="127" />
									<p>꿀버터 오!구마</p>
								</dt>
							</dl>
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_003.png" alt="" width=125px; height="127" />
									<p>고추칩</p>
								</dt>
							</dl>
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_004.jpg" alt="" width=125px; height="127" />
									<p>구운쌀칩</p>
								</dt>
							</dl>
						</div>
						<div class="typeListLine">
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_005.jpg" alt="" width=125px; height="127" />
									<p>콰삭칩</p>
								</dt>
							</dl>
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_006.jpg" alt="" width=125px; height="127" />
									<p>꼬북칩</p>
								</dt>
							</dl>
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_007.png" alt="" width=125px; height="127" />
									<p>도도한 미니미 나쵸</p>
								</dt>
							</dl>
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_008.png" alt="" width=125px; height="127" />
									<p>치킨팝</p>
								</dt>
							</dl>
						</div>
						<div class="typeListLine">
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_009.jpg" alt="" width=125px; height="127" />
									<p>도도한나쵸</p>
								</dt>
							</dl>
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_010.png" alt="" width=125px; height="127" />
									<p>썬</p>
								</dt>
							</dl>
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_011.jpg" alt="" width=125px; height="127" />
									<p>포카칩</p>
								</dt>
							</dl>
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_012.jpg" alt="" width=125px; height="127" />
									<p>무뚝뚝감자칩</p>
								</dt>
							</dl>
						</div>
						<div class="typeListLine">
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_013.jpg" alt="" width=125px; height="127" />
									<p>스윙칩</p>
								</dt>
							</dl>
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_014.jpg" alt="" width=125px; height="127" />
									<p>오!감자</p>
								</dt>
							</dl>
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_015.jpg" alt="" width=125px; height="127" />
									<p>눈을 감자</p>
								</dt>
							</dl>
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_016.jpg" alt="" width=125px; height="127" />
									<p>대단한나쵸</p>
								</dt>
							</dl>
						</div>
						<div class="typeListLine">
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_017.jpg" alt="" width=125px; height="127" />
									<p>오징어땅콩</p>
								</dt>
							</dl>
							<dl class="typeListSet">
								<dt>
									<img src="./img/snack/sub_018.jpg" alt="" width=125px; height="127" />
									<p>땅콩강정</p>
								</dt>
							</dl>
							
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
<%@ include file="p_footer.jsp"%>
</html>