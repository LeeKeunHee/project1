package kr.co.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

//���������̼ǿ��� �� �������� ���� �����ϰ� �ٷ�� ���� VO Ŭ����
public class PageMaker {
	private int totalCount;   //��ü ���� ��
	private int startPage;    //���� Ŭ������ ���� ������ ��ȣ
	private int endPage;      //���� Ŭ������ �� ������ ��ȣ
	private boolean prev;     //���� ������ ��ȣ(���� Ŭ�������� ������ ������ ��ȣ)
	private boolean next;     //���� ������ ��ȣ(���� Ŭ�������� ���������� ��ȣ)
	private int displayPageNum = 10;  //���� ȭ�鿡 ��µǴ� ������ ���� ��
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
	
	private void calcData() { //����������, ��������, ��ü��������, ����/���� ������ ���� ���
		// �ϴܿ��� Ŭ���� ��������ȣ + �� Ŭ�� => 20 + 9 =>29 : 20~29
		endPage = (int) (Math.ceil(cri.getPage() / (double) displayPageNum) * displayPageNum);
		// �ϴܿ��� Ŭ���� ��������ȣ�� ���� => 20 + 9 => 29-10+1 => 20
		startPage = (endPage - displayPageNum) +1;
		
		// ��ü �ʿ��� ������ = �Խñۼ� / ���������� �Խñۼ�  => 237/10 -> 23.7 �ε� �ø��ؼ� 24 
		int tempEndPage = (int) Math.ceil(totalCount / cri.getPerPage());
		//����, ��ü�������� 24���������� �����Ѵٸ�, �� �������� 24�������� �Ǿ�� ��
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		//���� �������� ���� �������� �������� �Ǵ�
		prev = startPage==1 ? false : true;
		next = endPage * cri.getPerPage() >= totalCount ? false : true; 
	}
	public String makeQuery(int page) { //���� �������� �Ķ���͸� URI�� ����
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", cri.getPerPage())
				.build();
		return uriComponents.toUriString();
	}
	public String makeSearch(int page) { //�Էµ� �˻�� ���� ���� �������� �Ķ���͸� URI�� �����ϴ� �޼���
		SearchCriteria sc = new SearchCriteria();
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", cri.getPerPage())
				.queryParam("searchType", (sc.getSearchType()))
				.queryParam("keyword", encoding((sc.getKeyword())))
				.build();
		return uriComponents.toUriString();
	}
	public String encoding(String keyword) { //�ѱ۷� �Էµ� �˻�� URI������ �����ڵ�(UTF-8)�� ���ڵ�
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
