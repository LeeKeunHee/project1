package kr.co.dao;

import java.util.List;
import java.util.Map;

import kr.co.vo.BoardVO;
import kr.co.vo.SearchCriteria;

public interface BoardDAO {
	//게시글 작성 -> sql.insert(boardVO)
	public void write(BoardVO boardVO) throws Exception;
	
	//게시물 목록 -> sql.listPage(sc) boardVO
	public List<BoardVO> list(SearchCriteria scri) throws Exception;
	
	//게시글 총 갯수 -> sql.listCount(sc) count
	public int listCount(SearchCriteria scri) throws Exception;
	
	//게시글 보기 -> sql.read(bno) boardVO
	public BoardVO read(int bno) throws Exception;	
	
	//게시글 수정  -> sql.update(boardVO)
	public void update(BoardVO boardVO) throws Exception;
	
	//게시글 삭제  -> sql.delete(bno)
	public void delete(int bno) throws Exception; 
	
	//첨부파일 업로드 -> sql.insertFile(hashMap)
	public void insertFile(Map<String, Object> map) throws Exception;
	
	//첨부파일 조회  -> sql.selectFileList(bno) hashMap
	public List<Map<String, Object>> selectFileList(int bno) throws Exception;
	
	//첨부파일 다운로드  -> sql.selectFileInfo(hashMap) hashMap
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;
	
	//첨부파일 수정  -> sql.updateFile(hashMap)
	public void updateFile(Map<String, Object> map) throws Exception;
	
	//게시글의 조회수 : 게시글 보기를 했을 경우 해당 글의 hit를 증가  -> sql.boardHit(bno)
	public void boardHit(int bno) throws Exception;
}
