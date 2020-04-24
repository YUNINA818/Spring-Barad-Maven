package com.lifeform.boardproject.commons.paging;

public class Criteria {

    private int page; //���� ������ ��ȣ
    private int perPageNum;  //�������� ��µǴ� �Խñ��� ����

    public Criteria() { //�⺻������, ������������ 1, ������ �� ����� �Խñ��� ������ 10���� �⺻ ����
        this.page = 1;
        this.perPageNum = 10;
    }

    public void setPage(int page) { //������ ���� �߸��� ���� ������ �ʵ��� validation üũ�� ���� ������ ������ ����

        if (page <= 0) {
            this.page = 1;
            return;
        }

        this.page = page;
    }

    public int getPage() { //sql mapper�� ����� get �޼��带 ����
        return page;
    }

    public void setPerPageNum(int perPageNum) {

        if (perPageNum <= 0 || perPageNum > 100) {
            this.perPageNum = 10;
            return;
        }

        this.perPageNum = perPageNum;
    }

    public int getPerPageNum() {
        return this.perPageNum;
    }

    public int getPageStart() {  //�ָ��ؼ� ������ �ڵ�� sql mapper�� limit�������� ���� �������� �Խñ��� ���� ��ġ�� ������ �� ����Ѵ�.
    	                         //���� 10���� ����Ҷ� 3�������� sql�� limit 20,10�� ���� ���°� �Ǿ�� �Ѵ�. 
    	//20�� ��� ���� _ ���� ������ ���� �Խñ� ��ȣ=(������������ȣ-1)*�������� ����ҰԽñ��� ����
        return (this.page - 1) * perPageNum;
    }

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + ", getPage()=" + getPage()
				+ ", getPerPageNum()=" + getPerPageNum() + ", getPageStart()=" + getPageStart() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

    
    // toString() ����...
}