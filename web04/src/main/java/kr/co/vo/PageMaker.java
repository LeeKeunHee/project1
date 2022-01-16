package kr.co.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

//페이지내이션에서 한 페이지당 글을 저장하고 다루기 위한 VO 클래스
public class PageMaker {
	private int totalCount;   //전체 글의 수
	private int startPage;    //현재 클립에서 시작 페이지 번호
	private int endPage;      //현재 클립에서 끝 페이지 번호
	private boolean prev;     //이전 페이지 번호(이전 클립에서의 마지막 페이지 번호)
	private boolean next;     //다음 페이지 번호(다음 클립에서의 시작페이지 번호)
	private int displayPageNum = 10;  //현재 화면에 출력되는 페이지 글의 수
	private Criteria cri;  // 
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getDispalyPageNum() {
		return displayPageNum;
	}
	public void setDispalyPageNum(int dispalyPageNum) {
		this.displayPageNum = dispalyPageNum;
	}
	public Criteria getCri() {
		return cri;
	}
	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + ", prev="
				+ prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", cri=" + cri + "]";
	}
	
	private void calcData() { //시작페이지, 끝페이지, 전체페이지수, 이전/다음 페이지 존재 계산
		// 하단에서 클릭한 페이지번호 + 한 클립 => 20 + 9 =>29 : 20~29
		endPage = (int) (Math.ceil(cri.getPage() / (double) displayPageNum) * displayPageNum);
		// 하단에서 클릭한 페이지번호를 구함 => 20 + 9 => 29-10+1 => 20
		startPage = (endPage - displayPageNum) +1;
		
		// 전체 필요한 페이지 = 게시글수 / 한페이지당 게시글수  => 237/10 -> 23.7 인데 올림해서 24 
		int tempEndPage = (int) Math.ceil(totalCount / cri.getPerPageNum());
		//만약, 전체페이지가 24페이지까지 존재한다면, 끝 페이지는 24페이지가 되어야 함
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		//이전 페이지와 다음 페이지의 존재유무 판단
		prev = startPage==1 ? false : true;
		next = endPage * cri.getPerPageNum() >= totalCount ? false : true; 
	}
	public String makeQuery(int page) { //계산된 페이지만 파라미터를 URI로 전달
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", cri.getPerPageNum())
				.build();
		return uriComponents.toUriString();
	}
	public String makeSearch(int page) { //입력된 검색어에 따른 계산된 페이지의 파라미터를 URI로 전달하는 메서드
		SearchCriteria sc = new SearchCriteria();
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", cri.getPerPageNum())
				.queryParam("searchType", (sc.getSearchType()))
				.queryParam("keyword", encoding((sc.getKeyword())))
				.build();
		return uriComponents.toUriString();
	}
	public String encoding(String keyword) { //한글로 입력된 검색어를 URI형태인 유니코드(UTF-8)로 인코딩
		if(keyword == null || keyword.trim().length() == 0){
			return "";
		}
		try {
			return URLEncoder.encode(keyword,"UTF-8");
		} catch (UnsupportedEncodingException e) {
			return "";
	
		}
	}
}