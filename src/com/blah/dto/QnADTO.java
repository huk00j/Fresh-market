package com.blah.dto;

import java.sql.Timestamp;

public class QnADTO {

	private int no;
	private String id;
	private String title;
	private String content;
	private int views;
	private int grp;
	private int seq;
	private int lvl;
	private Timestamp qnadate;
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public int getGrp() {
		return grp;
	}
	public void setGrp(int grp) {
		this.grp = grp;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getLvl() {
		return lvl;
	}
	public void setLvl(int lvl) {
		this.lvl = lvl;
	}
	public Timestamp getQnadate() {
		return qnadate;
	}
	public void setQnadate(Timestamp qnadate) {
		this.qnadate = qnadate;
	}
	
	
	
	
}
