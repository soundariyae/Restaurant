package com.acc.delegate.impl;

import java.util.List;



import com.acc.bean.UserBean;
import com.acc.delegate.LoginDelegate;
import com.acc.service.LoginService;


public class LoginDelegateImpl implements LoginDelegate {

	private LoginService loginService;
	
	

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	


	@Override
	public boolean authenticateUser(UserBean userBean) {
		System.out.println("In delegateImpl");
		return loginService.authenticateUser(userBean);
	}

	
	
}
