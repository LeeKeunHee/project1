package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	@Inject
	SqlSession sql;
	//ȸ����� -> sql.selectList  memberMapper.memeberList() MemberVO
	@Override
	public List<MemberVO> memberList(MemberVO vo) throws Exception {
		return sql.selectList("memberMapper.memberList", vo);
	}
		
	//ȸ������ -> sql.insert  memberMapper.register
	@Override
	public void register(MemberVO vo) throws Exception {
		sql.insert("memberMapper.register", vo);
	}
		
	//�α��� -> sql.selectOne memberMapper.login() MemberVO
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return sql.selectOne("memberMapper.login", vo);
	}
		
	//ȸ���󼼺��� -> sql.selectOne memberMapper.memberDetail(MemberVO) MemberVO
	@Override
	public void memberDetail(MemberVO vo) throws Exception {
		sql.selectOne("memeberMapper.memberDetail", vo);
	};
			
	//ȸ�� ���� ���� -> sql.update memberMapper.memberUpdate()
	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		sql.update("memberMapper.memberUpdate", vo);
	}
		
	//ȸ��Ż�� -> sql.delete memberMapper.memberDelete()
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		sql.delete("memberMapper.memberDelete", vo);
	}
		
	//�н����� üũ -> sql.selectOne  memberMapper.passCk()  count
	@Override
	public int passChk(MemberVO vo) throws Exception {
		return sql.selectOne("memberMapper.passChk", vo);
	}
		
	//���̵� �ߺ�üũ -> sql.selectOne memberMapper.idChk() count
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = sql.selectOne("memberMapper.idChk", vo);
		return result;
	}
}
