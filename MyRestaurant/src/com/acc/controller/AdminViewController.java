package com.acc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acc.bean.ItemsBean;
import com.acc.bean.OrderBean;
import com.acc.bean.OrderMgmtBean;
import com.acc.bean.TablesBean;
import com.acc.delegate.AdminViewDelegate;

@Controller
public class AdminViewController {

	final static Logger logger = Logger.getLogger(AdminViewController.class);

	private AdminViewDelegate adminViewDelegate;

	public void setAdminViewDelegate(AdminViewDelegate adminViewDelegate) {
		this.adminViewDelegate = adminViewDelegate;
	}

	@RequestMapping(value = "/getTableDetails.do", method = RequestMethod.POST)
	public @ResponseBody List<TablesBean> getTableDetails(HttpServletRequest request, HttpServletResponse response) {
		logger.debug("Into the controller getTableDetails");

		/*
		 * HttpSession session = request.getSession(false); List<String> roles =
		 * (List<String>) session.getAttribute("roles");
		 * System.out.println("GET TABLE DETAILS" + roles.toString());
		 */

		return adminViewDelegate.getTableDetails();
	}

	@RequestMapping(value = "/saveNewCategoryDetails.do", method = RequestMethod.POST)
	public @ResponseBody boolean saveNewCategoryDetails(@RequestBody OrderMgmtBean orderMgmtBean,
			HttpServletRequest request, HttpServletResponse response) {
		logger.debug("Into the controller saveNewCategoryDetails-->" + orderMgmtBean.getCategoryName());
		return adminViewDelegate.saveCategoryDetails(orderMgmtBean);
	}

	@RequestMapping(value = "/saveNewItemDetails.do", method = RequestMethod.POST)
	public @ResponseBody boolean saveNewItemDetails(@RequestBody OrderMgmtBean orderMgmtBean,
			HttpServletRequest request, HttpServletResponse response) {
		logger.debug("Into the controller saveNewItemDetails-->" + orderMgmtBean.getItemName());
		return adminViewDelegate.saveItemDetails(orderMgmtBean);
	}

	@RequestMapping(value = "/items.do", method = RequestMethod.GET)
	public @ResponseBody List<ItemsBean> getItems(HttpServletRequest request, HttpServletResponse response) {
		return adminViewDelegate.getItems();
	}
	
	@RequestMapping(value = "/placeOrder.do", method = RequestMethod.POST)
	public @ResponseBody int placeOrder(@RequestBody OrderBean orderBean,
			HttpServletRequest request, HttpServletResponse response) {
		//logger.debug("Into the controller saveNewCategoryDetails-->" + orderMgmtBean.getCategoryName());
		return adminViewDelegate.placeOrder(orderBean);
	}
	
	@RequestMapping(value = "/updatePaymentType.do", method = RequestMethod.POST)
	public @ResponseBody boolean updatePaymentType(@RequestBody OrderBean orderBean,
			HttpServletRequest request, HttpServletResponse response) {
		//logger.debug("Into the controller saveNewCategoryDetails-->" + orderMgmtBean.getCategoryName());
		return adminViewDelegate.updatePaymentType(orderBean);
		
		
	}
	
	@RequestMapping(value = "/getItemsForOrderId.do", method = RequestMethod.POST)
	public @ResponseBody List<OrderMgmtBean> getItemsForOrderId(@RequestBody int orderId,
			HttpServletRequest request, HttpServletResponse response) {
		//logger.debug("Into the controller saveNewCategoryDetails-->" + orderMgmtBean.getCategoryName());
		return adminViewDelegate.getItemsForOrderId(orderId);
		
		
	}

}
