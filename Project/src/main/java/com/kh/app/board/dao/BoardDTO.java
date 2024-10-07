package com.kh.app.board.dao;

public class BoardDTO {
	private int boardnum;
	private String boardtitle;
	private String boardcontents;
	private String username;
	private String boarddata;
	private int boardreadcount;
	
	public int getBoardnum() {
		return boardnum;
	}
	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}
	public String getBoardtitle() {
		return boardtitle;
	}
	public void setBoardtitle(String boardtitle) {
		this.boardtitle = boardtitle;
	}
	public String getBoardcontents() {
		return boardcontents;
	}
	public void setBoardcontents(String boardcontents) {
		this.boardcontents = boardcontents;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getBoarddata() {
		return boarddata;
	}
	public void setBoarddata(String boarddata) {
		this.boarddata = boarddata;
	}
	public int getBoardreadcount() {
		return boardreadcount;
	}
	public void setBoardreadcount(int boardreadcount) {
		this.boardreadcount = boardreadcount;
	}
	
	
}
