//Place all the behaviors and hooks related to the matching controller here.
//All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
	$('.addRestaurant').click(function(e) {
		e.preventDefault();
		var url = ($(this).attr('href'));
		$.ajax({
		  url: url,
		  success: function(response){
		  	$('#add-modal').html(response);
		  	$('#add-modal').openModal();
		  }
		});
		return false;
	});

	$('.editRestaurant').click(function(e) {
		e.preventDefault();
		var url = ($(this).attr('href'));
		$.ajax({
		  url: url,
		  success: function(response){
		  	$('#edit-modal').html(response);
		  	$('#edit-modal').openModal();
		  }
		});
		return false;
	});

	$('.detailRestaurant').click(function(e) {
		e.preventDefault();
		var url = ($(this).attr('href'));
		$.ajax({
		  url: url,
		  success: function(response){
		  	$('#detail-view').html(response);
		  	$('#detail-view').openModal();
		  }
		});
		//return false;
	});
});




