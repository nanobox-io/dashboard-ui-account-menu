subMenu = require 'jade/sub-menu'

module.exports = class SubMenu

  constructor: ($el, @config) ->
    @build $el

  build : ($el) ->
    @$node = $ subMenu( @config )
    $el.append @$node

  destroy : () ->
    @$node.remove()
