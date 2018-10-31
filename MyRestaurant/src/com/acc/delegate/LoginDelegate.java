package com.acc.delegate;

import com.acc.bean.UserBean;

import java.util.List;

import com.acc.bean.OrderMgmtBean;


public interface LoginDelegate {
	
	boolean authenticateUser(UserBean userBean);
	List<OrderMgmtBean> getCategory();
	public List<OrderMgmtBean> getItems();
	
	

}
