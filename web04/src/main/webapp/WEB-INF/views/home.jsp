<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}" /> 
<html>
<head>
	<title>문화체육관광부 누리집에 오신 것을 환영합니다. | 문화체육관광부</title>
<%@ include file="include/head.jsp" %>
<style>
 .vs { clear:both; width: 100%; position:relative; max-height:540px; overflow:hidden; }
    .vs_pic_box { width:400%; overflow-x:hidden; }
    .vs_pic_box:after { content:""; display:block; cleaR:both; }
    .vs_pic_box li { float:left; width: 25%; }
    .vs_pic_box li img { display:block; width: 100%; }
    .btn_box1 li button.vs_btn { display:block; outline: 0; border:0; background-color: transparent; 
    width: 50px; height: 75px; background-repeat: no-repeat; background-image: url("./data/visualArr.png"); 
    position:absolute; top:42%; margin-top:-37px; z-index:20; cursor:pointer; }
    .btn_box1 li button.vs_btn.prev { left:30px; background-position: left center;}
    .btn_box1 li button.vs_btn.next { right:30px; background-position: right center;}
</style>
</head>
<body>
<%@ include file="include/header.jsp" %>
<section class="content">
        <figure class="vs">
            <ul class="vs_pic_box">
                <li><img src="${path}/include/image/vs1.jpg" alt="배너슬라이더1"></li>
                <li><img src="${path}/include/image/vs2.jpg" alt="배너슬라이더2"></li>
                <li><img src="${path}/include/image/vs3.jpg" alt="배너슬라이더3"></li>
                <li><img src="${path}/include/image/vs4.jpg" alt="배너슬라이더4"></li>
            </ul>
            <ul class="btn_box1">
                <li><button class="vs_btn prev"></button></li>
                <li><button class="vs_btn next"></button></li>
            </ul>
            <ul class="btn_box2">
                <li><button class="btn1"></button></li>
                <li><button class="btn2"></button></li>
                <li><button class="btn3"></button></li>
                <li><button class="btn4"></button></li>
                <li><button class="play_btn"></button></li>
            </ul>
        </figure>
        <script>
        $(function(){
            var vstar = $(".vs_pic_box"); 
            var vswd = parseInt(vstar.width() * 0.25 * -1);
            var vs_ani1 = function(){
                vstar.not(":animated").animate({"margin-left":vswd+"px"}, 600, function(){
                    vstar.find("li").eq(0).appendTo($(vstar));
                    vstar.css("margin-left", "0px");
                });
            }
            var vs_ani2 = function(){
                vstar.find("li").eq(3).prependTo($(vstar));
                vstar.css("margin-left", "-100%");
                vstar.not(":animated").animate({"margin-left":"0px"}, 600);
            }
            var intvs = setInterval(function() { vs_ani1(); }, 4000);
            $(".vs .btn_box1 li .prev").click(function(){
                clearInterval(intvs);
                vs_ani2();
                intvs = setInterval(function() { vs_ani1(); }, 4000);
            });
            $(".vs .btn_box1 li .next").click(function(){
                clearInterval(intvs);
                vs_ani1();
                intvs = setInterval(function() { vs_ani1(); }, 4000);
            });
        });    
        </script>
        <div class="ico_box">
            <ul class="ico_wrap">
                <li class="ico1">
                    <a href="">
                        <h3 class="ico_tit">아이콘제목1</h3>
                        <p class="more_txt">MORE &gt;</p>
                    </a>
                </li>
                <li class="ico2">
                    <a href="">
                        <h3 class="ico_tit">아이콘제목2</h3>
                        <p class="more_txt">MORE &gt;</p>
                    </a>
                </li>
                <li class="ico3">
                    <a href="">
                        <h3 class="ico_tit">아이콘제목3</h3>
                        <p class="more_txt">MORE &gt;</p>
                    </a>
                </li>
                <li class="ico4">
                    <a href="">
                        <h3 class="ico_tit">아이콘제목4</h3>
                        <p class="more_txt">MORE &gt;</p>
                    </a>
                </li>
                <li class="ico5">
                    <a href="">
                        <h3 class="ico_tit">아이콘제목5</h3>
                        <p class="more_txt">MORE &gt;</p>
                    </a>
                </li>
                <li class="ico6">
                    <a href="">
                        <h3 class="ico_tit">아이콘제목6</h3>
                        <p class="more_txt">MORE &gt;</p>
                    </a>
                </li>
            </ul>
        </div>
        <div class="over_sl_box">
            <ul>
                <li><a href=""><img src="./image/ban1.jpg" alt="배너이미지1"></a></li>
                <li><a href=""><img src="./image/ban2.jpg" alt="배너이미지2"></a></li>
                <li><a href=""><img src="./image/ban3.jpg" alt="배너이미지3"></a></li>
                <li><a href=""><img src="./data/ban4.png" alt="배너이미지4"></a></li>
                <li><a href=""><img src="./data/ban5.jpg" alt="배너이미지5"></a></li>
                <li><a href=""><img src="./data/ban6.jpg" alt="배너이미지6"></a></li>
                <li><a href=""><img src="./data/ban7.jpg" alt="배너이미지7"></a></li>
                <li><a href=""><img src="./data/ban8.jpg" alt="배너이미지8"></a></li>
                <li><a href=""><img src="./data/ban9.jpg" alt="배너이미지9"></a></li>
                <li><a href=""><img src="./data/ban10.jpg" alt="배너이미지10"></a></li>
            </ul>
            <div class="over_btn_box"><button class="item1 act"></button><button class="item2"></button><button class="item3"></button><button class="item4"></button><button class="item5"></button><button class="item6"></button><button class="item7"></button><button class="item8"></button><button class="item9"></button><button class="item10"></button></div>
        </div>
        <script>
        $(function(){
            var tar = $(".over_sl_box ul"); 
            var wd = parseInt(tar.width() * 0.13 * -1);
            var ani1 = function(){
                tar.not(":animated").animate({"margin-left":wd+"px"}, 400, function(){
                    $(".over_btn_box button").removeClass("act");
                    $(".over_btn_box button").eq(0).appendTo($(".over_btn_box"));
                    $(".over_btn_box button").eq(0).addClass("act");
                    tar.find("li").eq(0).appendTo($(tar));
                    tar.css("margin-left", "0px");
                });
            }
            var intv = setInterval(function() { ani1(); }, 3000);
            $(".over_btn_box button").click(function(){
                var btn = $(this).index();
                clearInterval(intv);
                $(".over_btn_box button").removeClass("act");
                $(".over_btn_box button").eq(btn).addClass("act");
                for(var i=0;i<btn-1;i++){
                    tar.find("li").eq(0).appendTo($(tar));
                    $(".over_btn_box button").eq(0).appendTo($(".over_btn_box"));
                }
                ani1();
                intv = setInterval(function() { ani1(); }, 3000);
            });
        });    
        </script>
        <div class="contact_box">
            <div class="contact_wrap" style="">
                <div class="noti_box">
                    <input type="radio" name="ra1" class="ra_item" id="ra1" checked>
                    <input type="radio" name="ra1" class="ra_item" id="ra2">
                    <ul class="noti_lb_box">
                        <li class="item1"><label for="ra1">공지사항</label></li>
                        <li class="item2"><label for="ra2">채용정보</label></li>
                        <li class="more_item"><a href="">더보기</a></li>
                    </ul>
                    <ul class="noti_wrap">
                        <li class="item1 noti">
                            <div class="noti_con">
                                <table class="board_tb">
                                    <tbody>
                                        <tr>
                                            <td class="board_tit"><a href="">공지사항 제목1</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                        <tr>
                                            <td class="board_tit"><a href="">공지사항 제목2</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                        <tr>
                                            <td class="board_tit"><a href="">공지사항 제목3</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                        <tr>
                                            <td class="board_tit"><a href="">공지사항 제목4</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </li>
                        <li class="item2 noti">
                            <div class="noti_con">
                                <table class="board_tb">
                                    <tbody>
                                        <tr>
                                            <td class="board_tit"><a href="">채용정보 제목1</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                        <tr>
                                            <td class="board_tit"><a href="">채용정보 제목2</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                        <tr>
                                            <td class="board_tit"><a href="">채용정보 제목3</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                        <tr>
                                            <td class="board_tit"><a href="">채용정보 제목4</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </li>
                    </ul>   
                </div>
                <div class="news_box">
                    <input type="radio" name="ra2" class="ra_item" id="ra3" checked>
                    <input type="radio" name="ra2" class="ra_item" id="ra4">
                    <ul class="news_lb_box">
                        <li class="item1"><label for="ra3">보도자료</label></li>
                        <li class="item2"><label for="ra4">입찰구매</label></li>
                        <li class="more_item"><a href="">더보기</a></li>
                    </ul>
                    <ul class="news_wrap">
                        <li class="item1 news">
                            <div class="news_con">
                                <table class="board_tb">
                                    <tbody>
                                        <tr>
                                            <td class="board_tit"><img src="" alt="" class="ico_img"><a href="" class="db_com">보도자료 제목1</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                        <tr>
                                            <td class="board_tit"><img src="" alt="" class="ico_img"><a href="" class="db_com">보도자료 제목2</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                        <tr>
                                            <td class="board_tit"><img src="" alt="" class="ico_img"><a href="" class="db_com">보도자료 제목3</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                        <tr>
                                            <td class="board_tit"><img src="" alt="" class="ico_img"><a href="" class="db_com">보도자료 제목4</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </li>
                        <li class="item2 news">
                            <div class="news_con">
                                <table class="board_tb">
                                    <tbody>
                                        <tr>
                                            <td class="board_tit"><a href="">입찰구매 제목1</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                        <tr>
                                            <td class="board_tit"><a href="">입찰구매 제목2</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                        <tr>
                                            <td class="board_tit"><a href="">입찰구매 제목3</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                        <tr>
                                            <td class="board_tit"><a href="">입찰구매 제목4</a></td>
                                            <td class="board_date"><span>2022-01-17</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </li>
                    </ul>   
                </div>
                <div class="tel_box">
                    <ul class="tel_wrap">
                        <li class="map1"><a href="">찾아오시는 길</a></li>
                        <li class="map2"><a href="">담당자 연락처</a></li>
                        <li class="map3"><a href="">사업자등록증, 계좌안내</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
<%@ include file="include/footer.jsp" %>
</body>
</html>