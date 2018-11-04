package com.acc.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.bean.RoleBean;
import com.acc.bean.UserBean;
import com.acc.dao.LoginDao;
import com.acc.service.LoginService;

@Service(value="loginService")
public class LoginServiceImpl implements LoginService{

	@Resource(name="loginService")
	private LoginService loginService;
	
	@Autowired
	private LoginDao loginDao;
	
	
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}


	
	@Override
	public UserBean authenticateUser(String username, String password) {
		System.out.println("In service");
		List<UserBean> resultList = loginDao.getUserForUserId(username);
		System.out.println("Size of user result lsit :"+resultList.size());

		for(UserBean userBeans : resultList) {
			if(userBeans.getPassword().equals(password) && resultList.size() == 1){
				return userBeans;
			}
		}
		return null;
	}
	
	@Override
	public List<String> getRoles(int employee_id) {
		List<RoleBean> result = loginDao.getRolesForUser(employee_id);
		System.out.println("Number of roles for emp : "+employee_id +" is "+result.size());
		List<String> roles = new ArrayList<>();
		for (RoleBean role : result) {
			roles.add(role.getRole_name());
		}
		result = null;
		System.gc();
		return roles;
	}

}
