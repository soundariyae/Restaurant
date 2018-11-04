package com.acc.dao;

import java.util.List;

import com.acc.bean.RoleBean;
import com.acc.bean.UserBean;

public interface LoginDao {
	List<UserBean> getUserForUserId(String username);
	List<RoleBean> getRolesForUser(int employee_id);
}
