package com.acc.delegate.impl;

import java.util.List;

import com.acc.bean.OrderMgmtBean;
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
	public boolean authenticateUser(UserBean userBean) {
		System.out.println("In delegateImpl");
		return loginService.authenticateUser(userBean);
	}

	@Override
	public List<OrderMgmtBean> getCategory() {
		
		return tableDetailsService.getCategory();
	}

	@Override
	public List<OrderMgmtBean> getItems() {
		
		return tableDetailsService.getItems();
	}

	
	
}
