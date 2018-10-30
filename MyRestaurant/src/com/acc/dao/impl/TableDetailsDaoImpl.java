package com.acc.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.hibernate.type.StandardBasicTypes;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.acc.bean.TablesBean;
import com.acc.dao.TableDetailsDao;

@Repository
@Transactional
public class TableDetailsDaoImpl implements TableDetailsDao{

	final static Logger logger = Logger.getLogger(TableDetailsDaoImpl.class);
	
	private static SessionFactory sessionFactory ;
 	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<TablesBean> getTableDetails() {
		logger.debug("get table details dao");
		try {
	        Configuration configuration = new Configuration();
	    configuration.configure("hbm.cfg.xml");
	    ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();   
	     sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	    }
	catch (Throwable ex) {
	    throw new ExceptionInInitializerError(ex);
	}
		StringBuilder queryBuffer = new StringBuilder();
			queryBuffer.append("SELECT table_id as \"tableId\",");
			queryBuffer.append(" table_name as \"tableName\",");
			queryBuffer.append(" capacity as \"capacity\",");
			queryBuffer.append(" available_seat as \"availableSeat\",");
			queryBuffer.append(" occupancy_status as \"occupancyStatus\"");
			queryBuffer.append(" FROM table_details");
			
			System.out.println(queryBuffer.toString());
			Session session = sessionFactory.openSession();
			Query qr = session.createSQLQuery(queryBuffer.toString())
					.addScalar("tableId",StandardBasicTypes.INTEGER)
					.addScalar("tableName",StandardBasicTypes.STRING)
					.addScalar("capacity",StandardBasicTypes.INTEGER)
					.addScalar("availableSeat",StandardBasicTypes.INTEGER)
					.addScalar("occupancyStatus",StandardBasicTypes.STRING)
					.setResultTransformer(new AliasToBeanResultTransformer(TablesBean.class));
					
			List<TablesBean> resultList = qr.list();
			logger.debug("size of the record --> "+resultList.size());
			
			return resultList;
		
	}

}
