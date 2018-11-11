package com.acc.dao;

import java.util.List;

import com.acc.bean.ItemsBean;
import com.acc.bean.OrderBean;
import com.acc.bean.OrderMgmtBean;
import com.acc.bean.TablesBean;

public interface TableDetailsDao {
	
	List<TablesBean> getTableDetails();
	List<OrderMgmtBean> getCategory();
	public List<OrderMgmtBean> getItems(int categoryId);
	boolean saveCategoryDetails(OrderMgmtBean orderMgmtBean);
	boolean saveItemDetails(OrderMgmtBean orderMgmtBean);
	List<ItemsBean> getItems();
	boolean placeOrder (OrderBean orderBean);
}
