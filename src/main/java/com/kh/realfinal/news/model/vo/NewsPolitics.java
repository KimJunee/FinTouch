package com.kh.realfinal.news.model.vo;

public class NewsPolitics {
	private String title; 		// ����
	private String link;  		// ���� ��ũ
	private String pubdate;		// �ۼ���
	private String description;	// ��� ���
	private String image;		// ���� �����

	public NewsPolitics() {
		super();
	}

	public NewsPolitics(String title, String link, String pubdate, String description, String image) {
	this.title = title;
    this.link = link;
    this.pubdate = pubdate;
    this.description = description;
    this.image = image;
	}
	
	@Override
	public String toString() {
		return "NewsEconomy [title=" + title + ", link=" + link + ", pubdate=" + pubdate + ", description="
				+ description + ", image=" + image + "]";
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getPubdate() {
		return pubdate;
	}

	public void setPubdate(String pubdate) {
		this.pubdate = pubdate;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getDescription() {
		return description;
	}


	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
}