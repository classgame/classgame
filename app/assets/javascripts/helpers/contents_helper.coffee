class @Contents
  @menu_handler_click: ->
    console.log($('.navbar-toggle'))
    $('.navbar-toggle').click (e)->
      e.preventDefault()
      $('#up-navbar').css("cssText", "margin-left: 0 !important")
      $('.main').css("margin",0)
      $('#sidebar-wrapper').css("width",0)
