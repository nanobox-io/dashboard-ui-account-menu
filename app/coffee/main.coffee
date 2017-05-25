base    = require 'jade/base'
SubMenu = require 'sub-menu'
class AccountMenu

  constructor: ($el, @config) ->
    @build($el)

  build : ($el) ->
    @$node = $ base( {} )
    $el.append @$node
    $("#profile-img").on 'click', (e)=>
      if @subMenu? then return
      @buildSubMenu()
      setTimeout @addDestroyListener, 50

  buildSubMenu : () ->
    @subMenu = new SubMenu @$node, @config

  destroySubMenu : () ->
    @subMenu.destroy()
    @subMenu = null

  addDestroyListener : () =>
    $(document).on 'click', ()=>
      $(document).off 'click'
      @destroySubMenu()

window.nanobox ||= {}
nanobox.AccountMenu = AccountMenu
