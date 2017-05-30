subMenu = require 'jade/sub-menu'

module.exports = class SubMenu

  constructor: ($el, @config) ->
    @build $el

  build : ($el) ->
    @$node = $ subMenu( @config )
    $el.append @$node
    $("#logout").on 'click', (e)=>
      $.ajax
        type     : "DELETE",
        url      :  @config.logoutPath
        success  : ()=> console.log @config.loginPath
        error    : ()=> alert "Logout failed, try again"

  destroy : () ->
    @$node.remove()
