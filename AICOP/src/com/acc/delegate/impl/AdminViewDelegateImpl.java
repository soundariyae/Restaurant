package com.acc.delegate.impl;

import java.util.List;

import org.apache.log4j.Logger;

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

}
