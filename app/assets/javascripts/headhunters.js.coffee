# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$('#headhunters').imagesLoaded ->
		$('#headhunters').masonry
			itemSelector: '.box'
			isFitWidth: true

$(document).on "click", ".recruiterBio", ->
	myRecruiterID = $(this).data('id')
	$('.modal-body #recruiterID').val myRecruiterID
	return