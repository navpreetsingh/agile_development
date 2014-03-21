// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery.ui.effect-blind
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
	var url = window.location.pathname;
	if (url.search("orders") >= 1){
		$("#checkout").attr("disabled", "disabled");
	}
	else {
		$("#checkout").removeAttr("disabled");
	}

	$("#order_ship_date").datepicker({
		dateFormat: "yy-mm-dd",
		beforeShow: function(input, inst){
			setTimeout(function(){
				var pos = $("#order_ship_date").offset();
				inst.dpDiv.css({					
					top: pos.top + 20,
					left: pos.left + 100
				})
			})
		}
	});
	
	

});