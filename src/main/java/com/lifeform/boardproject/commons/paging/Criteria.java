package com.lifeform.boardproject.commons.paging;

public class Criteria {

    private int page; //현재 페이지 번호
    private int perPageNum;  //페이지당 출력되는 게시글의 갯수

    public Criteria() { //기본생성자, 현재페이지를 1, 페이지 당 출력할 게시글의 갯수를 10으로 기본 세팅
        this.page = 1;
        this.perPageNum = 10;
    }

    public void setPage(int page) { //음수와 같은 잘못된 값이 들어오지 않도록 validation 체크를 통해 적절한 값으로 세팅

        if (page <= 0) {
            this.page = 1;
            return;
        }

        this.page = page;
    }

    public int getPage() { //sql mapper가 사용할 get 메서드를 정의
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

    public int getPageStart() {  //주목해서 봐야할 코드로 sql mapper의 limit구문에서 현재 페이지의 게시글의 시작 위치를 지정할 때 사용한다.
    	                         //예로 10개씩 출력할때 3페이지는 sql이 limit 20,10과 같은 형태가 되어야 한다. 
    	//20을 얻는 공식 _ 현재 페이지 시작 게시글 번호=(현재페이지번호-1)*페이지당 출력할게시글의 갯수
        return (this.page - 1) * perPageNum;
    }

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + ", getPage()=" + getPage()
				+ ", getPerPageNum()=" + getPerPageNum() + ", getPageStart()=" + getPageStart() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

    
    // toString() 생략...
}