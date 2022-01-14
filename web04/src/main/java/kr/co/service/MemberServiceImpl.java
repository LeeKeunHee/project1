package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import kr.co.dao.MemberDAO;
import kr.co.vo.MemberVO;

public class MemberServiceImpl {
	@Inject
	private MemberDAO dao;
	
	//ȸ����� -> sql.selectList  memberMapper.memeberList() MemberVO
		public List<MemberVO> memberList(MemberVO vo) throws Exception {
			return dao.memberList(vo);
		}
		
		//ȸ������ -> sql.insert  memberMapper.register
		public void register(MemberVO vo) throws Exception {
			dao.register(vo);
		}
		
		//�α��� -> sql.selectOne memberMapper.login() MemberVO
		public MemberVO login(MemberVO vo) throws Exception {
			return dao.login(vo);
		}
		
		//ȸ���󼼺��� -> sql.selectONe memberMapper.memberDetail(MemberVO) MemberVO
		public void memberDetail(MemberVO vo) throws Exception {
			dao.memberDetail(vo);
		}
			
		//ȸ�� ���� ���� -> sql.update memberMapper.memberUpdate()
		public void memberUpdate(MemberVO vo) throws Exception {
			dao.memberUpdate(vo);
		}
		
		//ȸ��Ż�� -> sql.delete memberMapper.memberDelete()
		public void memberDelete(MemberVO vo) throws Exception {
			dao.memberDelete(vo);
		}
		
		//�н����� üũ -> sql.selectOne  memberMapper.passCk()  count
		public int passChk(MemberVO vo) throws Exception {
			return dao.passChk(vo);
		}
		
		//���̵� �ߺ�üũ -> sql.selectOne memberMapper.idChk() count
		public int idChk(MemberVO vo) throws Exception {
			return dao.idChk(vo);
		}
}
