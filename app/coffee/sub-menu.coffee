subMenu = require 'jade/sub-menu'

module.exports = class SubMenu

  constructor: ($el, @config) ->
    @build $el

  build : ($el) ->
    console.log "building sub menu"
    @$node = $ subMenu( @config )
    $el.append @$node
    $("#logout").on 'click', (e)=>
      console.log "Logging out..."
      $.ajax
        type     : "DELETE",
        url      :  @config.logoutPath
        success  : ()=> window.location = @config.loginPath
        error    : ()=> alert "Logout failed, try again"

  destroy : () ->
    @$node.remove()
