package kr.co.vo;

import java.util.Date;
//현재 페이지 번호, 전체 글 수, 한 페이지당 글의 수, 한 클립 당 페이지수, 시작페이지번호, 마지막페이지번호, 이전페이지유무, 다음페이지유무
// 다음페이지유무 -> Criteria, pageMaker
//현재 페이지번호, 한 페이지당 글의 수, 현재 페이지의 첫 번재 줄 글 번호, 현재 페이지의 마지막 줄 글번호
//AOP(관점지향프로그래밍) : 주관심(주기능)에 집중하도록 기능을 분리하여 프로그래밍을 하도록 하는 것
//주기능 : 회원기능(Member) , 게시판기능(Board), 댓글기능(Reply) ,상품기능(Product), 판매(Pay) , 장바구니(Cart)
//주기능이 공통으로 데이터베이스의 접속 및 연결, 로깅, 파라미터 변수가 필요하므로 이러한 기능은 부가능으로 추가되거나 변경될 여지가 많으므로 별도의 클래스나 형태로 프로그래밍하며, 
//주기능에 집중하도록 하여 유지보수나 수정이 용이하도록 하는 프로그래밍
//주기능+보조기능=>하나의 클래스에 담다보면 보조기능을 추가하거나 삭제하려면 하나의 클래스안에 담았기 때문에 일일히 수정해야함
//주기능+보조기능=>여러 개의 클래스로 나누어 주면 , 보조기능을 갖는 클래스를 더 추가하거나, 해당 보조클래스를 수정하면됨 -> 모듈화
//검색방법, 검색어 -> SearchCriteria
public class BoardVO {
	private int bno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private int hit;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", title=" + title + ", content=" + content + ", writer=" + writer + ", regdate="
				+ regdate + ", hit=" + hit + "]";
	}
	
}
