package com.acc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.acc.bean.OrderMgmtBean;
import com.acc.bean.UserBean;

import com.acc.delegate.LoginDelegate;
import com.acc.form.LoginForm;

@Controller
public class LoginController {
	final static Logger logger = Logger.getLogger(LoginController.class);

	@Autowired
	private HttpSession session;

	private LoginDelegate loginDelegate;

	public void setLoginDelegate(LoginDelegate loginDelegate) {
		this.loginDelegate = loginDelegate;
	}

	@RequestMapping(value = "/begin.do")
	public ModelAndView begin(HttpServletRequest request, HttpServletResponse response) {
		logger.debug("Begin do");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("begin");
		return mav;

	}

	@RequestMapping(value = "/authenticate.do", method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute("loginForm") LoginForm loginForm, HttpServletRequest request,
			HttpServletResponse response) {

		logger.debug("Into authenticate.do LoginController-->" + loginForm.getUserId());

		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession(true);

		if ((loginForm.getUserId() == null || loginForm.getUserId().length() < 5)
				&& (loginForm.getPassword() == null || loginForm.getPassword().length() <= 5)) {
			mav.addObject("errorMsg", "Enter username and password");
			mav.setViewName("begin");
			return mav;
		} else {

			UserBean userBean = new UserBean();
			userBean = loginDelegate.authenticateUser(loginForm.getUserId(), loginForm.getPassword());

			if (userBean.getUsername().matches(loginForm.getUserId())
					&& userBean.getPassword().matches(loginForm.getPassword())) {
				List<String> roles = loginDelegate.getRoles(userBean.getEmployee_id());
				session.setAttribute("roles", roles);
				System.out.println("Roles ::: " + roles.toString());
				session.setAttribute("username", userBean.getUsername());
				mav.addObject("result", "Authenticated Successfully");
				mav.setViewName("common/salesView.jsp");
			} else {
				mav.addObject("errorMsg", "Incorrect Username/Password");
				mav.setViewName("begin");
			}
			return mav;
		}
	}

	@RequestMapping(value = "/salesView.do")
	public ModelAndView salesView(HttpServletRequest request, HttpServletResponse response) {
		logger.debug("Load sales View");
		ModelAndView mav = new ModelAndView();

		HttpSession session = request.getSession(false);
		List<String> roles = (List<String>) session.getAttribute("roles");
		System.out.println(roles.toString());
		mav.setViewName("common/salesView.jsp");

		return mav;
	}

	@RequestMapping(value = "/orderView.do")
	public ModelAndView orderView(HttpServletRequest request, HttpServletResponse response) {
		logger.debug("Load order View");
		ModelAndView mav = new ModelAndView();
		List<OrderMgmtBean> categoryList = loginDelegate.getCategory();
		List<OrderMgmtBean> itemList = loginDelegate.getItems(0);
		mav.addObject("categoryList", categoryList);
		mav.addObject("itemList", itemList);
		mav.setViewName("common/orderView.jsp");

		return mav;
	}

	@RequestMapping(value = "/userView.do")
	public ModelAndView userView(HttpServletRequest request, HttpServletResponse response) {
		logger.debug("Load user View");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("common/userView.jsp");

		return mav;
	}

	@RequestMapping(value = "/reportsView.do")
	public ModelAndView reportsView(HttpServletRequest request, HttpServletResponse response) {
		logger.debug("Load reports View");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("common/reportsView.jsp");

		return mav;
	}

	@RequestMapping(value = "/settingsView.do")
	public ModelAndView settingsView(HttpServletRequest request, HttpServletResponse response) {
		logger.debug("Load settings View");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("common/settingsView.jsp");

		return mav;
	}
	
	

	@RequestMapping(value = "/getCategory.do", method = RequestMethod.POST)
	public @ResponseBody List<OrderMgmtBean> getCategory(HttpServletRequest request, HttpServletResponse response) {
		logger.debug("Into the controller getCategory-->");
		return loginDelegate.getCategory();
	}

	@RequestMapping(value = "/getItemsForCategory.do", method = RequestMethod.POST)
	public @ResponseBody List<OrderMgmtBean> getItemsForCategory(HttpServletRequest request,
			HttpServletResponse response) {
		logger.debug("Into the controller getItemsForCategory-->");
		// int categoryIdInt = Integer.parseInt(categoryId);
		return loginDelegate.getItems(0);
	}

}
