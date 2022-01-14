package kr.co.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServlet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@Inject
	MemberService service;
	//회원 가입 페이지로 이동
	
	//회원 가입 처리
	
	//로그인 화면으로 이동
	
	//로그인 처리
	
	//로그아웃
	
	//회원정보 수정
	
	//회원탈퇴
	
	//패스워드 체크
	
	//아이디 중복 확인
}
