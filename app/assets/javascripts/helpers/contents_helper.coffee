class @Contents
  @menu_toggle_click: ->
    $('.navbar-toggle').click (e)->
      e.preventDefault()
      if menu_toggled()
        set_not_toggled_elements()
      else
        set_toggled_elements()

  menu_toggled = ->
    $('#up-navbar').hasClass("zero-margin") and
    $('.main').hasClass("zero-margin") and
    $('#sidebar-wrapper').hasClass("zero-width")
    

  @menu_toggle_on_load: ->
    if menu_toggled_data()
      set_toggled_elements()
    else
      set_not_toggled_elements()

  menu_toggled_data = ->
    $('.navbar-toggle').data('status') == 1

  set_toggled_elements = ->
    $('#sidebar_toggle_status').val(1)
    $('#up-navbar').addClass("zero-margin")
    $('.main').addClass("zero-margin")
    $('#sidebar-wrapper').addClass("zero-width")

  set_not_toggled_elements = ->
    $('#sidebar_toggle_status').val(0)
    $('#up-navbar').removeClass("zero-margin")
    $('.main').removeClass("zero-margin")
    $('#sidebar-wrapper').removeClass("zero-width")
