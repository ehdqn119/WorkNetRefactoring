package com.kmu.worknet.job.domain;

import lombok.NoArgsConstructor;
import lombok.ToString;
@ToString
@NoArgsConstructor
public class Page {
	
	private int totalBoard;
	private int totalPage;
	private int currentPage=1;
	private int beginning=0;
	private int end=0;
	private int beginPage=0;
	private int endPage=0;
	private int pageRows=10;
	private int buttonLength=5;

	public int getTotalBoard() {
		return totalBoard;
	}
	public int getTotalPage() {
		totalPage = (int)Math.ceil(getTotalBoard()/(double)getPageRows());
		return totalPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}

	public int getBeginning() {
		beginning = ((getCurrentPage()*getPageRows())-getPageRows());
		return beginning;
	}
	public int getEnd() {
		end = (getCurrentPage()*getPageRows());
		return end;
	}
	public int getBeginPage() {
		beginPage = getEndPage()-(getButtonLength()-1);
		return beginPage;
	}
	public int getEndPage() {
		endPage = (int)(Math.ceil(getCurrentPage()/(double)getButtonLength())*getButtonLength());
		return endPage;
	}
	public int getPageRows() {
		return pageRows;
	}
	public int getButtonLength() {
		return buttonLength;
	}
	
	public void setTotalBoard(int totalBoard) {
		this.totalBoard = totalBoard;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public void setBeginning(int beginning) {
		this.beginning = beginning;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public void setBeginPage(int beginPage) {
		this.beginPage = beginPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public void setPageRows(int pageRows) {
		this.pageRows = pageRows;
	}
	public void setButtonLength(int buttonLength) {
		this.buttonLength = buttonLength;
	}
}
