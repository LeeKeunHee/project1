package kr.co.vo;

//�Խ��� �� ����� ����¡ ó���� ���� ������ �����ϴ� VO Ŭ����
public class Criteria {
	private int page;     //���� ��������ȣ
	private int perPage;  //�� �������� ���� ��
	private int rowStart; //���� �������� ù ��°�� �� ��ȣ
	private int rowEnd;   //���� �������� ������ �� �� ��ȣ
	
	public Criteria() { //�⺻ ������
		
	}
	public Criteria(int page, int perPage) {
		this.page = page;
		this.perPage = perPage;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if(page <=0) {
			this.page= 1;
			return;
		}
		this.page = page;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		if(perPage <= 0 || perPage > 100) {
			this.perPage = 10;
		}
		this.perPage = perPage;
	}
	public int getRowStart() { //���� �������� �� ��ȣ ����
		rowStart = ((page - 1) * perPage)+1;
		return rowStart;
	}
	public void setRowStart(int rowStart) {
		this.rowStart = rowStart;
	}
	public int getRowEnd() { //���� �������� �� ������ ���� �� ��ȣ
		rowEnd = rowStart + perPage-1;
		return rowEnd;
	}
	public void setRowEnd(int rowEnd) {
		this.rowEnd = rowEnd;
	}
	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPage=" + perPage + ", rowStart=" + rowStart + ", rowEnd=" + rowEnd
				+ "]";
	}
	public int getPageStart() { //���۹�ȣ getter
		return (this.page -1) * perPage;
	}
}
