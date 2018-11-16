package com.acc.delegate;

import com.acc.bean.UserBean;

import java.util.List;

import com.acc.bean.OrderBean;
import com.acc.bean.OrderMgmtBean;
import com.acc.bean.PaymentBean;


public interface LoginDelegate {
	
	UserBean authenticateUser(String username, String password);
	List<OrderMgmtBean> getCategory();
	public List<OrderMgmtBean> getItems(int categoryId);
	List<String> getRoles(int employee_id);
	public List<PaymentBean> getPaymentMethods();
	public List<OrderBean> getOrderWithStatus(int statusId);
	
	

}
