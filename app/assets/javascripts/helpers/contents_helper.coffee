class @Contents
  @menu_toggle_click: ->
    $('.navbar-toggle').click (e)->
      $item = $('body')
      e.preventDefault()
      $item.toggleClass 'collapse-sidebar'

      if $item.hasClass 'collapse-sidebar'  
        localStorage.setItem 'cllps', 'collapse-sidebar'
      else
        localStorage.removeItem 'cllps'
  
  @menu_toggle_on_load: ->
    if typeof localStorage == 'undefined'
      console.log 'Your browser does not support HTML5 localStorage. Try upgrading.'
    else
      if localStorage['cllps'] == 'collapse-sidebar'
        $('body').addClass 'collapse-sidebar'
      return
