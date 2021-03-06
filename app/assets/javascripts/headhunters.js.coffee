# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$('#headhunters').imagesLoaded ->
		$('#headhunters').masonry
			itemSelector: '.box'
			isFitWidth: true

$(document).on "click", ".recruiterBio", ->
	myRecruiterDesc = $(this).data('description')
	$('.modal-body #recruiterDesc').html myRecruiterDesc
	myRecruiterName = $(this).data('name')
	$('.modal-header #recruiterName').html myRecruiterName
	return