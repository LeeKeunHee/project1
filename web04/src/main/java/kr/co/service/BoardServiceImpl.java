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
	
	//게시글 작성 -> dao.write(boardVO)
	public void write(BoardVO boardVO, MultipartHttpServletRequest mpRequest) throws Exception {
		dao.write(boardVO);
	}
			
	//게시물 목록 -> dao.list(sc) boardVO
	public List<BoardVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}
			
	//게시글 총 갯수 -> dao.listCount(sc) count
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}
			
	//게시글 보기 -> dao.read(bno) boardVO
	public BoardVO read(int bno) throws Exception {
		return dao.read(bno);
	}
			
	//게시글 수정  -> dao.update(boardVO)
	public void update(BoardVO boardVO) throws Exception {
		dao.update(boardVO);
	}
			
	//게시글 삭제  -> dao.delete(bno)
	public void delete(int bno) throws Exception {
		dao.delete(bno);
	}
			
	//첨부파일 업로드 -> dao.insertFile(hashMap)
	public void insertFile(Map<String, Object> map) throws Exception {
		dao.insertFile(map);
	}
			
	//첨부파일 조회  -> dao.selectFileList(bno) hashMap
	public List<Map<String, Object>> selectFileList(int bno) throws Exception {
		return dao.selectFileList(bno);
	}
			
	//첨부파일 다운로드  -> dao.selectFileInfo(hashMap) hashMap
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		return dao.selectFileInfo(map);
	}
			
	//첨부파일 수정  -> dao.updateFile(hashMap)
	public void updateFile(Map<String, Object> map) throws Exception {
		dao.updateFile(map);
	}
			
	//게시글의 조회수 : 게시글 보기를 했을 경우 해당 글의 hit를 증가  -> dao.boardHit(bno)
	public void boardHit(int bno) throws Exception {
		dao.boardHit(bno);
	}
}
