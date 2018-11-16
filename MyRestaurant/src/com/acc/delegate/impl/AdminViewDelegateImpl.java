package com.acc.delegate.impl;

import java.util.List;

import org.apache.log4j.Logger;

import com.acc.bean.ItemsBean;
import com.acc.bean.OrderBean;
import com.acc.bean.OrderMgmtBean;
import com.acc.bean.PaymentBean;
import com.acc.bean.TablesBean;

import com.acc.delegate.AdminViewDelegate;
import com.acc.service.TableDetailsService;

public class AdminViewDelegateImpl implements  AdminViewDelegate{

	final static Logger logger = Logger.getLogger(AdminViewDelegateImpl.class);
	
	private TableDetailsService tableDetailsService;
		
	public void setTableDetailsService(TableDetailsService tableDetailsService) {
		this.tableDetailsService = tableDetailsService;
	}



	@Override
	public List<TablesBean> getTableDetails() {
		logger.debug("Get table details delegate");
		return tableDetailsService.getTableDetails();
	}



	@Override
	public boolean saveCategoryDetails(OrderMgmtBean orderMgmtBean) {
		
		return tableDetailsService.saveCategoryDetails(orderMgmtBean);
	}



	@Override
	public boolean saveItemDetails(OrderMgmtBean orderMgmtBean) {
		
		return tableDetailsService.saveItemDetails(orderMgmtBean);
	}

	@Override
	public List<ItemsBean> getItems() {
		return tableDetailsService.getItems();
	}



	@Override
	public int placeOrder(OrderBean orderBean) {
		// TODO Auto-generated method stub
		return tableDetailsService.placeOrder(orderBean);
	}



	@Override
	public boolean updatePaymentType(OrderBean orderBean) {
		// TODO Auto-generated method stub
		return tableDetailsService.updatePaymentType(orderBean);
	}



	@Override
	public List<OrderMgmtBean> getItemsForOrderId(int orderId) {
		// TODO Auto-generated method stub
		return tableDetailsService.getItemsForOrderId(orderId);
	}



	
}
