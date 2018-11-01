$(document).ready(function(){
$(".open-button").on("click", function() {
  $(this).closest('.collapse-group').find('.collapse').collapse('show');
});

$(".close-button").on("click", function() {
  $(this).closest('.collapse-group').find('.collapse').collapse('hide');
});

$('.aicop-collapse').on("click",function(){
	var eleId = "#"+$(this).attr('id');
	console.log("eleId-->"+eleId);
	if($(this).hasClass("fa fa-plus-circle")){
		
		$(eleId).removeClass("fa fa-plus-circle");
		$(eleId).addClass("fa fa-minus-circle");
	}
	else{
		$(eleId).removeClass("fa fa-minus-circle");
		$(eleId).addClass("fa fa-plus-circle");
	}
})
    $('[data-toggle="tooltip"]').tooltip(); 
    
 
//Dashboard Title
$("#salesViewNav").on("click", function() {
	$("#dashBoardTitle a").text("Sales View");
	});

$("#orderViewNav").on("click", function() {
	$("#dashBoardTitle a").text("Order Management");
	});

if(window.location.href.indexOf("salesView") > -1) 
{
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
if(window.location.href.indexOf("orderView") > -1) 
{
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

if(window.location.href.indexOf("userView") > -1) 
{
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
if(window.location.href.indexOf("reportsView") > -1) 
{
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

if(window.location.href.indexOf("settingsView") > -1) 
{
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

//loadTableStatus();
function loadTableStatus(){

	$.ajax({
		url : "/MyRestaurant/getTableDetails.do",
		contentType : "application/json",
		type : "POST",
		success : function(data){
				console.log("Success--> Length");
				console.log(data.length);
				var domString ="";
				$.each(data,function(key,value){
					var tableHeight =value.capacity+"em";
					console.log("occupancy status-->"+value.occupancyStatus);
					if(value.occupancyStatus.trim()=="A"){
						console.log("if");
				domString += "<button title=\"Available seats : "+value.availableSeat+"\" class=\"table-available\" type=\"submit\" style=\"width: 5em; height: "+tableHeight+";\">" +
						"<span style=\"font-size: 9px;\">"+value.tableName+"</span><span class=\"fa fa-users\"></span></button><br>";
					}
					
					else{
						console.log("else");
						domString += "<button title=\"Available seats : "+value.availableSeat+"\" class=\"table-occupied\" type=\"submit\" style=\"width: 5em; height: "+tableHeight+";\">" +
						"<span style=\"font-size: 9px;\">"+value.tableName+"</span><span class=\"fa fa-users\"></span></button><br>";
						
					}
				});
				
				$('#tablesViewTab').html(domString);
				
			},
			error : function(){
				console.log("error")
			}
		
	});
	}
$('#addCategory').on('click',function(){
	$('#categoryTableDiv').hide();
	$('#addCategoryDiv').show();
	
})
$('#saveNewCategory').on('click',function(){
	$('#addCategoryDiv').hide();
	$('#loadingDiv').show();
	OrderMgmtBean = new Object();
	
	OrderMgmtBean.categoryName = $('#newCategoryName').val();
	OrderMgmtBean.categoryDesc = $('#newCategoryDesc').val();
	$.ajax({
		url : "/MyRestaurant/saveNewCategoryDetails.do",
		contentType : "application/json",
		type : "POST",
		data : JSON.stringify(OrderMgmtBean),
		success : function(data){
			console.log("save success");
			
			
			location.reload(); 

		}
	
	
	})
})

$('#saveNewItem').on('click',function(){
	$('#addItemDiv').hide();
	$('#loadingItemDiv').show();
	OrderMgmtBean = new Object();
	
	OrderMgmtBean.itemName = $('#newItemName').val();
	OrderMgmtBean.itemType = $('#newItemType').val();
	OrderMgmtBean.itemDescription = $('#newItemDesc').val();
	OrderMgmtBean.itemPrice = $('#newItemPrice').val();
	OrderMgmtBean.availableQuantity = $('#newItemAvailableQuan').val();
	OrderMgmtBean.itemTax = $('#newItemTax').val();
	OrderMgmtBean.itemStatus = $('#newItemStatus').val();
	OrderMgmtBean.categoryId = $('#newItemCategoryId').val();
	$.ajax({
		url : "/MyRestaurant/saveNewItemDetails.do",
		contentType : "application/json",
		type : "POST",
		data : JSON.stringify(OrderMgmtBean),
		success : function(data){
			console.log("save success");
			
			
			location.reload(); 

		}
	
	
	})
})

$('#addNewItem').on('click',function(){
	$('#itemTableDiv').hide();
	$('#addItemDiv').show();
	
})

});
