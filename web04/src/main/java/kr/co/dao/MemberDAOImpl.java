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
	//회원목록 -> sql.selectList  memberMapper.memeberList() MemberVO
	@Override
	public List<MemberVO> memberList(MemberVO vo) throws Exception {
		return sql.selectList("memberMapper.memberList", vo);
	}
		
	//회원가입 -> sql.insert  memberMapper.register
	@Override
	public void register(MemberVO vo) throws Exception {
		sql.insert("memberMapper.register", vo);
	}
		
	//로그인 -> sql.selectOne memberMapper.login() MemberVO
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return sql.selectOne("memberMapper.login", vo);
	}
		
	//회원상세보기 -> sql.selectOne memberMapper.memberDetail(MemberVO) MemberVO
	@Override
	public void memberDetail(MemberVO vo) throws Exception {
		sql.selectOne("memeberMapper.memberDetail", vo);
	};
			
	//회원 정보 수정 -> sql.update memberMapper.memberUpdate()
	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		sql.update("memberMapper.memberUpdate", vo);
	}
		
	//회원탈퇴 -> sql.delete memberMapper.memberDelete()
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		sql.delete("memberMapper.memberDelete", vo);
	}
		
	//패스워드 체크 -> sql.selectOne  memberMapper.passCk()  count
	@Override
	public int passChk(MemberVO vo) throws Exception {
		return sql.selectOne("memberMapper.passChk", vo);
	}
		
	//아이디 중복체크 -> sql.selectOne memberMapper.idChk() count
	@Override
	public int idChk(MemberVO vo) throws Exception {
		return sql.selectOne("memberMapper.idChk", vo);
	}
}
