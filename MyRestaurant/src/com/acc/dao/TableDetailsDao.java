package com.acc.dao;

import java.util.List;

import com.acc.bean.ItemsBean;
import com.acc.bean.OrderBean;
import com.acc.bean.OrderMgmtBean;
import com.acc.bean.PaymentBean;
import com.acc.bean.TablesBean;

public interface TableDetailsDao {
	
	List<TablesBean> getTableDetails();
	List<OrderMgmtBean> getCategory();
	public List<OrderMgmtBean> getItems(int categoryId);
	boolean saveCategoryDetails(OrderMgmtBean orderMgmtBean);
	boolean saveItemDetails(OrderMgmtBean orderMgmtBean);
	List<ItemsBean> getItems();
	int placeOrder (OrderBean orderBean);
	public List<PaymentBean> getPaymentMethods();
	boolean updatePaymentType(OrderBean orderBean);
	public List<OrderBean> getOrderWithStatus(int statusId);
	public List<OrderMgmtBean> getItemsForOrderId(int orderId);
}
