package com.acc.service;

import java.util.List;

import com.acc.bean.UserBean;

public interface LoginService {

	UserBean authenticateUser(String username, String password);

	List<String> getRoles(int employee_id);
}
