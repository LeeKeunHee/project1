<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />  
<body>
<!-- header -->
<div id="header">
    <!-- util -->
    <div class="util">
        <div class="utilin">
            <p class="ev pc"><img src="${path}/include/image/eg_logo.png" alt="전자정부" > 이 누리집은 대한민국 공식 전자정부 누리집입니다.</p><!-- PC 만 -->
            
            <!--회원가입 -->
            <ul class="utilWrap">
       		<c:if test="${member != null}">
       		<li><a href="member/logout">로그아웃</a></li>
       		<li><a href="member/memberDeleteView">회원탈퇴</a></li>
       		</c:if>
				<c:if test="${member == null}">
                <li><a href="member/loginForm">로그인</a></li>
                <li><a href="member/register">회원가입</a></li>   
        		</c:if>
                
                <li class="pc"><a href="">마이페이지</a></li>
                
                <li><a href="javascript:void(0);" id="vodClick" onclick="listSH();"><span id="vodimg">LANGUAGE</span></a> 
                    <div id="vodList" class="nation" style="display: none;">
                        <ul>
                            <li><a href="" target="_blank" title="영문누리집 새 창 열림" lang="en">English</a></li>
                            <li><a href="" target="_blank" title="중문누리집 새 창 열림" lang="zh">中文</a></li>
                            <li><a href="" onclick="listSH();" target="_blank" title="일문누리집 새 창 열림" lang="ja">日本語</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="" target="_blank" title="어린이 누리집 바로가기 새 창 열림">어린이</a></li>
                <li class="pc"><a href="" title="">누리집 안내</a></li>					

            </ul>
            <!--//회원가입 -->
        </div>
    </div>
    <!--// util -->
    
    
    
    <!--  header_inside -->
    <div class="header_inside ">
        <p class="ev m"><img src="${path}/include/image/eg_logo.png" alt="전자정부"> 이 누리집은 대한민국 공식 전자정부 누리집입니다.</p>
    
        <!-- incTop1 -->
        <div id="incTop1">
            
            <!-- 상단로고영역 -->
            <h1 class="logo" id="logo">
                <a href="${path}/"><span class="hidden">문화체육관광부 메인 페이지 가기</span></a>
            </h1>
            
            <p class="mois pc">
                <a href="" target="_blank" title="한국판 뉴딜 새 창 열림"><span class="hidden">한국판 뉴딜 - 대한민국 대전환</span></a>
            </p>
            <!-- 상단로고영역// -->
            
            <!-- 메인메뉴+서브메뉴 -->
            <div id="incTop2">	
                <div id="mainmenu">
                    <ul id="gnb">
                        <li id="onedepth001" >
    <a href="" target="_self" onfocus="mainmenu.sub(this.parentNode,true);menuShowHide('01');" onmouseover="this.onfocus()" onblur="mainmenu.sub(this.parentNode,false);" onmouseout="mainmenu.sub(this.parentNode,false);menu_ShowHide('twodepth01','','hide');"  >정보공개</a>
    <div id="twodepth01" style="display:none" class="m_sub submenu_box bg01" onmouseover="menuShowHide('01');" onmouseout="menu_ShowHide('twodepth01','','hide');" >
        <ul id="subdepth01">
            <li class="twodept" ><a href="" >정보공개안내</a>
                <ul>
                    <li><a href="" title="새 창 열림">정보공개제도 소개</a></li>
                    <li><a href="" >비공개 세부기준</a></li>
                    <li><a href="" >정보목록</a></li>
                    <li><a href="" title="새 창 열림">정보공개청구</a></li>
                    <li><a href="" >업무추진비</a></li>
                    <li><a href="" >협동조합경영공시</a></li>
                </ul>
            </li>
            <li><a href="" >사전정보공개</a></li>
            <li class="twodept" ><a href="" >재정정보</a>
                <ul>
                    <li><a href="" >계약현황</a></li>
                    <li><a href="" >세입·세출 운용상황</a></li>
                    <li><a href="" >보조사업현황</a></li>
                </ul>
            </li>
            <li><a href="" >공공데이터개방</a>
                <ul>
                    <li><a href="" >공공데이터</a></li>
                    <li><a href="" >의견수렴</a></li>
                </ul>
            </li>
            <li><a href="" >감사·청렴자료</a>
                <ul>
                    <li><a href="" >감사결과</a></li>
                    <li><a href="" >반부패 청렴자료</a></li>
                </ul>
            </li>
            <li><a href="" >정책실명제</a>
                <ul>
                    <li><a href="" >정책실명제 안내</a></li>
                    <li><a href="" >중점관리 대상사업</a></li>
                    <li><a href="" >국민신청실명제</a></li>
                </ul>
            </li>
        </ul>
    </div>
</li>
<li id="onedepth002" >
    <a href="javascript:getMenuLink('02','/kor/s_minwon/eMinwon/introCivil/windowCivil/introCivilConts.jsp');" target="_self" onfocus="mainmenu.sub(this.parentNode,true);menuShowHide('02');" onmouseover="this.onfocus()" onblur="mainmenu.sub(this.parentNode,false);" onmouseout="mainmenu.sub(this.parentNode,false);menu_ShowHide('twodepth02','','hide');"  >민원마당</a>
    <div id="twodepth02" style="display:none" class="submenu_box bg02" onmouseover="menuShowHide('02');" onmouseout="menu_ShowHide('twodepth02','','hide');" >
        <ul id="subdepth02">
            <li class="twodept" ><a href="" >전자민원</a>
                <ul>
                    <li><a href="" >민원안내</a></li>
                    <li><a href="" >문서민원</a></li>
                </ul>
            </li>
            <li><a href="" >신고센터</a>
                <ul>
                    <li><a href="" >갑질피해신고</a></li>
                    <li><a href="" >스포츠비리신고</a></li>
                    <li><a href="" >부패·공익 신고</a></li>
                    <li><a href="" >공직자종교차별신고</a></li>
                    <li><a href="" >성희롱·성폭력 신고·상담</a></li>
                    <li><a href="" title="새 창 열림">안전신고<em>새 창 열림</em></a></li>
                </ul>
            </li>
            <li><a href="" >적극행정</a>
                <ul>
                    <li><a href="" >제도소개</a></li>
                    <li><a href="" >국민참여</a></li>
                    <li><a href="" >우수사례</a></li>
                </ul>
            </li>
            <li><a href="" >규제개혁</a>
                <ul>
                    <li><a href="" >규제개혁과제</a></li>
                    <li><a href="" >규제개혁 건의</a></li>
                    <li><a href="" >규제입증요청</a></li>
                </ul>
            </li>
            <li><a href="" >국민신문고</a>
                <ul>
                    <li><a href="board/writeView" >묻고답하기</a></li>
                    <li><a href="" >국민제안</a></li>
                    <li><a href="" >예산낭비신고</a></li>
                    <li><a href="" >정책참여</a></li>
                </ul>
            </li>
            <li><a href="" >소통공간</a>
                <ul>
                    <li><a href="" title="새 창 열림">110수어/채팅상담<em>새 창 열림</em></a></li>
                    <li><a href="" >행정서비스헌장</a></li>
                    <li><a href="" >누리집개선의견</a></li>
                </ul>
            </li>
        </ul>
    </div>
</li>
<li id="onedepth003" >
    <a href="javascript:getMenuLink('03','/kor/s_notice/notice/noticeList.jsp');" target="_self" onfocus="mainmenu.sub(this.parentNode,true);menuShowHide('03');" onmouseover="this.onfocus()" onblur="mainmenu.sub(this.parentNode,false);" onmouseout="mainmenu.sub(this.parentNode,false);menu_ShowHide('twodepth03','','hide');"  >알림ㆍ소식</a>
    <div id="twodepth03" style="display:none" class="submenu_box bg03" onmouseover="menuShowHide('03');" onmouseout="menu_ShowHide('twodepth03','','hide');" >
        <ul id="subdepth03">
            <li class="twodept" ><a href="" >알림</a></li>
            <li><a href="" >인사</a></li>
            <li><a href="" >채용정보</a></li>
            <li><a href="" >입찰정보</a></li>
            <li><a href="" >보도자료</a></li>
            <li><a href="" >언론보도설명</a></li>
            <li><a href="" >사진뉴스</a></li>
            <li><a href="" >동영상뉴스</a></li>
            <li class="twodept" ><a href="" >소식지</a></li>
        </ul>
    </div>
</li>
<li id="onedepth004" >
    <a href="javascript:getMenuLink('04','/kor/s_culture/festival/festivalList.jsp');" target="_self" onfocus="mainmenu.sub(this.parentNode,true);menuShowHide('04');" onmouseover="this.onfocus()" onblur="mainmenu.sub(this.parentNode,false);" onmouseout="mainmenu.sub(this.parentNode,false);menu_ShowHide('twodepth04','','hide');"  >문화광장</a>
    <div id="twodepth04" style="display:none" class="submenu_box bg04" onmouseover="menuShowHide('04');" onmouseout="menu_ShowHide('twodepth04','','hide');" >
        <ul id="subdepth04">
            <li class="twodept" ><a href="" >지역축제</a></li>
            <li><a href="" >추천여행지</a></li>
            <li><a href="" >문화예술공연</a></li>
            <li><a href="" >추천도서</a></li>
            <li><a href="" >체육행사</a></li>
        </ul>
    </div>
</li>
<li id="onedepth005" >
    <a href="javascript:getMenuLink('05','/kor/s_data/budget/budgetList.jsp');" target="_self" onfocus="mainmenu.sub(this.parentNode,true);menuShowHide('05');" onmouseover="this.onfocus()" onblur="mainmenu.sub(this.parentNode,false);" onmouseout="mainmenu.sub(this.parentNode,false);menu_ShowHide('twodepth05','','hide');"  >자료공간</a>
    <div id="twodepth05" style="display:none" class="submenu_box bg05" onmouseover="menuShowHide('05');" onmouseout="menu_ShowHide('twodepth05','','hide');" >
        <ul id="subdepth05">
            <li class="twodept" ><a href="" >예산자료</a></li>
            <li class="twodept" ><a href="" >법령자료</a>
                <ul>
                    <li><a href="" >현행법령</a></li>
                    <li><a href="" >훈령·예규·고시</a></li>
                    <li><a href="" >입법·행정예고</a></li>
                    <li><a href="" >표준계약서</a></li>
                </ul>
            </li>
            <li><a href="" >현황자료</a>
                <ul>
                    <li><a href="" >비영리법인현황</a></li>
                    <li><a href="" title="새 창 열림">주요통계지표></a></li>
                    <li><a href="" title="새 창 열림">출판사ㆍ인쇄사 등록현황</a></li>
                    <li><a href="" title="새 창 열림">정기간행물 등록현황</a></li>
                </ul>
            </li>
            <li><a href="javascript:getMenuTarget('http://www.prism.go.kr/','_blank');" title="새 창 열림">연구자료</a></li>
        </ul>
    </div>
</li>
<li id="onedepth006" >
    <a href="javascript:getMenuLink('06','/kor/s_policy/plan2022/plan2022.jsp');" target="_self" onfocus="mainmenu.sub(this.parentNode,true);menuShowHide('06');" onmouseover="this.onfocus()" onblur="mainmenu.sub(this.parentNode,false);" onmouseout="mainmenu.sub(this.parentNode,false);menu_ShowHide('twodepth06','','hide');"  >주요정책</a>
    <div id="twodepth06" style="display:none" class="submenu_box bg06" onmouseover="menuShowHide('06');" onmouseout="menu_ShowHide('twodepth06','','hide');" >
        <ul id="subdepth06">
            <li class="twodept" ><a href="" >업무계획</a></li>
            <li class="twodept" ><a href="" >분야별 정책</a>
                <ul>
                    <li><a href="" >전체</a></li>
                    <li><a href="" >기획조정·지원</a></li>
                    <li><a href="" >문화예술</a></li>
                    <li><a href="" >종무</a></li>
                    <li><a href="" >콘텐츠·저작권·미디어</a></li>
                    <li><a href="" >관광</a></li>
                    <li><a href="" >국민소통</a></li>
                    <li><a href=";" >체육</a></li>
                    <li><a href="" >기타</a></li>
                </ul>
            </li>
            <li><a href="" >정책홍보</a>
                <ul>
                    <li><a href="" >홍보물</a></li>
                    <li><a href="" >발간물(ebook)</a></li>
                    <li><a href="" >코로나19 지원 대책</a></li>
                </ul>
            </li>
            <li><a href="" >정책소통</a>
                <ul>
                    <li><a href="" >대학생기자단</a></li>
                    <li><a href="" >나도한마디</a></li>
                </ul>
            </li>
        </ul>
    </div>
</li>
<li id="onedepth007" >
    <a href="javascript:getMenuLink('07','/kor/s_about/intro/greeting.jsp');" target="_self" onfocus="mainmenu.sub(this.parentNode,true);menuShowHide('07');" onmouseover="this.onfocus()" onblur="mainmenu.sub(this.parentNode,false);" onmouseout="mainmenu.sub(this.parentNode,false);menu_ShowHide('twodepth07','','hide');"  >문체부소개</a>
    <div id="twodepth07" style="display:none" class="submenu_box bg07" onmouseover="menuShowHide('07');" onmouseout="menu_ShowHide('twodepth07','','hide');" >
        <ul id="subdepth07">
            <li class="twodept" ><a href="" >기관소개</a>
                <ul>
                    <li><a href="" >인사말</a></li>
                    <li><a href="" >주요업무</a></li>
                    <li><a href="" >연혁</a></li>
                    <li><a href="" >상징(MI)</a></li>
                </ul>
            </li>
            <li><a href="" title="새 창 열림">열린장관실</a>
                <ul>
                    <li><a href=";" title="새 창 열림">장관과의 대화방<em>새 창 열림</em></a></li>
                    <li><a href="" title="새 창 열림">활동방<em>새 창 열림</em></a></li>
                    <li><a href="" title="새 창 열림">장·차관소개<em>새 창 열림</em></a></li>
                </ul>
            </li>
            <li><a href="" >조직안내</a>
                <ul>
                    <li><a href="" >조직도</a></li>
                    <li><a href="" >직원검색</a></li>
                    <li><a href="" >소속기관 안내</a></li>
                </ul>
            </li>
            <li><a href="" >청사안내</a>
                <ul>
                    <li><a href="" >찾아오시는 길</a></li>
                    <li><a href="" >층별안내</a></li>
                </ul>
            </li>
        </ul>
    </div>
</li>
<li id="onedepth008" class="m" >
    <a href="" target="_self" onfocus="mainmenu.sub(this.parentNode,true);menuShowHide('08');" onmouseover="this.onfocus()" onblur="mainmenu.sub(this.parentNode,false);" onmouseout="mainmenu.sub(this.parentNode,false);menu_ShowHide('twodepth08','','hide');"  >이용안내</a>
    <div id="twodepth08" style="display:none" class="submenu_box bg08" onmouseover="menuShowHide('08');" onmouseout="menu_ShowHide('twodepth08','','hide');" >
        <ul id="subdepth08">
            <li class="twodept" ><a href="" >누리집 안내</a></li>
            <li><a href="" >누리집 이용안내</a></li>
            <li><a href="" title="새 창 열림">누리집개선의견<em>새 창 열림</em></a></li>
            <li><a href="" >개인정보처리방침</a></li>
            <li><a href="" >저작권정책</a></li>
            <li><a href="" title="새 창 열림">행정서비스헌장</a>	</li>
            <li class="twodept" ><a href="" >공공누리</a>
                <ul>
                    <li><a href="" >공공누리제도안내</a></li>
                    <li><a href="" >공공누리유형안내</a></li>
                </ul>
            </li>
            <li><a href="" >정보구독서비스</a></li>
            <li class="twodept" ><a href="" >전자우편서비스</a></li>
            <li class="twodept" ><a href="" >읽기 전용 프로그램 안내</a></li>
            <li class="twodept" ><a href="" >배너모음</a></li>
            <li class="twodept" ><a href="" >웹 접근성 품질마크</a></li>
            <li class="twodept" ><a href="" >회원탈퇴</a></li>
        </ul>
    </div>
</li>

                    </ul>
                </div>
            </div>
            <!-- 메인메뉴+서브메뉴 // -->

            <!-- 상단검색영역 -->
            <div class="searchpart">
                <!-- 통합검색창 -->
                <div class="integrationsearch">
                    <div class="m m_search_open"><a href="javascript:void(0);">모바일 통합검색</a></div>
                    <form name="topTotalSearchFrm" method="get" onsubmit="return fn_checkTotalSearch()" action="/kor/search/search.jsp">
                        <fieldset>
                            <legend style="display:none">검색</legend>
                            <input type="hidden" name="cmd" value="brief-total-kor" />
                            <input type="hidden" name="pageVol" value="5" />
                            <input type="hidden" name="pageNo" value="1" />
                            <input type="hidden" name="dbNoArr" value="1" />
                            <input type="hidden" name="dbNoArr" value="2" />
                            <input type="hidden" name="dbNoArr" value="3" />
                            <input type="hidden" name="dbNoArr" value="4" />
                            <input type="hidden" name="dbNoArr" value="5" />
                            <input type="hidden" name="dbNoArr" value="6" />
                            <input type="hidden" name="pKeyword" />
                                <ul id="integrationsearch">
                                    <li class="label"><label for="intesrh">검색어 입력</label></li>
                                    <li class="input">
                                        <input type="text" id="intesrh" name="keyword" style="IME-MODE:active" title="검색어 입력창" placeholder="검색어를 입력하세요" onfocus="mainmenu.sub(this.parentNode,false);menu_ShowHide('twodepth07','','hide');" />
                                    </li>
                                    <li class="btn">
                                        <button type="button" class="btn_search" onclick="document.topTotalSearchFrm.onsubmit();">
                                            <span class="hidden">검색하기</span> 
                                        </button>
                                    </li>
                                    <li class="m close_m_search"><a href="javascript:void(0);">닫기</a></li>
                                </ul>
                        </fieldset>	
                    </form>
                </div>
                <!-- 통합검색//  -->
            </div>
            <!-- 상단검색영역// -->
            
        </div>
        <!-- incTop1// -->
    </div>
    <!--  header_inside // -->
</div>
<!-- //header -->

<script type="text/javascript">

    mainmenu = new setmainmenu();
    mainmenu.init([]);

</script>

</body>
</html>