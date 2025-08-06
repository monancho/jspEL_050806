package com.monancho.exer;

public class CartDto {
	int number;
	String product;
	String color;
	String quantity;
	public CartDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CartDto(int number, String product, String color, String quantity) {
		super();
		this.number = number;
		this.product = product;
		this.color = color;
		this.quantity = quantity;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
	
	
	
	
}
