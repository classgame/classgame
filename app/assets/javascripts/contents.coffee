# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# $(document).ready ->
#	$.ajax({
#		type: "GET",
#		url:  "http://dev:3000/contents/management",
#		success: (data)->
#			data.each
#			$(".sidebar-nav").append("<li> <a href=\"#\">" + data[0].title + "</a> </li>")
#		dataType: 'JSON'
#	}); 


class @Contents
  @menu_handler_click: ->
    console.log($('.navbar-toggle'))
    $('.navbar-toggle').click (e)->
      e.preventDefault()
      $('#up-navbar').css("cssText", "margin-left: 0 !important")
      $('.main').css("margin",0)
      $('#sidebar-wrapper').css("width",0)

$(document).on 'turbolinks:load', ->
  Contents.menu_handler_click()
