package kr.co.vo;

//페이지내이션에서 한 페이지당 글을 저장하고 다루기 위한 VO 클래스
public class PageMaker {
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int dispalyPageNum = 10;
	private Criteria cri;
	
}
