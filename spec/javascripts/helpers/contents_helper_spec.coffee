#= require helpers/contents_helper.coffee
describe "ContentsHelper", ->
  beforeEach = ->
    loadFixtures "contents.html"

  it "should add class collapse-sidebar", ->
    element = $("body")
    window.localStorage['cllps'] = 'collapse-sidebar'
    Contents.menu_toggle_on_load()
    expect(element).toHaveClass("collapse-sidebar")

  it "Should not add anything", ->
    Contents.menu_toggle_on_load()
    element = $("body")
    element.removeClass('collapse-sidebar')
    window.localStorage.removeItem 'cllps'
    expect(element).not.toHaveClass("collapse-sidebar")
