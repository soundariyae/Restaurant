package com.acc.dao;

import java.util.List;

import com.acc.bean.OrderMgmtBean;
import com.acc.bean.TablesBean;

public interface TableDetailsDao {
	
	List<TablesBean> getTableDetails();
	List<OrderMgmtBean> getCategory();
	public List<OrderMgmtBean> getItems();

}
