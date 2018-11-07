<!-- sidebar menu -->
<%@page import="java.util.List"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	List<String> roles = (List<String>) session.getAttribute("roles");
%>

<div class="sidebar" data-color="rose" data-background-color="black"
	style="background-image: url(resources/images/res2.jpg); background-size: cover; background-position: topcenter;">

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
						<li class="nav-item menu" data-header="My Profile"><a
							class="nav-link" href="#"> <span class="sidebar-mini">
									MP </span> <span class="sidebar-normal"> My Profile </span>
						</a></li>
						<li class="nav-item menu" data-header="Edit Profile"><a
							class="nav-link" href="#"> <span class="sidebar-mini">
									EP </span> <span class="sidebar-normal"> Edit Profile </span>
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
			<li id="salesViewNav" class="nav-item menu active"
				style="line-height: 4.5em" data-header="Sales"><a
				class="nav-link" href="salesView.do"> <span
					class="sidebar-normal"> Sales </span>
			</a></li>

			<c:if test="${fn:contains(roles, 'admin')}">
				<li id="orderViewNav" class="nav-item menu"
					style="line-height: 4.5em" data-header="Order Management"><a
					class="nav-link" href="orderView.do"> <span
						class="sidebar-normal"> Order Management </span>
				</a></li>
			</c:if>

			<c:if test="${fn:contains(roles, 'admin')}">
				<li id="userViewNav" class="nav-item menu"
					style="line-height: 4.5em" data-header="User Management"><a
					class="nav-link" href="userView.do"> <span
						class="sidebar-normal"> User Management </span>
				</a></li>
			</c:if>

			<c:if test="${fn:contains(roles, 'admin')}">
				<li id="reportsViewNav" class="nav-item menu"
					style="line-height: 4.5em" data-header="Reports"><a
					class="nav-link" href="reportsView.do"> <span
						class="sidebar-normal"> Reports </span>
				</a></li>
			</c:if>
			<li id="settingsViewNav" class="nav-item menu"
				style="line-height: 4.5em" data-header="Settings"><a
				class="nav-link" href="settingsView.do"> <span
					class="sidebar-normal"> Settings </span>
			</a></li>
		</ul>


		<!-- 	<div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
			<div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div>
		</div>
		<div class="ps-scrollbar-y-rail" style="top: 0px; height: 843px; right: 0px;">
			<div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 662px;"></div>
		</div> -->
	</div>
	<div class="sidebar-background"
		style="background-image: url(../../assets/img/sidebar-1.jpg)"></div>

	<!-- <script>
		$('.menu').on('click', function () {
			console.log('clicked ' + $(this));
			$(".menu").removeClass("active");
			$(this).addClass("active");
			$('.page-header#content').text($(this).attr('data-header'));
		});
	</script> -->
</div>