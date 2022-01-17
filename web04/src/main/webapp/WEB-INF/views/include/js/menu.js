//메인메뉴 javascript:is=document.images;for(var i=0; i<is.length; i++){is[i].src='';};void(0);
var mainmenu;

function setmainmenu() {
	var screen = document.body.clientWidth;
	
	var onedepth=document.getElementById('gnb').childNodes;
	var twodepti;
	var subdepti;
	var twodepth;
	var nowpage;

	this.init = function(num){
		var atag;
		// menucd - li depth match
		if(num[0] == "11")	num[0] = "001";
		if(num[0] == "01")	num[0] = "002";
		if(num[0] == "03")	num[0] = "003";
		if(num[0] == "05")	num[0] = "004";
		if(num[0] == "04")	num[0] = "005";
		if(num[0] == "08")	num[0] = "006";
		if(num[0] == "06")	num[0] = "007";
		if(num[0] == "09")	num[0] = "008";

		if(num){
			nowpage=num;
			setnowpage(nowpage);
		}
	}

	// 해당메뉴 이동하여 보이기처리
	var setnowpage = function(nowpage) {
		var innerimg;
		for(var i = 0; i < onedepth.length; i++) {	//01~08
			if(onedepth[i].nodeType == 1) {
				if(onedepth[i].id == "onedepth" + nowpage[0]) {
					mainmenu.sub(onedepth[i],true);
				}
			}
		}//For
	}	

	// 해당메뉴 숨김처리
	var unsetnowpage=function(){
		var innerimg,atags;
		for(var i=0; i<onedepth.length; i++){
			if(onedepth[i].nodeType==1){
				onedepth[i].classList.remove('on');
			}
		}
	}
	
	this.sub=function(onedepthobj,shownhide){		
		if(shownhide){
			unsetnowpage();
			mouseisover=true;
			
			if(onedepthobj.className.indexOf('on')==-1)	onedepthobj.classList.add('on');
			
			if(screen < 801){
				var twodepth0bj = "twodepth"+nowpage[0].substring(1,3);
				menu_ShowHide(twodepth0bj,'','show');
			}
			
		}else if(!shownhide){
			if(nowpage){
				if(onedepthobj.id.indexOf(nowpage[0])==-1){
					onedepthobj.classList.remove('on');
					mouseisover=false;
					setnowpagetimer();
				}else{
					setnowpage(nowpage);
				}
			}else unsetnowpage();
		}
	}

	var mouseisover=false;
	var setnowpagetime=0;
	var setnowpagetimer=function(){		
		if(mouseisover){
			setnowpagetime=0;
			
		}else{
			if(setnowpagetime<1000){
				setnowpagetime+=100;
				setTimeout(setnowpagetimer,200);
				
			}else{
				setnowpagetime=0;
				
				if(nowpage == "" || nowpage == null){
					unsetnowpage();
					mouseisover=false;
				}else if(nowpage[0] == "00" || nowpage[0] == "19"){
					unsetnowpage();
					mouseisover=false;					
				}else{
					setnowpage(nowpage);
				}
			}
		}//if End
	}//function End

}

function setLeftMenu(menuCD){
	if(menuCD.substring(2,4) != "05"){
//		setLeftTopMenu(menuCD);
	}
	
	var type = menuCD.substring(6,8);
	var objId = null;
	
	if(type == "00"){
		objId = "leftmenu" + menuCD.substring(2,8);
		var imgobj=document.getElementById(objId);
		imgobj.src=imgobj.src.replace('off.gif','on.gif');
		imgobj.parentNode.onmouseover=null;
		imgobj.parentNode.onmouseout=null;
		imgobj.parentNode.onfocus=null;
		imgobj.parentNode.onblur=null;
	}else if(type != "00"){
		
		objId = "leftmenu" + menuCD.substring(2,6)+"00";
		var imgobj=document.getElementById(objId);
		imgobj.src=imgobj.src.replace('off.gif','on.gif');
		imgobj.parentNode.onmouseover=null;
		imgobj.parentNode.onmouseout=null;
		imgobj.parentNode.onfocus=null;
		imgobj.parentNode.onblur=null;
		
		var objTwoId = "leftmenu" + menuCD.substring(2,8);
		var imgobjTwo=document.getElementById(objTwoId);
		imgobjTwo.src=imgobjTwo.src.replace('off.gif','on.gif');
		imgobjTwo.parentNode.onmouseover=null;
		imgobjTwo.parentNode.onmouseout=null;
		imgobjTwo.parentNode.onfocus=null;
		imgobjTwo.parentNode.onblur=null;
	} 
}


function getPageLink(url){
	var screen = document.body.clientWidth;
	
	// if(screen > 800){
	if(screen > 1200){
		location.href=url;
		menuShowHide(depth);
	}
}


function getMenuLink(depth, url){
	var screen = document.body.clientWidth;
	
	// if(screen < 801){
	if(screen < 1201){
		menuShowHide(depth);
	}else{
		location.href=url;
	}
}

function getMenuTarget(url,target){
	var screen = document.body.clientWidth;
	if(target=="_blank"){
		newWindow = window.open(url, "newWindow", "");
	}else{
		location.href=url;
	}		
}

function menuShowHide(depth){
	var onedepth0bj = "";
	var twodepth0bj = "";
	var curNum = "";
	
	for(var i=1;i<=8;i++){
		curObj = "0"+i;

		onedepth0bj = "onedepth0"+curObj;
		twodepth0bj = "twodepth"+curObj;
		
		if(depth == curObj){
			document.getElementById(onedepth0bj).classList.add('on');
			menu_ShowHide(twodepth0bj,'','show');			
		}else{
			document.getElementById(onedepth0bj).classList.remove('on');
			menu_ShowHide(twodepth0bj,'','hide');
		}
	}
}


// 메인메뉴 show/hide
function menu_FindObj(n, d) { //v4.01
	var p,i,x;  
 
	if(!d) 
		d=document; 
 
	if((p=n.indexOf("?"))>0&&parent.frames.length) {
		d=parent.frames[n.substring(p+1)].document; 
		n=n.substring(0,p);
	}
 
	if(!(x=d[n])&&d.all) 
		x=d.all[n]; 
	
	for (i=0;!x&&i<d.forms.length;i++) 
		x=d.forms[i][n];
  
	for(i=0;!x&&d.layers&&i<d.layers.length;i++) 
		x=menu_FindObj(n,d.layers[i].document);
 
	if(!x && d.getElementById) 
		x=d.getElementById(n); 
 
	return x;
}
	
function menu_ShowHide() { //v6.0
  var i,p,v,obj,args=menu_ShowHide.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=menu_FindObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'block':(v=='hide')?'none':v; }
    obj.display=v; }
}

// 웹접근성 - 포커스 유지
function menufocuson(obj){
	if (menu_FindObj(obj)!=null){
 		var ele = document.getElementById(obj);
 		ele.tabIndex = -1;
 		ele.focus();
	}
	
}

// 마우스 오버 메뉴 
function imgchange3(imgid){
	var imgobj=document.getElementById(imgid);	
	
	
}

//jsp변환
function setLeftMenu(code) {
	if(code != ''){		
		var strUpperMenu = code.substring(0,4);	
		var strMenu = code.substring(0,6);
		
		var PC_UPPER = '#leftmenu'+strUpperMenu+"00";
		var PC_SELECT = '#leftmenu'+strMenu;
		var M_SELECT = '#m_leftmenu'+strMenu;
		var LNBSELECT = "#lnb"+strUpperMenu;
		
		// 3depth chk
		if($(PC_UPPER).next("ul.pc").length > 0) {			
			$(PC_UPPER).addClass("on");
			$(PC_SELECT).addClass("on");			
			$(M_SELECT).addClass("on");
			$(LNBSELECT).addClass("m");
			
		} else {
			$(PC_UPPER).addClass("on");
			$("#lnb").children("ul").addClass("none_3depth");
			$("#subtop").children("h3").addClass("none_3depth");
		}
	}
}

function setThirdDepthChk() {
	
	var pageNavi = '#page_navi';
	var pageNaviList = pageNavi + ' > li';
	
	//3depth check
	if($(pageNaviList).length < 4) {
		$("#subtop").children("h3").addClass("none_3depth");
	}
}

function imgChangeOn(imgid){
	var imgobj=document.getElementById(imgid);
	if(imgobj.src.indexOf('on.gif') == -1){
		imgobj.src=imgobj.src.replace('off.gif','on.gif');
		imgobj.onmouseout=function(){ if(this.src.indexOf('on.gif')!= -1) this.src=this.src.replace('on.gif','off.gif');}
	}
}

function imgChangeOff(imgid){
	var imgobj=document.getElementById(imgid);
	
	if(imgobj.src.indexOf('on.gif')!= -1 ){
		imgobj.src=imgobj.src.replace('on.gif','off.gif');
	}
}


function listSH(){
	if(document.getElementById("vodClick").getAttribute("name") == "none"){
		document.getElementById("vodClick").setAttribute("name","active");
		document.getElementById("vodList").style.display = "block";
	}else{
		document.getElementById("vodClick").setAttribute("name","none");
		document.getElementById("vodList").style.display = "none";	
	}
	return false;
}

//mobile menu
$(function($) {
	$( ".m_menu a" ).click(function() {
		$( "#header" ).addClass('on');
		$("body").addClass('reset');
	});
	$( "#header .close_m" ).click(function() {
		$( "#header" ).removeClass('on');
		$( "body" ).removeClass('reset');
	});
	$( ".m_search_open a" ).click(function() {
		$( "#integrationsearch" ).addClass('on');
	});
	$( ".close_m_search a" ).click(function() {
		$( "#integrationsearch" ).removeClass('on');
	});
	$( ".depth_open" ).click(function() {
	  $(this).toggleClass( "on" );
	  
	  if($(this).hasClass("on")) $(this).attr( "title", "하위메뉴 닫기" );
	  else $(this).attr( "title", "하위메뉴 펼치기" );
	});
});

//mobile scroll menu
$(document).ready(function(){
	// hide #back-top first
	$("#back-top").hide();
	// fade in #back-top
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 100) {
				$('#back-top').addClass('on');
			} else {
				$('#back-top').removeClass('on');
			}
		});
		// scroll body to 0px on click
		$('#back-top #moveTop a').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 400);
			return false;
		});
	});

	
  $("#gnb > li .submenu_box").click(
    function() {
      $(this).parent().addClass("on");
    }, function() {
      $(this).parent().removeClass("on");
    }
  );

});

var $j = jQuery.noConflict();
$j(document).ready(function() {
	toggleClassWithFocus("#accessibility a","selected");
	noticeTab("#tab1 .title a","#noticendata1","#tabnotice .title a",".sublist");
	noticeTab("#tab2 .title a","#noticendata2","#tabnotice .title a",".sublist");
	noticeTab("#tab3 .title a","#noticendata3","#tabnotice .title a",".sublist");
	noticeTab("#tab4 .title a","#noticendata4","#tabnotice .title a",".sublist");
	noticeTab("#newsntv_tab1 .newsntv_title a","#newsntv1",".newsntv_title a",".newsntv_tab div");
	noticeTab("#newsntv_tab2 .newsntv_title a","#newsntv2",".newsntv_title a",".newsntv_tab div");
	noticeTab("#m_tab1 .title a","#m_tab_01","#m_tab_info .title a","#m_tab_info ul li div");
	noticeTab("#m_tab2 .title a","#m_tab_02","#m_tab_info .title a","#m_tab_info ul li div");
});

function toggleClassWithFocus(element, className){
	$j(element).focus(function(){
		$j(this).addClass(className);
	});
	$j(element).blur(function(){
		$j(this).removeClass(className);
	});
}
function noticeTab(clickObject, displayObject, groupA, groupB) {
	$j(clickObject).click(function() {
		$j(groupA).removeClass('on');
		$j(this).addClass('on');
		$j(groupB).hide();
		$j(displayObject).show();
		return false;
	});
	$j(clickObject).focus(function() {
		$j(groupA).removeClass('on');
		$j(this).addClass('on');
		$j(groupB).hide();
		$j(displayObject).show();
		return false;
	});
}