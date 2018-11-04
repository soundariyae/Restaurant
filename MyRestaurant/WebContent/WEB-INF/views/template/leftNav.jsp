

<!-- sidebar menu -->
<%@page import="java.util.List"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	List<String> roles = (List<String>) session.getAttribute("roles");
%>

<div class="sidebar" data-color="rose" data-background-color="black"
	style="background-image: url(resources/images/res2.jpg); background-size: cover; background-position: topcenter;">
	<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->

	<div class="logo">
		<a href="#" class="simple-text logo-mini fa fa-anchor"> </a> <a
			href="#" class="simple-text logo-normal"> PIZZATERIA </a>
	</div>

	<div class="sidebar-wrapper ps-container ps-theme-default ps-active-y"
		data-ps-id="07184ef6-8f54-ff74-946e-bc2f419b5876">

		<div class="user">
			<div class="photo">
				<img src="resources/images/aicop_logo_head.png">
			</div>
			<div class="user-info">
				<a data-toggle="collapse" href="#collapseExample" class="username">
					<span> Admin <b class="caret"></b>
				</span>
				</a>
				<div class="collapse" id="collapseExample">
					<ul class="nav">
						<li class="nav-item"><a class="nav-link" href="#"> <span
								class="sidebar-mini"> MP </span> <span class="sidebar-normal">
									My Profile </span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								class="sidebar-mini"> EP </span> <span class="sidebar-normal">
									Edit Profile </span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								class="sidebar-mini"> L </span> <span class="sidebar-normal">
									Logout </span>
						</a></li>
					</ul>
				</div>
			</div>
		</div>


		<ul class="nav">
			<li id="salesViewNav" class="nav-item active"
				style="line-height: 4.5em"><a class="nav-link"
				href="salesView.do"> <span class="sidebar-normal"> Sales
				</span>
			</a></li>

			<c:if test="${fn:contains(roles, 'admin')}">
				<li id="orderViewNav" class="nav-item " style="line-height: 4.5em">
					<a class="nav-link" href="orderView.do"> <span
						class="sidebar-normal"> Order Management </span>
				</a>
				</li>
			</c:if>
			
			<c:if test="${fn:contains(roles, 'admin')}">
				<li id="userViewNav" class="nav-item " style="line-height: 4.5em">
					<a class="nav-link" href="userView.do"> <span
						class="sidebar-normal"> User Management </span>
				</a>
				</li>
			</c:if>
			
			<c:if test="${fn:contains(roles, 'admin')}">
				<li id="reportsViewNav" class="nav-item " style="line-height: 4.5em">
					<a class="nav-link" href="reportsView.do"> <span
						class="sidebar-normal"> Reports </span>
				</a>
				</li>
			</c:if>




			<li id="settingsViewNav" class="nav-item " style="line-height: 4.5em">
				<a class="nav-link" href="settingsView.do"> <span
					class="sidebar-normal"> Settings </span>
			</a>
			</li>
		</ul>


		<div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
			<div class="ps-scrollbar-x" tabindex="0"
				style="left: 0px; width: 0px;"></div>
		</div>
		<div class="ps-scrollbar-y-rail"
			style="top: 0px; height: 843px; right: 0px;">
			<div class="ps-scrollbar-y" tabindex="0"
				style="top: 0px; height: 662px;"></div>
		</div>
	</div>
	<div class="sidebar-background"
		style="background-image: url(../../assets/img/sidebar-1.jpg)"></div>
</div>
<!-- /sidebar menu -->


<!-- /menu footer buttons -->
<!-- </div> -->
