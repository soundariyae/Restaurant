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
	
     $("#salesHeader").show();
     $("#orderViewNav").removeClass("active");
     $("#salesViewNav").addClass("active");
}
if(window.location.href.indexOf("orderView") > -1) 
{
	
	$("#salesHeader").hide();
     $("#orderHeader").show();
     $("#salesViewNav").removeClass("active");
     $("#orderViewNav").addClass("active");    
}

$.ajax({
	url : "/AICOP/getTableDetails.do",
	contentType : "application/json",
	type : "POST",
	
	//data : JSON.stringify(notesVal),
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

});