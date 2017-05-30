config =
  user:
    username    : 'j_appleseed'
    email       : 'mark@delorum.com'
    adminPath   : 'path/to/user/admin/'
    appsPath    : 'path/to/user/apps/index/'
    id          : '1234'
  teams : [
    {name:'fish_feather', appsPath:'abcdefg1234567', adminPath: 'path/to/admin/in/cur/context', id:'4444'}
    {name:'quatrote',     appsPath:'abcdefg1234567', adminPath: 'path/to/admin/in/cur/context', id:'5555'}
  ]
  contextId   : '5555'
  logoutPath  : 'path/to/logout'
  loginPath   : 'path/to/login'
  newTeamPath : '/path/to/create/new/team'

app = new nanobox.AccountMenu $(".holder"), config
