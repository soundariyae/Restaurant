package com.acc.bean;

public class ItemsBean {
	private int item_id;
	private String type;
	private String name;
	private String category_name;
	private float price;
	private String description;
	private int available_quantity;
	private String pic_filename;
	private float tax;
	private boolean status;
	
	public int getItem_id() {
		return item_id;
	}
	public void setItem_id(int item_id) {
		this.item_id = item_id;
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
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getAvailable_quantity() {
		return available_quantity;
	}
	public void setAvailable_quantity(int available_quantity) {
		this.available_quantity = available_quantity;
	}
	public String getPic_filename() {
		return pic_filename;
	}
	public void setPic_filename(String pic_filename) {
		this.pic_filename = pic_filename;
	}
	public float getTax() {
		return tax;
	}
	public void setTax(float tax) {
		this.tax = tax;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}

//Select a.item_id,a.description,a.price,a.available_quantity,a.pic_filename,a.tax,a.status,a.name , b.category_name from item a, category b where a.category_id =b.category_id