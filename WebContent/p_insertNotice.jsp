<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 상품관리</title>
<link rel="stylesheet" href="./css/reset2.css">
<link rel="stylesheet" href="./css/a_common.css">
<style>
h1 {
   clear: both;
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

.item_name2 { padding-top: 250px; }

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
	text-align:center;
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
   <h1>공지사항 등록</h1>
   <!-- 상품 등록 폼 -->
   <form action="AddNoticeCtrl" class="frm" method="post"
      name="nform">
      <table class="content">
         <tr>
            <th class="item_name"><label for="n_id" class="lb rep">공지사항 번호</label>
            </th>
            <td class="item_val"><input type="text" name="n_id" id="n_id"
               class="in_data" placeholder="번호 입력" required /></td>
         </tr>
         <tr>
            <th class="item_name"><label for="n_title" class="lb rep">제목</label>
            </th>
            <td class="item_val"><input type="text" name="n_title" id="n_title"
               class="in_data" placeholder="제목 입력" /></td>
         </tr>
         
         <tr>
            <th class="item_name"><label for="n_sub" class="lb rep">내용</label>
            </th>
            <td class="item_val">
          <textarea cols="58" rows="20" id="n_sub" name="n_sub" ></textarea></td>
         </tr>
         <tr>
            <th class="item_name2"><label for="n_name" class="lb rep">작성자</label>
            </th>
            <td class="item_val"><input type="text" name="n_name"
               id="n_name" class="in_data" placeholder="이름 입력" required /></td>
         </tr>
         <tr>
            <th class="item_name"><label for="n_file" class="lb rep">첨부파일</label>
            </th>
            <td class="item_val">
            <input type="text" name="n_file" id="n_file" class="in_data" /> 
               <input type="button" value="첨부파일 업로드" class="in_btn" onclick="imgCheck()" /> 
               <input type="hidden" value="" name="imgck" id="imgck" /></td>
         </tr>
      </table>
      <span class="fr_col first"> <input type="submit" value="공지사항등록"
         class="in_btn" />
      </span> <span class="fr_col last"> <input type="reset" value="취소"
         class="in_btn" />
      </span>
   </form>
   <script>
      function codeCheck() {
         window.open("codeCheckform.jsp", "pcodecheck",
               "width=300, height=300");
      }
      function imgCheck() {
         window.open("p_fileCheckForm.jsp", "pimgcheck",
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