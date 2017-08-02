$(function(){
	// function resizeWindow(){
	//    if($(window).width()<1100)
	//    {
	//    	console.log(11);
	//    	//$(".collapse").css("display","none");
	//    	$("#navBtn").css("display","block");
	   
//$("#example-navbar-collapse").css("display","none");
	   	//$("#navTop").removeClass("col-sm-3");
	   	//$(".navbar-header").width("83%");
	   //}
	//    else{
	//    	$("#navBtn").css("display","none");
	//    		//$(".navbar-toggle").css("display","none");
	//    }
	// }
 //    resizeWindow();
  
 	

	$(".nav li a").hover(function(){
		$(this).css({"backgroundColor":"red","color":"white"})
		
	
	},function() {
		if(!$(this).parent().hasClass("active"))
		{
			$(this).css({"backgroundColor":"#fff","color":"#666"});
		}
		
	});
	$(".nav li a").click(function(){
		$(this).css({"backgroundColor":"red","color":"white"})
		
	})

	$(".left-animation").mouseover(function(event){
		
		 $(this).stop().animate({"left":"-100%"},600)

	}).mouseout(function(event) {
		 $(this).stop().animate({"left":"0"},600);
		
		 
	});

})