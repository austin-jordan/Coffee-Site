package com.thejavashop.shopping;

public class drinkItem {

	private String dName;
	private float dPrice;
	private int count;
	
	public String getdName() {
		return dName;
	}
	public drinkItem(String dName, float dPrice, int count) {
		super();
		this.dName = dName;
		this.dPrice = dPrice;
		this.count = count;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	public float getdPrice() {
		return dPrice;
	}
	public void setdPrice(float dPrice) {
		this.dPrice = dPrice;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
}
