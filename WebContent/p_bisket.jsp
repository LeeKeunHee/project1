<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orion bisket</title>
<link rel="stylesheet" href="./css/a_common.css">
<link rel="stylesheet" href="./css/reset2.css">
<style>
div {
	display: block;
}

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
	border-left: 2px solid #f1f1f1;
	margin: 0 auto;
	text-align: center;
}

#subContents {
	clear: both;
	width: 670px;
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
	width: 700px;
	position: relative;
	overflow: hidden;
}

.typeList .typeListLine {
	border-bottom: 1px solid #ff7a83;
	overflow: hidden;
	padding: 32px 0 15px 0;
}

.typeList dl.typeListSet {
	width: 750px; margin: 20px auto;
}

.typeList dl.typeListSet dt {
	float:left; width: 145px; margin: 0 auto;
}
</style>
</head>
<body>
<%
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id="scott";
		String pw="tiger";
		String sql;
		
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection(url, id, pw);
		sql = "select * from product where p_kind='비스킷류'";
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
%>	
	<%@ include file="p_header.jsp"%>
	<div class="content">
		<div class="breadcrumb">
			<h2 class="tit">비스킷류</h2>
			<div class="bread">
				<p>
					<a href="p_allProduct.jsp">제품목록</a> <span> &gt;</span> <span>비스킷류</span>
				</p>
			</div>
		</div>
		<section class="con">
			<aside class="sidebar">
				<nav class="lnb">
					<ul>
						<li><a href="p_pie.jsp" >파이류</a></li>
						<li><a href="p_snack.jsp">스낵류</a></li>
						<li><a href="p_bisket.jsp" class="cur">비스킷류</a></li>
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
					<h3 style="color: red; font-size: 20px; font-weight:bold; text-align: left; margin-top: 15px;">비스킷류</h3>
					<div class="typeList">
						<div class="typeListLine">
							<dl class="typeListSet">
		<%		
		while(rs.next()) {
			String proNum = rs.getString("p_num");
			String proName = rs.getString("p_name");
			int proPrice = rs.getInt("p_price");
			String proImg = "./img/"+rs.getString("p_img");
%>
								<dt style="padding-left: 20px; padding-top: 20px;">
									<img src="<%=proImg %>" alt=""  >
									<h3 class="pro_tit" style="text-align: center; font-size: 14px;" ><%=proName %></h3>
								</dt>
	<%
		}	
		rs.close();
		stmt.close();
		conn.close();
%>	
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