package com.acc.bean;

import java.util.List;

public class OrderBean {
	
	int tableId;
	List<OrderMgmtBean> orderMgmtBeanList;
	int totalAmount;
	int orderId;
	int paymentTypeId;
	int orderStatusTypeId;
	String orderStatusType;
	
	public int getTableId() {
		return tableId;
	}
	public void setTableId(int tableId) {
		this.tableId = tableId;
	}
	public List<OrderMgmtBean> getOrderMgmtBeanList() {
		return orderMgmtBeanList;
	}
	public void setOrderMgmtBeanList(List<OrderMgmtBean> orderMgmtBeanList) {
		this.orderMgmtBeanList = orderMgmtBeanList;
	}
	public int getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getPaymentTypeId() {
		return paymentTypeId;
	}
	public void setPaymentTypeId(int paymentTypeId) {
		this.paymentTypeId = paymentTypeId;
	}
	public int getOrderStatusTypeId() {
		return orderStatusTypeId;
	}
	public void setOrderStatusTypeId(int orderStatusTypeId) {
		this.orderStatusTypeId = orderStatusTypeId;
	}
	public String getOrderStatusType() {
		return orderStatusType;
	}
	public void setOrderStatusType(String orderStatusType) {
		this.orderStatusType = orderStatusType;
	}
	
	
	

}
