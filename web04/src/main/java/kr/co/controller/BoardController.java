package kr.co.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServlet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.service.BoardService;
import kr.co.service.ReplyService;
import kr.co.vo.BoardVO;
import kr.co.vo.PageMaker;
import kr.co.vo.ReplyVO;
import kr.co.vo.SearchCriteria;

@Controller
@RequestMapping("/board/*")
public class BoardController extends HttpServlet {
	//해당 내용을 처리하고, 콘솔 창에 메세지를 띄운다.
	private final static Logger logger = LoggerFactory.getLogger(BoardController.class);
    
	@Inject
	private BoardService service;
   
	@Inject
	private ReplyService replyService;
	
	//게시판 글 작성 화면으로 이동
	@RequestMapping(value="writeView", method=RequestMethod.GET)
	public void writeView() throws Exception {
		logger.info("writeView");
	}
	
	//게시판 글쓰기 처리
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String write(BoardVO boardVO, MultipartHttpServletRequest mpRequest) throws Exception {
		logger.info("write");
		service.write(boardVO, mpRequest);
		return "redirect:/board/list";
	}
	
	//게시판 글 목록 및 조회
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception {
		logger.info("list");
		//model은 getter가 필요없는 application 객체 -> 
		model.addAttribute("list", service.list(scri));
		PageMaker pageMaker = new PageMaker();
		//pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		model.addAttribute("pageMaker", pageMaker);
		return "board/list";
	}
	
	//게시판 글보기
	@RequestMapping(value="/readView", method=RequestMethod.GET)
	public String read(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
		model.addAttribute("read", service.read(boardVO.getBno()));
		model.addAttribute("scri", scri);
		List<ReplyVO> replyList = replyService.readReply(boardVO.getBno());
		model.addAttribute("replyList", replyList);
		List<Map<String, Object>> filelist = service.selectFileList(boardVO.getBno());
		model.addAttribute("file", filelist); 
		return "board/readView";
	}
	
	//게시판 수정페이지로
	@RequestMapping(value="", method=RequestMethod.GET)
	public String updateView(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
	  
	}
	
	//게시판 수정
	
	//게시판 삭제
	
	//댓글 작성
	
	//댓글 수정
	
	
}
