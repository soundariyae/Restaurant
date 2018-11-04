package com.acc.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.hibernate.type.StandardBasicTypes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.acc.bean.RoleBean;
import com.acc.bean.UserBean;
import com.acc.dao.LoginDao;

@Repository
@Transactional
public class LoginDaoImpl implements LoginDao {

	private static SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public LoginDaoImpl() {
		Configuration configuration = new Configuration();
		System.out.println("configuration" + configuration);
		configuration.configure("hbm.cfg.xml");
		ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties())
				.buildServiceRegistry();
		sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<UserBean> getUserForUserId(String username) {
		StringBuilder queryBuffer = new StringBuilder();
		queryBuffer.append("select employee_id,username, password from login_info where username=:userId");
		Session session = sessionFactory.openSession();

		Query qr = session.createSQLQuery(queryBuffer.toString())
				.addScalar("username", StandardBasicTypes.STRING)
				.addScalar("password", StandardBasicTypes.STRING)
				.addScalar("employee_id", StandardBasicTypes.INTEGER)
				.setResultTransformer(new AliasToBeanResultTransformer(UserBean.class))
				.setParameter("userId", username);
		List<UserBean> resultList = qr.list();

		session.close();
		return resultList;
	}

	@Override
	public List<RoleBean> getRolesForUser(int employee_id) {
		StringBuilder queryBuffer = new StringBuilder();
		queryBuffer.append(
				"select b.role_id as role_id,c.role_name as role_name from user_roles b, roles c where b.employee_id=:empId and c.role_id=b.role_id;");
		Session session = sessionFactory.openSession();

		Query qr = session.createSQLQuery(queryBuffer.toString())
				.addScalar("role_id", StandardBasicTypes.INTEGER)
				.addScalar("role_name", StandardBasicTypes.STRING)
				.setResultTransformer(new AliasToBeanResultTransformer(RoleBean.class))
				.setParameter("empId", employee_id);
		List<RoleBean> resultList = qr.list();

		session.close();
		return resultList;
	}
}
