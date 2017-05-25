base    = require 'jade/base'
SubMenu = require 'sub-menu'
class AccountMenu

  constructor: ($el, @config) ->
    @parseData()
    @build($el)

  build : ($el) ->
    @$node = $ base( @config )
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

  parseData : () ->
    # get user gravatar hash
    @config.gravatarHash = md5 @config.user.email
    @setTeamColors()
    @setCurrentContext()

  setCurrentContext : () ->
    @config.currentContext = @config.user
    for team in @config.teams
      if team.id == @config.contextId
        team.isTeam = true
        @config.currentContext = team

  setTeamColors : () ->
    # set team colors
    colors = ["#F07146", "#F046A1", "#00BACC", "#00A42E", "#F00000"]
    count  = 0
    for team in @config.teams
      team.color = @hexToRgb(colors[count++], 0.7)
      if count == colors.length then count = 0


  hexToRgb : (hex, alpha) ->
    result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex)
    return "rgba(#{parseInt(result[1], 16)}, #{parseInt(result[2], 16)}, #{parseInt(result[3], 16)}, #{alpha})"

window.nanobox ||= {}
nanobox.AccountMenu = AccountMenu
