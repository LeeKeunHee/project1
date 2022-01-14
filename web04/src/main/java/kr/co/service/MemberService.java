package kr.co.service;

import java.util.List;

import kr.co.vo.MemberVO;

public interface MemberService {
	//ȸ����� -> sql.selectList  memberMapper.memeberList() MemberVO
	public List<MemberVO> memberList(MemberVO vo) throws Exception;
		
	//ȸ������ -> sql.insert  memberMapper.register
	public void register(MemberVO vo) throws Exception;
		
	//�α��� -> sql.selectOne memberMapper.login() MemberVO
	public MemberVO login(MemberVO vo) throws Exception;  
		
	//ȸ���󼼺��� -> sql.selectONe memberMapper.memberDetail(MemberVO) MemberVO
	public void memberDetail(MemberVO vo) throws Exception;
			
	//ȸ�� ���� ���� -> sql.update memberMapper.memberUpdate()
	public void memberUpdate(MemberVO vo) throws Exception;
		
	//ȸ��Ż�� -> sql.delete memberMapper.memberDelete()
	public void memberDelete(MemberVO vo) throws Exception;
		
	//�н����� üũ -> sql.selectOne  memberMapper.passCk()  count
	public int passChk(MemberVO vo) throws Exception;
		
	//���̵� �ߺ�üũ -> sql.selectOne memberMapper.idChk() count
	public int idChk(MemberVO vo) throws Exception;
}
