package com.acc.delegate;

import com.acc.bean.UserBean;



public interface LoginDelegate {
	
	boolean authenticateUser(UserBean userBean);
	
	

}
