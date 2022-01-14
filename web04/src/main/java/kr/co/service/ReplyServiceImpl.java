package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import kr.co.dao.ReplyDAO;
import kr.co.vo.ReplyVO;

public class ReplyServiceImpl {
	@Inject
	private ReplyDAO dao;
	
	//��� ��ȸ -> dao.selectList   replyMapper.readReply
	public List<ReplyVO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}
		
	//��� �ۼ� ->  sql.insert   replyMapper.writeReply
	public void writeReply(ReplyVO vo) throws Exception {
		dao.writeReply(vo);
	}
		
	//��� ���� ->  sql.update  replyMapper.updateReply
	public void updateReply(ReplyVO vo) throws Exception {
		dao.updateReply(vo);
	}
		
	//��� ���� ->  sql.delete  replyMapper.deleteReply
	public void deleteReply(ReplyVO vo) throws Exception { 
		dao.deleteReply(vo);
	}
		
	//���õ� ��� �� ���� ->  sql.selectOne   replyMapper.selectReply
	public ReplyVO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}
}
