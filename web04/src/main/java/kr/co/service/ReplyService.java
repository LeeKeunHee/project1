package kr.co.service;

import java.util.List;

import kr.co.vo.ReplyVO;

public interface ReplyService {
	//´ñ±Û Á¶È¸ -> sql.selectList   replyMapper.readReply
	public List<ReplyVO> readReply(int bno) throws Exception;
		
	//´ñ±Û ÀÛ¼º ->  sql.insert   replyMapper.writeReply
	public void writeReply(ReplyVO vo) throws Exception;
		
	//´ñ±Û ¼öÁ¤ ->  sql.update  replyMapper.updateReply
	public void updateReply(ReplyVO vo) throws Exception;
		
	//´ñ±Û »èÁ¦ ->  sql.delete  replyMapper.deleteReply
	public void deleteReply(ReplyVO vo) throws Exception;
		
	//¼±ÅÃµÈ ´ñ±Û »ó¼¼ º¸±â ->  sql.selectOne   replyMapper.selectReply
	public ReplyVO selectReply(int rno) throws Exception;
}

