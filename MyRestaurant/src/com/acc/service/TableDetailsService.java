package com.acc.service;

import java.util.List;

import com.acc.bean.OrderMgmtBean;
import com.acc.bean.TablesBean;

public interface TableDetailsService {
	List<TablesBean> getTableDetails();
	List<OrderMgmtBean> getCategory();
	public List<OrderMgmtBean> getItems();
	boolean saveCategoryDetails(OrderMgmtBean orderMgmtBean);
	boolean saveItemDetails(OrderMgmtBean orderMgmtBean);
	

}
