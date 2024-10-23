package com.wanada.model;

public class IndexBannerDTO {
	private int banner_index;
	private String image;
	private String page_link;
	private String category;
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getPage_link() {
		return page_link;
	}
	public void setPage_link(String page_link) {
		this.page_link = page_link;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getBanner_index() {
		return banner_index;
	}
	public void setBanner_index(int banner_index) {
		this.banner_index = banner_index;
	}
}
