package kr.co.service;

import java.util.List;

import kr.co.vo.MemberVO;

public interface MemberService {
	//회원목록 -> sql.selectList  memberMapper.memeberList() MemberVO
	public List<MemberVO> memberList(MemberVO vo) throws Exception;
		
	//회원가입 -> sql.insert  memberMapper.register
	public void register(MemberVO vo) throws Exception;
		
	//로그인 -> sql.selectOne memberMapper.login() MemberVO
	public MemberVO login(MemberVO vo) throws Exception;  
		
	//회원상세보기 -> sql.selectONe memberMapper.memberDetail(MemberVO) MemberVO
	public void memberDetail(MemberVO vo) throws Exception;
			
	//회원 정보 수정 -> sql.update memberMapper.memberUpdate()
	public void memberUpdate(MemberVO vo) throws Exception;
		
	//회원탈퇴 -> sql.delete memberMapper.memberDelete()
	public void memberDelete(MemberVO vo) throws Exception;
		
	//패스워드 체크 -> sql.selectOne  memberMapper.passCk()  count
	public int passChk(MemberVO vo) throws Exception;
		
	//아이디 중복체크 -> sql.selectOne memberMapper.idChk() count
	public int idChk(MemberVO vo) throws Exception;
}