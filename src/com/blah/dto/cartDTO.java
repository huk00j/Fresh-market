package com.blah.dto;

import java.sql.Timestamp;

public class cartDTO {

	private int no;
	private String id;
	private int num;
	private String name;
	private int amount;
	private int price;
	private String image;
	private Timestamp cartdate;
	
	
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
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Timestamp getCartdate() {
		return cartdate;
	}
	public void setCartdate(Timestamp cartdate) {
		this.cartdate = cartdate;
	}
	
	
}
