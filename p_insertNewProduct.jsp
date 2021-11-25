<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 신제품관리</title>
<link rel="stylesheet" href="./css/reset2.css">
<link rel="stylesheet" href="./css/a_common.css">
<style>
h1 {
	clear:both;
	text-align: center;
	padding: 20px;
	font-weight: bold;
	font-size: large;
}

.content {
	clear: both;
	width: 960px;
	margin: 10px auto;
	margin-bottom: 80px;
}

.lb {
	display: block;
	width: 200px;
	height: 42px;
	line-height: 42px;
	float: left;
	padding-top: 20px;
	padding-bottom: 20px;
	padding-left: 150px;
	color: #222;
	font-weight: bold;
	font-family: 'Gothic A1', sans-serif;
}

.item_val {
	display: block;
	height: 42px;
	line-height: 42px;
	float: left;
	padding-bottom: 20px;
}
.item_name2 { padding-top: 240px; }

.in_data {
	display: block;
	float: left;
	border: 1px solid #333;
	width: 400px;
	height: 40px;
	line-height: 40px;
	padding-left: 20px;
}

.in_btn {
	display: block;
	height: 40px;
	line-height: 40px;
	width: 130px;
	float: left;
	border-radius: 22px;
	background: #333;
	color: #fff;
	margin-left: 20px;
	cursor: pointer;
	border: none;
}

.in_btn:hover {
	background-color: #ABABAB;
}

.fr_col {
	width: 50%;
	float: left;
	padding-top: 20px;
	padding-bottom: 20px;
	display: block;
}

.fr_col .in_btn {
	clear: both;
}

.fr_col.first .in_btn {
	float: right;
	margin-right: 25px;
}

.fr_col.last .in_btn {
	float: left;
	margin-left: 25px;
}
</style>
</head>
<body>
	<!-- 헤더 -->
	<%@ include file="p_admin_header.jsp"%>
	<h1>신제품 등록</h1>
	<!-- 상품 등록 폼 -->
	<form action="AddNewProductCtrl" class="nform" method="post"
		name="nform">
		<table class="content">
			<tr>
				<th class="item_name"><label for="n_num" class="lb rep">제품코드</label>
				</th>
				<td class="item_val"><input type="text" name="n_num" id="n_num"
					class="in_data" placeholder="신제품코드입력" /> <input type="button"
					value="신제품코드 중복체크" class="in_btn" onclick="codeCheck()" /> <input
					type="hidden" value="" name="codeck" id="codeck" /></td>
			</tr>
			<tr>
				<th class="item_name"><label for="n_name" class="lb rep">제품명</label>
				</th>
				<td class="item_val"><input type="text" name="n_name"
					id="n_name" class="in_data" placeholder="제품명 입력" required /></td>
			</tr>
			<tr>
				<th class="item_name"><label for="n_kind" class="lb rep">종류</label>
				</th>
				<td class="item_val"><input type="text" name="n_kind"
					id="n_kind" class="in_data" placeholder="종류 입력" required /></td>
			</tr>
			<tr>
				<th class="item_name"><label for="n_price" class="lb rep">가격</label>
				</th>
				<td class="item_val"><input type="text" name="n_price"
					id="n_price" class="in_data" placeholder="가격 입력" required /></td>
			</tr>
			<tr>
				<th class="item_name"><label for="n_sub" class="lb rep">내용</label>
				</th>
				<td class="item_val"><input type="text" name="n_sub" id="n_sub"
					class="in_data" placeholder="내용 입력" style="height: 300px;"required /></td>
			</tr>
			<tr>
				<th class="item_name2"><label for="n_img" class="lb rep">이미지</label>
				</th>
				<td class="item_val2">
				<input type="text" name="n_img" id="n_img" class="in_data" /> 
					<input type="button" value="이미지 업로드" class="in_btn" onclick="imgCheck()" /> 
					<input type="hidden" value="" name="imgck" id="imgck" /></td>
			</tr>
		</table>
		<span class="fr_col first"> <input type="submit" value="신제품등록"
			class="in_btn" />
		</span> <span class="fr_col last"> <input type="reset" value="취소"
			class="in_btn" />
		</span>
	</form>
	<script>
		function codeCheck() {
			window.open("p_codeCheckForm2.jsp", "pcodecheck",
					"width=300, height=300");
		}
		function imgCheck() {
			window.open("p_imgCheckForm2.jsp", "pimgcheck",
					"width=300, height=300");
		}
		function pCheck() {
			if (f.codeck.value != "yes" || f.imgck.value != "yes") {
				alert("상품코드 및 이미지 체크가 되어 있지 않습니다.")
				return false;
			}
		}
	</script>
	</div>
</body>
</html>