subMenu = require 'jade/sub-menu'

module.exports = class SubMenu

  constructor: ($el, @config) ->
    @build $el

  build : ($el) ->
    @$node = $ subMenu( @config )
    $el.append @$node
    $("#logout").on 'click', (e)->
      $.ajax
        type : "DELETE",
        url  :  e.currentTarget.dataset.logout

  destroy : () ->
    @$node.remove()
