package com.acc.delegate;

import java.util.List;

import com.acc.bean.ItemsBean;
import com.acc.bean.OrderBean;
import com.acc.bean.OrderMgmtBean;
import com.acc.bean.PaymentBean;
import com.acc.bean.TablesBean;

public interface AdminViewDelegate {
	
	List<TablesBean> getTableDetails();
	boolean saveCategoryDetails(OrderMgmtBean orderMgmtBean);
	boolean saveItemDetails(OrderMgmtBean orderMgmtBean);
	List<ItemsBean> getItems();
	int placeOrder (OrderBean orderBean);
	boolean updatePaymentType(OrderBean orderBean);
	public List<OrderMgmtBean> getItemsForOrderId(int orderId);
	

}
