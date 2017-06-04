class @Contents
  @menu_toggle_click: ->
    $('.navbar-toggle').click (e)->
      e.preventDefault()
      $('#up-navbar').css("margin-left", "0")
      $('.main').css("margin",0)
      $('#sidebar-wrapper').css("width",0)

  hide = ->
    hide = true
