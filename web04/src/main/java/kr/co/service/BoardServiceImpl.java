package kr.co.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.dao.BoardDAO;
import kr.co.vo.BoardVO;
import kr.co.vo.SearchCriteria;

public class BoardServiceImpl {
	@Inject
	private BoardDAO dao;
	
	//�Խñ� �ۼ� -> dao.write(boardVO)
	public void write(BoardVO boardVO, MultipartHttpServletRequest mpRequest) throws Exception {
		dao.write(boardVO);
	}
			
	//�Խù� ��� -> dao.list(sc) boardVO
	public List<BoardVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}
			
	//�Խñ� �� ���� -> dao.listCount(sc) count
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}
			
	//�Խñ� ���� -> dao.read(bno) boardVO
	public BoardVO read(int bno) throws Exception {
		return dao.read(bno);
	}
			
	//�Խñ� ����  -> dao.update(boardVO)
	public void update(BoardVO boardVO) throws Exception {
		dao.update(boardVO);
	}
			
	//�Խñ� ����  -> dao.delete(bno)
	public void delete(int bno) throws Exception {
		dao.delete(bno);
	}
			
	//÷������ ���ε� -> dao.insertFile(hashMap)
	public void insertFile(Map<String, Object> map) throws Exception {
		dao.insertFile(map);
	}
			
	//÷������ ��ȸ  -> dao.selectFileList(bno) hashMap
	public List<Map<String, Object>> selectFileList(int bno) throws Exception {
		return dao.selectFileList(bno);
	}
			
	//÷������ �ٿ�ε�  -> dao.selectFileInfo(hashMap) hashMap
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		return dao.selectFileInfo(map);
	}
			
	//÷������ ����  -> dao.updateFile(hashMap)
	public void updateFile(Map<String, Object> map) throws Exception {
		dao.updateFile(map);
	}
			
	//�Խñ��� ��ȸ�� : �Խñ� ���⸦ ���� ��� �ش� ���� hit�� ����  -> dao.boardHit(bno)
	public void boardHit(int bno) throws Exception {
		dao.boardHit(bno);
	}
}
