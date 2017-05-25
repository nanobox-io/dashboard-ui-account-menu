config =
  user:
    username    : 'j_appleseed'
    email       : 'mark@delorum.com'
    logoutPath  : 'path/to/logout'
    adminPath   : 'path/to/admin/in/cur/context'
    appsPath    : 'path/to/admin/in/cur/context'
  teams : [
    {name:'fish_feather', appsPath:'abcdefg1234567', adminPath: 'path/to/admin/in/cur/context'}
    {name:'quatrote',     appsPath:'abcdefg1234567', adminPath: 'path/to/admin/in/cur/context'}
  ]
  newTeamPath : '/path/to/create/new/team'

app = new nanobox.AccountMenu $(".holder"), config
