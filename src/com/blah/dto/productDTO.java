package com.blah.dto;

import java.sql.Timestamp;

public class productDTO {

	private int num;
	private String type;
	private String name;
	private int amount;
	private int price;
	private String origin;
	private String introduce;
	private String image;
	private Timestamp enrolldate;
	
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Timestamp getEnrolldate() {
		return enrolldate;
	}
	public void setEnrolldate(Timestamp enrolldate) {
		this.enrolldate = enrolldate;
	}
	
	
	
	
}
