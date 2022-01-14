package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import kr.co.dao.ReplyDAO;
import kr.co.vo.ReplyVO;

public class ReplyServiceImpl {
	@Inject
	private ReplyDAO dao;
	
	//´ñ±Û Á¶È¸ -> dao.selectList   replyMapper.readReply
	public List<ReplyVO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}
		
	//´ñ±Û ÀÛ¼º ->  sql.insert   replyMapper.writeReply
	public void writeReply(ReplyVO vo) throws Exception {
		dao.writeReply(vo);
	}
		
	//´ñ±Û ¼öÁ¤ ->  sql.update  replyMapper.updateReply
	public void updateReply(ReplyVO vo) throws Exception {
		dao.updateReply(vo);
	}
		
	//´ñ±Û »èÁ¦ ->  sql.delete  replyMapper.deleteReply
	public void deleteReply(ReplyVO vo) throws Exception { 
		dao.deleteReply(vo);
	}
		
	//¼±ÅÃµÈ ´ñ±Û »ó¼¼ º¸±â ->  sql.selectOne   replyMapper.selectReply
	public ReplyVO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}
}
