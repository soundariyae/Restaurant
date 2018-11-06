package com.acc.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.hibernate.type.StandardBasicTypes;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.acc.bean.ItemsBean;
import com.acc.bean.OrderMgmtBean;
import com.acc.bean.TablesBean;
import com.acc.dao.TableDetailsDao;

@Repository
@Transactional
public class TableDetailsDaoImpl implements TableDetailsDao {

	final static Logger logger = Logger.getLogger(TableDetailsDaoImpl.class);

	private static SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public TableDetailsDaoImpl() {
		try {

			Configuration configuration = new Configuration();
			configuration.configure("hbm.cfg.xml");
			ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties())
					.buildServiceRegistry();
			sessionFactory = configuration.buildSessionFactory(serviceRegistry);

		} catch (Throwable ex) {
			throw new ExceptionInInitializerError(ex);
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<TablesBean> getTableDetails() {
		logger.debug("get table details dao");

		StringBuilder queryBuffer = new StringBuilder();
		queryBuffer.append("SELECT table_id as \"tableId\",");
		queryBuffer.append(" table_name as \"tableName\",");
		queryBuffer.append(" capacity as \"capacity\",");
		queryBuffer.append(" available_seat as \"availableSeat\",");
		queryBuffer.append(" occupied_status as \"occupancyStatus\"");
		queryBuffer.append(" FROM table_details");

		System.out.println(queryBuffer.toString());
		Session session = sessionFactory.openSession();
		Query qr = session.createSQLQuery(queryBuffer.toString()).addScalar("tableId", StandardBasicTypes.INTEGER)
				.addScalar("tableName", StandardBasicTypes.STRING).addScalar("capacity", StandardBasicTypes.INTEGER)
				.addScalar("availableSeat", StandardBasicTypes.INTEGER)
				.addScalar("occupancyStatus", StandardBasicTypes.STRING)
				.setResultTransformer(new AliasToBeanResultTransformer(TablesBean.class));

		List<TablesBean> resultList = qr.list();
		session.close();
		logger.debug("size of the record --> " + resultList.size());

		return resultList;

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderMgmtBean> getCategory() {

		StringBuilder queryBuffer = new StringBuilder();
		queryBuffer.append("SELECT category_id as \"categoryId\",");
		queryBuffer.append(" category_name as \"categoryName\",");
		queryBuffer.append(" category_desc as \"categoryDesc\"");
		queryBuffer.append(" FROM category");

		System.out.println(queryBuffer.toString());
		Session session = sessionFactory.openSession();
		Query qr = session.createSQLQuery(queryBuffer.toString()).addScalar("categoryId", StandardBasicTypes.INTEGER)
				.addScalar("categoryName", StandardBasicTypes.STRING)
				.addScalar("categoryDesc", StandardBasicTypes.STRING)
				.setResultTransformer(new AliasToBeanResultTransformer(OrderMgmtBean.class));

		List<OrderMgmtBean> resultList = qr.list();
		logger.debug("size of the record --> " + resultList.size());
		session.close();
		return resultList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderMgmtBean> getItems(int categoryId) {

		StringBuilder queryBuffer = new StringBuilder();
		queryBuffer.append("SELECT item_id as \"itemId\",");
		queryBuffer.append(" name as \"itemName\",");
		queryBuffer.append(" type as \"itemType\",");
		queryBuffer.append(" category_id as \"categoryId\",");
		queryBuffer.append(" description as \"itemDescription\",");
		queryBuffer.append(" price as \"itemPrice\",");
		queryBuffer.append(" available_quantity as \"availableQuantity\",");
		queryBuffer.append(" tax as \"itemTax\",");
		queryBuffer.append(" status as \"itemStatus\"");
		queryBuffer.append(" FROM item");
		if (categoryId != 0) {
			queryBuffer.append(" WHERE categoryId = :categoryId");
		}

		System.out.println(queryBuffer.toString());
		Session session = sessionFactory.openSession();
		Query qr = session.createSQLQuery(queryBuffer.toString()).addScalar("itemId", StandardBasicTypes.INTEGER)
				.addScalar("itemName", StandardBasicTypes.STRING).addScalar("itemType", StandardBasicTypes.STRING)
				.addScalar("categoryId", StandardBasicTypes.INTEGER)
				.addScalar("itemDescription", StandardBasicTypes.STRING)
				.addScalar("itemPrice", StandardBasicTypes.INTEGER)
				.addScalar("availableQuantity", StandardBasicTypes.INTEGER)
				.addScalar("itemTax", StandardBasicTypes.INTEGER).addScalar("itemStatus", StandardBasicTypes.INTEGER)
				.setResultTransformer(new AliasToBeanResultTransformer(OrderMgmtBean.class));
		if (categoryId != 0) {
			qr.setParameter("categoryId", categoryId);
		}
		List<OrderMgmtBean> resultList = qr.list();
		logger.debug("size of the record --> " + resultList.size());
		session.close();
		return resultList;
	}

	@Override
	public boolean saveCategoryDetails(OrderMgmtBean orderMgmtBean) {

		StringBuilder queryBuffer = new StringBuilder();

		queryBuffer.append("insert into category(category_name,category_desc)");
		queryBuffer.append(" values(:categoryName,:categoryDesc)");
		Session session = sessionFactory.openSession();

		Transaction tx = session.beginTransaction();

		Query qr = session.createSQLQuery(queryBuffer.toString())

				.setParameter("categoryName", orderMgmtBean.getCategoryName())
				.setParameter("categoryDesc", orderMgmtBean.getCategoryDesc());

		int rowInserted = qr.executeUpdate();
		tx.commit();
		session.close();
		if (rowInserted > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean saveItemDetails(OrderMgmtBean orderMgmtBean) {

		StringBuilder queryBuffer = new StringBuilder();

		queryBuffer.append("insert into item(name,type,description,price,available_quantity,tax,status,category_id)");
		queryBuffer.append(" values(:itemName,:itemType,:description,:price,:availableQuan,:tax,:status,:categoryId)");
		Session session = sessionFactory.openSession();

		Transaction tx = session.beginTransaction();

		Query qr = session.createSQLQuery(queryBuffer.toString()).setParameter("itemName", orderMgmtBean.getItemName())
				.setParameter("itemType", orderMgmtBean.getItemType())
				.setParameter("description", orderMgmtBean.getItemDescription())
				.setParameter("price", orderMgmtBean.getItemPrice())
				.setParameter("availableQuan", orderMgmtBean.getAvailableQuantity())
				.setParameter("tax", orderMgmtBean.getItemTax())

				.setParameter("status", orderMgmtBean.getItemStatus())
				.setParameter("categoryId", orderMgmtBean.getCategoryId());

		int rowInserted = qr.executeUpdate();
		tx.commit();
		session.close();
		if (rowInserted > 0) {
			return true;
		}
		return false;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ItemsBean> getItems() {
		StringBuilder queryBuffer = new StringBuilder();
		queryBuffer.append("select a.item_id,a.description,a.price,a.available_quantity,a.pic_filename,a.tax,a.status,a.name , b.category_name,b.category_id from item a, category b where a.category_id =b.category_id");
		

		System.out.println(queryBuffer.toString());
		Session session = sessionFactory.openSession();
		Query qr = session.createSQLQuery(queryBuffer.toString())
				.addScalar("item_id", StandardBasicTypes.INTEGER)
				.addScalar("description", StandardBasicTypes.STRING)
				.addScalar("price", StandardBasicTypes.FLOAT)
				.addScalar("available_quantity", StandardBasicTypes.INTEGER)
				.addScalar("pic_filename", StandardBasicTypes.STRING)
				.addScalar("tax", StandardBasicTypes.FLOAT)
				.addScalar("status", StandardBasicTypes.BOOLEAN)
				.addScalar("name", StandardBasicTypes.STRING)
				.addScalar("category_name", StandardBasicTypes.STRING)
				.addScalar("category_id",StandardBasicTypes.INTEGER)
				.setResultTransformer(new AliasToBeanResultTransformer(ItemsBean.class));
		
		List<ItemsBean> resultList = qr.list();
		logger.debug("size of the record --> " + resultList.size());
		session.close();
		return resultList;
	}

}
