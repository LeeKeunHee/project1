package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {
	@Inject
	SqlSession sql;
	
	//´ñ±Û Á¶È¸ -> sql.selectList   replyMapper.readReply
	@Override
	public List<ReplyVO> readReply(int bno) throws Exception {
		return sql.selectList("replyMapper.readReply", bno);
	}
		
	//´ñ±Û ÀÛ¼º ->  sql.insert   replyMapper.writeReply
	@Override
	public void writeReply(ReplyVO vo) throws Exception {
		sql.insert("replyMapper.writeReply", vo);
	}
		
	//´ñ±Û ¼öÁ¤ ->  sql.update  replyMapper.updateReply
	@Override
	public void updateReply(ReplyVO vo) throws Exception {
		sql.update("replyMapper.updateReply", vo);
	}
		
	//´ñ±Û »èÁ¦ ->  sql.delete  replyMapper.deleteReply
	@Override
	public void deleteReply(ReplyVO vo) throws Exception {
		sql.delete("replyMapper.deleteReply", vo);
	}
		
	//¼±ÅÃµÈ ´ñ±Û »ó¼¼ º¸±â ->  sql.selectOne   replyMapper.selectReply
	@Override
	public ReplyVO selectReply(int rno) throws Exception {
		return sql.selectOne("replyMapper.selectReply", rno);
	}
}
