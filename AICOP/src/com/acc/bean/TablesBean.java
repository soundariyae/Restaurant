package com.acc.bean;

public class TablesBean {
	private int tableId;
	private String tableName;
	private int capacity;
	private int availableSeat;
	private String occupancyStatus;
	
	
	public int getTableId() {
		return tableId;
	}
	public void setTableId(int tableId) {
		this.tableId = tableId;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public int getAvailableSeat() {
		return availableSeat;
	}
	public void setAvailableSeat(int availableSeat) {
		this.availableSeat = availableSeat;
	}
	public String getOccupancyStatus() {
		return occupancyStatus;
	}
	public void setOccupancyStatus(String occupancyStatus) {
		this.occupancyStatus = occupancyStatus;
	}
	
	

}
