$(document).ready(function(){
	$("#trip").hide();
	$("#i").click(function(){
		$(".Alltrips").animate({
			left:"-400px"
		},500, function(){
			$("#trips").show();
		})
	});
	$("#trip").click(function(){
		$("#trip").hide();
		$("#tripWrapper").animate({			
			left:"0px"
		},500);
	});
	
	
	$("#trips").click(function(){
		$("#trips").hide();
		$(".Alltrips").animate({			
			left:"0px"
		},500);
	});
	
	$("#i").click(function(){
		$("#tripWrapper").animate({
			left:"-400px"
		},500, function(){
			$("#trip").show();
		})
	});
	$("#create").click(function(){
		$("#createpin").animate({
			left:'-400px'
		},500 );
	});
	$("#PinClose").click(function(){
		$("#createpin").animate({
			left:'-400px'
		},500 );
	});

	$("#AddPin").click(function(){
		$("#createpin").animate({
			left:'0px'
		},500 );
	});
	
	setTimeout(function(){
        $(".alert").fadeOut('slow', function(){
            $(this).remove()
        })
    },2000);

});