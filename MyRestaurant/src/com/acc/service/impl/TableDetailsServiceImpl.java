package com.acc.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.bean.ItemsBean;
import com.acc.bean.OrderBean;
import com.acc.bean.OrderMgmtBean;
import com.acc.bean.PaymentBean;
import com.acc.bean.TablesBean;

import com.acc.dao.TableDetailsDao;

import com.acc.service.TableDetailsService;

@Service(value="tableDetailsService")
public class TableDetailsServiceImpl implements TableDetailsService{

	final static Logger logger = Logger.getLogger(TableDetailsServiceImpl.class);
	
	@Resource(name="tableDetailsService")
	private TableDetailsService tableDetailsService;

	public void setTableDetailsService(TableDetailsService tableDetailsService) {
		this.tableDetailsService = tableDetailsService;
	}

	@Autowired
	private TableDetailsDao tableDetailsDao;
	
	@Override
	public List<TablesBean> getTableDetails() {
		logger.debug("Get table details service");
		return tableDetailsDao.getTableDetails();
	}

	@Override
	public List<OrderMgmtBean> getCategory() {
		
		return tableDetailsDao.getCategory();
	}

	@Override
	public List<OrderMgmtBean> getItems(int categoryId) {
		
		return tableDetailsDao.getItems(categoryId);
	}

	@Override
	public boolean saveCategoryDetails(OrderMgmtBean orderMgmtBean) {
		
		return tableDetailsDao.saveCategoryDetails(orderMgmtBean);
	}

	@Override
	public boolean saveItemDetails(OrderMgmtBean orderMgmtBean) {
		// TODO Auto-generated method stub
		return tableDetailsDao.saveItemDetails(orderMgmtBean);
	}
	
	@Override
	public List<ItemsBean> getItems() {
		return tableDetailsDao.getItems();
	}

	@Override
	public int placeOrder(OrderBean orderBean) {
		
		return tableDetailsDao.placeOrder(orderBean);
	}

	@Override
	public List<PaymentBean> getPaymentMethods() {
		// TODO Auto-generated method stub
		return tableDetailsDao.getPaymentMethods();
	}

	@Override
	public boolean updatePaymentType(OrderBean orderBean) {
		// TODO Auto-generated method stub
		return tableDetailsDao.updatePaymentType(orderBean);
	}

	@Override
	public List<OrderBean> getOrderWithStatus(int statusId) {
		// TODO Auto-generated method stub
		return tableDetailsDao.getOrderWithStatus(statusId);
	}

	@Override
	public List<OrderMgmtBean> getItemsForOrderId(int orderId) {
		
		return tableDetailsDao.getItemsForOrderId(orderId);
	}
	
	

}
