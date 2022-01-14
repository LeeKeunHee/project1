package kr.co.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.BoardVO;
import kr.co.vo.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO {
		
		@Inject
		private SqlSession sql;
		
		//게시글 작성 -> sql.insert(boardVO)
		@Override
		public void write(BoardVO boardVO) throws Exception {
			sql.insert("boardMapper.insert", boardVO);
		}
		
		//게시물 목록 -> sql.listPage(sc) boardVO
		@Override
		public List<BoardVO> list(SearchCriteria scri) throws Exception{
			return sql.selectList("boardMapper.listPage", scri);
		}
		
		//게시글 총 갯수 -> sql.listCount(sc) count
		@Override
		public int listCount(SearchCriteria scri) throws Exception{
			return sql.selectOne("boardMapper.listCount", scri);
		}
		
		//게시글 보기 -> sql.read(bno) boardVO
		@Override
		public BoardVO read(int bno) throws Exception{
			return sql.selectOne("boardMapper.read", bno);
		}	
		
		//게시글 수정  -> sql.update(boardVO)
		@Override
		public void update(BoardVO boardVO) throws Exception{
			sql.update("boardMapper.update", boardVO);
		}
		
		//게시글 삭제  -> sql.delete(bno)
		@Override
		public void delete(int bno) throws Exception{
			sql.delete("boardMapper.delete", bno);
		}
		
		//첨부파일 업로드 -> sql.insertFile(hashMap)
		@Override
		public void insertFile(Map<String, Object> map) throws Exception{
			sql.insert("boardMapper.insertFile", map);
		}
	
		//첨부파일 조회  -> sql.selectFileList(bno) hashMap
		@Override
		public List<Map<String, Object>> selectFileList(int bno) throws Exception{
			return sql.selectList("boardMapper.selectFileList", bno);
		}
		
		//첨부파일 다운로드  -> sql.selectFileInfo(hashMap) hashMap
		@Override
		public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception{
			return sql.selectOne("boardMapper.selectFileInfo", map);
		}
		
		//첨부파일 수정  -> sql.updateFile(hashMap)
		@Override
		public void updateFile(Map<String, Object> map) throws Exception {
			sql.update("boardMapper.updateFile", map);
		}
		
		//게시글의 조회수 : 게시글 보기를 했을 경우 해당 글의 hit를 증가  -> sql.boardHit(bno)
		@Override
		public void boardHit(int bno) throws Exception {
			sql.update("boardMapper.boardHit", bno);
		}
}
