package com.acc.delegate.impl;

import java.util.List;

import com.acc.bean.OrderMgmtBean;
import com.acc.bean.PaymentBean;
import com.acc.bean.UserBean;
import com.acc.delegate.LoginDelegate;
import com.acc.service.LoginService;
import com.acc.service.TableDetailsService;


public class LoginDelegateImpl implements LoginDelegate {

	private LoginService loginService;
	
	private TableDetailsService tableDetailsService;
	
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	public void setTableDetailsService(TableDetailsService tableDetailsService) {
		this.tableDetailsService = tableDetailsService;
	}

	@Override
	public UserBean authenticateUser(String username, String password) {
		System.out.println("In delegateImpl");
		return loginService.authenticateUser(username, password);
	}

	@Override
	public List<OrderMgmtBean> getCategory() {
		
		return tableDetailsService.getCategory();
	}

	@Override
	public List<OrderMgmtBean> getItems(int categoryId) {
		
		return tableDetailsService.getItems(categoryId);
	}

	@Override
	public List<String> getRoles(int employee_id){
		return loginService.getRoles(employee_id);
	}
	
	@Override
	public List<PaymentBean> getPaymentMethods() {
		
		return tableDetailsService.getPaymentMethods();
	}
}
