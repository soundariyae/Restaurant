$(document)
	.ready(
		function () {
			$(".open-button").on(
				"click",
				function () {
					$(this).closest('.collapse-group').find(
						'.collapse').collapse('show');
				});

			$(".close-button").on(
				"click",
				function () {
					$(this).closest('.collapse-group').find(
						'.collapse').collapse('hide');
				});

			$('.aicop-collapse').on("click", function () {
				var eleId = "#" + $(this).attr('id');
				console.log("eleId-->" + eleId);
				if ($(this).hasClass("fa fa-plus-circle")) {

					$(eleId).removeClass("fa fa-plus-circle");
					$(eleId).addClass("fa fa-minus-circle");
				} else {
					$(eleId).removeClass("fa fa-minus-circle");
					$(eleId).addClass("fa fa-plus-circle");
				}
			})
			$('[data-toggle="tooltip"]').tooltip();

			// Dashboard Title
			$("#salesViewNav").on("click", function () {
				$("#dashBoardTitle a").text("Sales View");
			});

			$("#orderViewNav").on("click", function () {
				$("#dashBoardTitle a").text("Order Management");
			});
			/* 
						$('.menu').on('click',function() {
							console.log('clicked '+$(this));
							$(".menu").removeClass("active");
							$(this).addClass("active");
							$('.page-header#content').text($(this).attr('data-header'));
						}); */


			if (window.location.href.indexOf("salesView") > -1) {
				loadTableStatus();
				console.log("sales View");
				$("#orderHeader").hide();
				$("#userHeader").hide();
				$("#reportsHeader").hide();
				$("#settingsHeader").hide();

				$("#salesHeader").show();

				$("#orderViewNav").removeClass("active");
				$("#userViewNav").removeClass("active");
				$("#reportsViewNav").removeClass("active");
				$("#settingsViewNav").removeClass("active");

				$("#salesViewNav").addClass("active");
			}
			if (window.location.href.indexOf("orderView") > -1) {
				console.log("order View");
				$("#userHeader").hide();
				$("#reportsHeader").hide();
				$("#settingsHeader").hide();
				$("#salesHeader").hide();

				$("#orderHeader").show();

				$("#userViewNav").removeClass("active");
				$("#reportsViewNav").removeClass("active");
				$("#settingsViewNav").removeClass("active");
				$("#salesViewNav").removeClass("active");

				$("#orderViewNav").addClass("active");
			}

			if (window.location.href.indexOf("userView") > -1) {
				console.log("userView");
				$("#orderHeader").hide();
				$("#reportsHeader").hide();
				$("#settingsHeader").hide();
				$("#salesHeader").hide();
				$("#userHeader").show();

				$("#reportsViewNav").removeClass("active");
				$("#settingsViewNav").removeClass("active");
				$("#salesViewNav").removeClass("active");
				$("#orderViewNav").removeClass("active");

				$("#userViewNav").addClass("active");
			}
			if (window.location.href.indexOf("reportsView") > -1) {
				console.log("reports View");
				$("#orderHeader").hide();
				$("#userHeader").hide();
				$("#settingsHeader").hide();
				$("#salesHeader").hide();

				$("#reportsHeader").show();

				$("#orderViewNav").removeClass("active");
				$("#settingsViewNav").removeClass("active");
				$("#salesViewNav").removeClass("active");
				$("#userViewNav").removeClass("active");

				$("#reportsViewNav").addClass("active");
			}

			if (window.location.href.indexOf("settingsView") > -1) {
				console.log("settings View");
				$("#orderHeader").hide();
				$("#userHeader").hide();
				$("#salesHeader").hide();
				$("#reportsHeader").hide();

				$("#settingsHeader").show();

				$("#orderViewNav").removeClass("active");
				$("#salesViewNav").removeClass("active");
				$("#reportsViewNav").removeClass("active");
				$("#userViewNav").removeClass("active");

				$("#settingsViewNav").addClass("active");
			}

			// loadTableStatus();
			function loadTableStatus() {

				$
					.ajax({
						url: "/MyRestaurant/getTableDetails.do",
						contentType: "application/json",
						type: "POST",
						success: function (data) {
							console.log("Success--> Length");
							console.log(data.length);
							var domString = "";
							$
								.each(
									data,
									function (key, value) {
										var tableHeight = value.capacity +
											"em";
										console
											.log("occupancy status-->" +
												value.occupancyStatus);
										if (value.occupancyStatus
											.trim() == "A") {
											console
												.log("if");
											domString += "<button id=\"" +
												value.tableId +
												"\" title=\"Available seats : " +
												value.availableSeat +
												"\" class=\"table-available\" type=\"submit\" style=\"width: 5em; height: " +
												tableHeight +
												";\">" +
												"<span style=\"font-size: 9px;\">" +
												value.tableName +
												"</span><span class=\"fa fa-users\"></span></button><br>";
										} else {
											console
												.log("else");
											domString += "<button id=\"" +
												value.tableId +
												"\" title=\"Available seats : " +
												value.availableSeat +
												"\" class=\"table-occupied\" type=\"submit\" style=\"width: 5em; height: " +
												tableHeight +
												";\">" +
												"<span style=\"font-size: 9px;\">" +
												value.tableName +
												"</span><span class=\"fa fa-users\"></span></button><br>";

										}
									});

							$('#tablesViewDiv').html(domString);

						},
						error: function () {
							console.log("error")
						}

					});
			}
			$('#addCategory').on('click', function () {
				$('#categoryTableDiv').hide();
				$('#addCategoryDiv').show();

			})
			$('#saveNewCategory')
				.on(
					'click',
					function () {
						$('#addCategoryDiv').hide();
						$('#loadingDiv').show();
						OrderMgmtBean = new Object();

						OrderMgmtBean.categoryName = $(
							'#newCategoryName').val();
						OrderMgmtBean.categoryDesc = $(
							'#newCategoryDesc').val();
						$
							.ajax({
								url: "/MyRestaurant/saveNewCategoryDetails.do",
								contentType: "application/json",
								type: "POST",
								data: JSON
									.stringify(OrderMgmtBean),
								success: function (data) {
									console
										.log("save success");

									location.reload();

								}

							})
					})

			$('#saveNewItem')
				.on(
					'click',
					function () {
						$('#addItemDiv').hide();
						$('#loadingItemDiv').show();
						OrderMgmtBean = new Object();

						OrderMgmtBean.itemName = $(
							'#newItemName').val();
						OrderMgmtBean.itemType = $(
							'#newItemType').val();
						OrderMgmtBean.itemDescription = $(
							'#newItemDesc').val();
						OrderMgmtBean.itemPrice = $(
							'#newItemPrice').val();
						OrderMgmtBean.availableQuantity = $(
							'#newItemAvailableQuan').val();
						OrderMgmtBean.itemTax = $('#newItemTax')
							.val();
						OrderMgmtBean.itemStatus = $(
							'#newItemStatus').val();
						OrderMgmtBean.categoryId = $(
							'#newItemCategoryId').val();
						$
							.ajax({
								url: "/MyRestaurant/saveNewItemDetails.do",
								contentType: "application/json",
								type: "POST",
								data: JSON
									.stringify(OrderMgmtBean),
								success: function (data) {
									console
										.log("save success");

									location.reload();

								}

							})
					})

			$('#addNewItem').on('click', function () {
				$('#itemTableDiv').hide();
				$('#addItemDiv').show();

			})
			$('#tablesViewDiv')
				.on(
					"click",
					"button",
					function () {
						console.log("table clicked");
						var tableId = $(this).attr("id");
						$('#tablesViewDiv').hide();
						$(menuView).show();
						console.log(tableId);

						/*$.ajax({
							url: "/MyRestaurant/getCategory.do",
							contentType: "application/json",
							type: "POST",
							success: function (data) {
								var count = 0;
								$
									.each(
										data,
										function (
											key,
											value) {
											var catId = value.categoryId;

											var domForCategory = "<div class=\"card-collapse\"><div class=\"card-header\" role=\"tab\" id=\"headingOne\">" +
												"<h5 class=\"mb-0\">" +
												"<a data-toggle=\"collapse\" href=\"#" +
												catId +
												"Collapse\" aria-expanded=\"false\" " +
												"aria-controls=\"collapseOne\" class=\"collapsed\"> " +
												value.categoryName +
												"" +
												" <i class=\"material-icons\">keyboard_arrow_down</i></a></h5></div>";
											var domForItemEmptySpace = "<div id=\"" +
												catId +
												"Collapse\" class=\"collapse\" role=\"tabpanel\" aria-labelledby=\"heading" +
												catId +
												"\" data-parent=\"#accordion\" style=\"\">" +
												"<div class=\"card-body\">" +
												"<div class=\"table-responsive table-sales\">" +
												"<table id=\"" +
												catId +
												"ItemTable\" class=\"table\">" +
												"</table></div></div></div></div>";

											var finalDOMObj = domForCategory +
												domForItemEmptySpace;

											$(
													'.dynamicCategory')
												.append(
													finalDOMObj);
											count = count + 1;
											if (count == data.length) {
												getItemsWithCategory;
											}
										})

							}

						})*/
						$.ajax({
							url: "/MyRestaurant/items.do",
							contentType: "application/json",
							type: "POST",
							success: function (data) {
								console.log("data length -->" + data.length);
								var categories = [];
								if (data) {
									data.forEach(element => {
										categories.push(element.category_name);
									});
									categories.push('pasta');
									categories = [...new Set(categories)];
									console.log("Available categories : " + categories);

									var dom = [];
									
									categories.forEach(category => {
										dom.push(createCategoryCard(category));
									});
									
									$('#menuView').html(`<div class="card-deck">${dom}</div>`);
									$('#menuView').show();
								}

							}
						});

						function capitalizeFirstLetter(string) {
							return string.charAt(0).toUpperCase() + string.slice(1).toLowerCase();
						}

						function createCategoryCard(category) {
							return `<div class="card" style="width: 18rem;">
							<img class="card-img-top" src="./resources/images/${category.toLowerCase()}-category.jpg" alt="Card image cap">
							<div class="card-body">
							  <p class="card-text">${capitalizeFirstLetter(category)}</p>
							</div>
						  </div>`;
						}



					})

			$('#menuView').on('click', '.categoryNode', function () {

				var categoryId = $(this).attr("id");
				$.ajax({
					url: "/MyRestaurant/getItemsForCategory.do",
					contentType: "application/json",
					type: "POST",
					data: JSON.stringify(categoryId),
					success: function (data) {

						console.log("save success");
						// TODO
						// Expand category to show its items

					}

				})
			})

			function getItemsWithCategory() {
				$
					.ajax({
						url: "/MyRestaurant/getItemsForCategory.do",
						contentType: "application/json",
						type: "POST",
						// data : JSON.stringify(categoryId),
						success: function (data) {
							console.log("save success");
							$
								.each(
									data,
									function (key, value) {
										var catId = value.categoryId;
										catId = "#" +
											catId +
											"ItemTable";
										var itemDOM = "<tr>" +
											"<td>" +
											value.itemName +
											"</td>" +
											"<td class=\"text-right\">&#8377 " +
											value.itemPrice +
											"</td>" +
											"<td class=\"text-right\">" +
											"<button id=\"" +
											value.itemId +
											"_AddBtn\" class=\"btn btn-success addItemBtn\">Add</button>" +
											"<span  class=\"" +
											value.itemId +
											"_PlusMinusSpan\" style=\"display:none;\"><i id=\"" +
											value.itemId +
											"_DecBtn\" class=\"material-icons decrementQuan\">remove_circle_outline</i><span id=\"" +
											value.itemId +
											"_currentCount\" class=\"currentCount\">1</span><i id=\"" +
											value.itemId +
											"_IncBtn\" class=\"material-icons incrementQuan\">add_circle_outline</i></span>" +
											"</td>" +
											"</tr>";
										$(catId).append(
											itemDOM);
									})

						}

					})
			}

			$('.addItemBtn').on('click', function () {
				$(this).hide();
				var elementId = $(this).attr('id');
				if (elementId.indexOf('_AddBtn') != -1) {
					console.log("Contains button");
					var itemIdArray = elementId.split('_AddBtn');
					var itemId = itemIdArray[0];
					var spanId = "#itemId" + "_PlusMinusSpan";
					$(spanId).show();

				}

			})

			$('.incrementQuan').on(
				'click',
				function () {
					console.log("increment clicked");
					var incrementId = $(this).attr('id');
					if (incrementId.indexOf('_IncBtn') != -1) {
						console.log("Contains button");
						var itemIDArray = incrementId
							.split('_IncBtn');
						var itemID = itemIDArray[0];
						var currentCountitemID = "#" + itemID +
							"_currentCount";
						var nowCountString = $(currentCountitemID)
							.text();
						var nowCount = parseInt(nowCountString);
						var newCount = nowCount + 1;

						$(currentCountitemID).html(newCount);
						console.log("current-->" + nowCountString +
							"after-->" + newCount);
					}

				})

			$('.decrementQuan').on(
				'click',
				function () {
					console.log("decrement clicked");
					var decrementId = $(this).attr('id');
					if (decrementId.indexOf('_DecBtn') != -1) {
						console.log("Contains button");
						var itemIDArray = decrementId
							.split('_DecBtn');
						var itemID = itemIDArray[0];
						var currentCountitemID = "#" + itemID +
							"_currentCount";
						var nowCountString = $(currentCountitemID)
							.text();
						var nowCount = parseInt(nowCountString);
						var newCount = nowCount - 1;
						if (newCount == 0) {
							var plusMinusSpanID = "#" + itemID +
								"_PlusMinusSpan";
							var addItemBtnID = "#" + itemID +
								"_AddBtn";
							$(plusMinusSpanID).hide();
							$(addItemBtnID).show();
						} else
							$(currentCountitemID).html(newCount);

						console.log("current-->" + nowCountString +
							"after-->" + newCount);
					}
				})

		});