$(document).ready(function(){
	
	
$('#emailContentArea').hide();
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
     //$("#pagesNav").toggle('nav-collapse');
     $("#orderViewNav").removeClass("active");
     $("#salesViewNav").addClass("active");
}



if(window.location.href.indexOf("orderView") > -1) 
{
	
	$("#salesHeader").hide();
     $("#orderHeader").show();
    // $("#pagesNav").toggle('nav-collapse');
     $("#salesViewNav").removeClass("active");
     $("#orderViewNav").addClass("active");
     
	      
    
}


/*$('.nav-link').on("click",function(){
	console.log("nav link clicked");
	$('.nav-link').removeClass("active");
	$('.nav-link').removeClass("show");
	$(this).addClass("active")
})*/


/*$(function() {
    $(document).on("click", '#CDRG', function() {
        alert("You have just clicked on ");
        
        document.getElementById("imgdisp").innerHTML="<img src='resources/images/BI_WL_CDRG.JPG' />";
        
    });
    $(document).on("click", '#OA', function() {
        alert("You have just clicked on ");
        
        document.getElementById("imgdisp").innerHTML="<img src='resources/images/BI_WL_OA.JPG' />";
        
    });
    $(document).on("click", '#PR', function() {
        alert("You have just clicked on ");
        
        document.getElementById("imgdisp").innerHTML="<img src='resources/images/BI_WL_PR.JPG' />";
        
    });
    $(document).on("click", '#BIP', function() {
        alert("You have just clicked on ");
        
        document.getElementById("imgdisp").innerHTML="<img src='resources/images/BI_WL_BIP.JPG' />";
        
    });
    $(document).on("click", '#BIF', function() {
        alert("You have just clicked on ");
        
        document.getElementById("imgdisp").innerHTML="<img src='resources/images/BI_WL_BIF.JPG' />";
        
    });
    
});
*/
});