// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  $('.showReservation').click(function(e){
    e.preventDefault();
		var url = ($(this).attr('href'));
		$.ajax({
		  url: url,
		  success: function(response){
		  	$('#show-reservation').html(response);
		  	$('#show-reservation').openModal();
		  }
		});
		return false;
  });

  $('.editReservation').click(function(e){
    e.preventDefault();
		var url = ($(this).attr('href'));
		$.ajax({
		  url: url,
		  success: function(response){
		  	$('#edit-reservation').html(response);
		  	$('#edit-reservation').openModal();
		  }
		});
		return false;
  });

  $('.makeNewReservation').click(function(e) {
		e.preventDefault();
		var url = ($(this).attr('href'));
		$.ajax({
		  url: url,
		  success: function(response){
		  	$('#make-new-reservation-view').html(response);
		  	$('#make-new-reservation-view').openModal();
		  }
		});
		return false;
	});

});
