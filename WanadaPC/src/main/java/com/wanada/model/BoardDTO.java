package com.wanada.model;

public class BoardDTO {
	private int board_index;
	private String theme;
	private String person;
	private String enterdate;
	private int count;
	
	public int getBoard_index() {
		return board_index;
	}
	public void setBoard_index(int board_index) {
		this.board_index = board_index;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public String getPerson() {
		return person;
	}
	public void setPerson(String person) {
		this.person = person;
	}
	public String getEnterdate() {
		return enterdate;
	}
	public void setEnterdate(String enterdate) {
		this.enterdate = enterdate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
}
