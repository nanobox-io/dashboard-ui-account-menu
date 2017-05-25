config =
  user:
    username    : 'j_appleseed'
    email       : 'mark@delorum.com'
    logoutPath  : 'path/to/logout'
    adminPath   : 'path/to/admin/in/cur/context'
  teams : [
    {name:'fish_feather', path:'abcdefg1234567'}
    {name:'quatrote',     path:'abcdefg1234567'}
  ]
  newTeamPath : '/path/to/create/new/team'

app = new nanobox.AccountMenu $(".holder"), config
