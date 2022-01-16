package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.ReplyDAO;
import kr.co.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {
	@Inject
	private ReplyDAO dao;
	
	//��� ��ȸ -> dao.selectList   replyMapper.readReply
	@Override
	public List<ReplyVO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}
		
	//��� �ۼ� ->  sql.insert   replyMapper.writeReply
	@Override
	public void writeReply(ReplyVO vo) throws Exception {
		dao.writeReply(vo);
	}
		
	//��� ���� ->  sql.update  replyMapper.updateReply
	@Override
	public void updateReply(ReplyVO vo) throws Exception {
		dao.updateReply(vo);
	}
		
	//��� ���� ->  sql.delete  replyMapper.deleteReply
	@Override
	public void deleteReply(ReplyVO vo) throws Exception { 
		dao.deleteReply(vo);
	}
		
	//���õ� ��� �� ���� ->  sql.selectOne   replyMapper.selectReply
	@Override
	public ReplyVO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}
}
