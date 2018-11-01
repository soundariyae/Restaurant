package com.acc.delegate;

import java.util.List;

import com.acc.bean.OrderMgmtBean;
import com.acc.bean.TablesBean;

public interface AdminViewDelegate {
	
	List<TablesBean> getTableDetails();
	boolean saveCategoryDetails(OrderMgmtBean orderMgmtBean);
	boolean saveItemDetails(OrderMgmtBean orderMgmtBean);

}
