jQuery(function($) {
	var newMinPrice, newMaxPrice, url, temp;
	var categoryMinPrice = 400;
	var categoryMaxPrice = 1000;
	function isNumber(n) {
	  return !isNaN(parseFloat(n)) && isFinite(n);
	}

	$(".priceTextBox").focus(function(){
		temp = $(this).val();
	});

	$(".priceTextBox").keyup(function(){
		var value = $(this).val();
		if(!isNumber(value)){
			$(this).val(temp);
		}
	});

	$(".priceTextBox").keypress(function(e){
		if(e.keyCode == 13){
			var value = $(this).val();
			if(value < categoryMinPrice || value > categoryMaxPrice){
				$(this).val(temp);
			}
			url = getUrl($("#minPrice").val(), $("#maxPrice").val());
			ajaxFilter(url);
		}
	});

	$(".priceTextBox").blur(function(){
		var value = $(this).val();
		if(value < categoryMinPrice || value > categoryMaxPrice){
			$(this).val(temp);
		}

	});

	$(".go").click(function(){
		url = getUrl($("#minPrice").val(), $("#maxPrice").val());
		ajaxFilter(url);
	});

	$( "#slider-range" ).slider({
		range: true,
		min: categoryMinPrice,
		max: categoryMaxPrice,
		values: [ 400, 1000 ],
		slide: function( event, ui ) {
			newMinPrice = ui.values[0];
			newMaxPrice = ui.values[1];

			$( "#amount" ).val( "$" + newMinPrice + " - $" + newMaxPrice );

			
			// Update TextBox Price
			$("#minPrice").val(newMinPrice); 
			$("#maxPrice").val(newMaxPrice);

		},stop: function( event, ui ) {

			// Current Min and Max Price
			var newMinPrice = ui.values[0];
			var newMaxPrice = ui.values[1];

			// Update Text Price
			$( "#amount" ).val( "$"+newMinPrice+" - $"+newMaxPrice );

			
			// Update TextBox Price
			$("#minPrice").val(newMinPrice); 
			$("#maxPrice").val(newMaxPrice);

			url = getUrl(newMinPrice,newMaxPrice);
			if(newMinPrice != 400 && newMaxPrice != 1000){
				clearTimeout(timer);
				//window.location= url;

			}else{
					timer = setTimeout(function(){
						ajaxFilter(url);
					}, 200);
				}
		}
	});

	function getUrl(newMinPrice, newMaxPrice){
		return "grid.html"+"?min="+newMinPrice+"&max="+newMaxPrice+"";
	}
});
