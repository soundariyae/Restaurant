$(document)
	.ready(
		function () {
			//GLobal para
			var items = [];
			
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
							var domString = "";
							$
								.each(
									data,
									function (key, value) {
										var tableHeight = value.capacity +
											"em";
										
										if (value.occupancyStatus
											.trim() == "A") {
											
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

			$('#saveNewCategory').on('click', function () {
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

			$('#saveNewItem').on('click', function () {
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

			$('#tablesViewDiv').on("click", "button", function () {
				console.log("table clicked");
				var tableId = $(this).attr("id");
				$('#tablesViewDiv').hide();
				$(menuView).show();
				$('#cart').show();
				$('#tableNo').html("Table No :"+tableId);
				console.log("before call");

				showCategoryAndStatus();
				console.log("after call");
				//var items = [];
				
			})
			
				function showItems() {
					$('.single-category').hide();

					var category = $(this).data('category-id');
					var required = [];
					items.forEach(element => {
						if (element.category_id == category) {
							required.push(element);
						}
					})
					console.log(required);

					var dom = `<div class="col-lg-6 col-md-6"><a id="showCategory"><u>Back to Categories</u></a><br><input type="text" class="form-control" placeholder="Search..." id="search-criteria"/>`;
					required.forEach(element => {
						dom += createItemCard(element);
					})
						dom += `</div><div class="col-lg-6 col-md-12"></div>`;
					$('#menuView').html(dom);
					$('#menuView').show();
				}
			
				function createItemCard(item) {
					return `<div class="card search-card"  style="max-width: 20rem;">
							<img class="card-img-top" src="./resources/images/item.jpg" alt="Card image cap">
							<div class="card-body search-div">
							  <p class="card-text">${capitalizeFirstLetter(item.name)}</p>
							  <button id="${item.item_id}" class="btn btn-success add-item">Add</button>
							</div>
						  </div>`;
				}

				function capitalizeFirstLetter(string) {
					return string.charAt(0).toUpperCase() + string.slice(1).toLowerCase();
				}

				function createCategoryCard(category) {
					return `<div class="card single-category" id ='category-${category.category_id}' data-category-id='${category.category_id}' style="max-width: 20rem;">
									<img class="card-img-top" src="./resources/images/${category.category_name.toLowerCase()}-category.jpg" alt="Card image cap">
									<div class="card-body">
									  <p class="card-text">${capitalizeFirstLetter(category.category_name)}</p>
									</div>
								  </div>`;
				}
				
				function showCategoryAndStatus(){
				$.ajax({
					url: "/MyRestaurant/items.do",
					contentType: "application/json",
					type: "GET",
					success: function (data) {
						items = data;
						console.log("data length -->" + data.length);
						var categories = [];
						if (data) {
							data.forEach(element => {
								categories.push({
									category_id: element.category_id,
									category_name: element.category_name
								});
							});

							// Use Map (ES6) to retain only unique elements
							let map = new Map();
							for (element of categories) {
								map.set(element.category_id, element);
							}

							categories = [];
							map.forEach((value, key, map) => {
								categories.push(value);
							});

							console.log("Available categories : " + categories);

							var dom = "";

							categories.forEach((category, index) => {
								index = index + 1;
								dom += createCategoryCard(category);
								//create 4 cards per row
								if (index % 2 == 0) {
									console.log("%2")
									$('#menuView').append(`<div class="card-deck">${dom}</div>`);
									dom = "";
								}
								if (index == categories.length - 1) {
									console.log("last");
									$('#menuView').append(`<div class="card-deck">${dom}</div>`);
									dom = "";
								}
							});
							$('#menuView').show();
							const keys = Array.from(document.querySelectorAll('.single-category'));
							keys.forEach(key => key.addEventListener('click', showItems));
						}

					}
				});
			}
			$('#menuView').on('click','.add-item',function(){
				var itemId = $(this).attr("id");
				$(this).attr("disabled",true);
				//console.log("Add Item =>"+itemId)
				items.forEach(element => {
					if (element.item_id == itemId) {
						//console.log(element.name);
						
						$('#cartTable').append(`<tr id="${element.item_id}"><td id="${element.item_id}_name">${element.name}</td>
												<td><span id="${element.item_id}_currentCount">1</span> <i id="${element.item_id}_IncBtn" class="material-icons incrementQuan">add_circle_outline</i>
													<i id="${element.item_id}_DecBtn" class="material-icons decrementQuan">remove_circle_outline</i>
												</td>
												<td id="${element.item_id}_price">${element.price}</td>
												<td id="${element.item_id}_netPrice">${element.price}</td>
												</tr>`);
						calculateTotal();
					}
				})
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

			$("#cartTable").on("click",".incrementQuan",function(){
				
				var incrementId = $(this).attr('id');
				if (incrementId.indexOf('_IncBtn') != -1) {
					
					var itemIDArray = incrementId
						.split('_IncBtn');
					var itemID = itemIDArray[0];
					var priceId = "#" + itemID + "_price";
					var netPriceId = "#" + itemID + "_netPrice";
					var currentCountitemID = "#" + itemID + 
						"_currentCount";
					var nowCountString = $(currentCountitemID)
						.text();
					
					var nowCount = parseInt(nowCountString);
					var newCount = nowCount + 1;
					$(currentCountitemID).text(newCount);
					
					//Calculate net Price
					var price = parseInt($(priceId).text());
					var netPrice = newCount * price;
					$(netPriceId).html(netPrice);
					calculateTotal();
				}

			})

			$("#cartTable").on("click",".decrementQuan",function(){
			
				var decrementId = $(this).attr('id');
				if (decrementId.indexOf('_DecBtn') != -1) {
					//console.log("Contains button");
					var itemIDArray = decrementId
						.split('_DecBtn');
					var itemID = itemIDArray[0];
					var priceId = "#" + itemID + "_price";
					var netPriceId = "#" + itemID + "_netPrice";
					var currentCountitemID = "#" + itemID +
						"_currentCount";
					var nowCountString = $(currentCountitemID)
						.text();
					var nowCount = parseInt(nowCountString);
					var newCount = nowCount - 1;
					if (newCount == -1) {
						newCount = 0;
						$(currentCountitemID).html(newCount);
					} else
						$(currentCountitemID).html(newCount);

					//Calculate net Price
					var price = parseInt($(priceId).text());
					var netPrice = newCount * price;
					$(netPriceId).html(netPrice);
					calculateTotal();
				}
			})
			$('#menuView').on("click","#showCategory",function(){
				$('#menuView').html("");
				showCategoryAndStatus();
			})
			function calculateTotal(){
				var total = 0;
				var $tblrows = $("#cartTable tbody tr");
				$tblrows.each(function (index) {
				    var eachPrice = $(this).find('td:last-child').text();
				    //console.log("eachPrice-->"+eachPrice);
				    var nowPrice = parseInt(eachPrice);
				    total +=  nowPrice;
				    
				});
				//var lastColumn = $("#cartTable").find('td:last-child').text();
				//console.log("TOTAL ==> "+total);
				$('#totalPrice').text(total);
			}
			$('#menuView').on("keyup","#search-criteria", function() {
				console.log("key up");
			    var g = $(this).val().toLowerCase();
			    $(".search-card .search-div p").each(function() {
			        var s = $(this).text().toLowerCase();
			        $(this).closest('.search-card')[ s.indexOf(g) !== -1 ? 'show' : 'hide' ]();
			    });
			});
			
			$('#placeOrderBtn').on('click',function(){
				$('#payments').show();
			})
			$('#submitOrder').on('click',function(){
				var tableIdStr = $('#tableNo').text();
				var tableNo = parseInt(tableIdStr);
				var OrderBean = new Object();
				OrderBean.tableId = tableNo;
				
				
				
				var data = [];
				var itemList = [];
				$('#cartTable tbody').find('tr').each(function (rowIndex, r) {
					console.log("row id ==>"+r.id);
					var itemId= r.id;
					var itemNameId = "#"+itemId+"_name";
					var itemQuanId = "#"+itemId+"_currentCount";
					var itemPriceId = "#"+itemId+"_price";
					var OrderMgmtBean = new Object();
					OrderMgmtBean.itemId = r.id;
					OrderMgmtBean.itemName =  $(itemNameId).text();
					OrderMgmtBean.itemQuantity = parseInt($(itemQuanId).text());
					OrderMgmtBean.itemPrice = parseInt($(itemPriceId).text());
					itemList.push(OrderMgmtBean);
			       /* $(this).find('td').each(function (colIndex, c) {
			        	console.log(c.id+"---"+c.textContent);
			            cols.push(c.textContent);
			        });*/
			       // data.push(cols);
			    });
				OrderBean.orderMgmtBeanList = itemList;
				OrderBean.totalAmount = parseInt($('#totalPrice').text());
				console.log("Bean Length-->"+OrderBean.orderMgmtBeanList.length);
				$.ajax({
					url: "/MyRestaurant/placeOrder.do",
					contentType: "application/json",
					type: "POST",
					data: JSON.stringify(OrderBean),
					success: function (data) {

						console.log("save success");
						// TODO
						// Expand category to show its items

					}

				})
				
			})
		});