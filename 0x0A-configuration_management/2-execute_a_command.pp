# create a manifest that kills a process named killmenow.
exec { 'killmenow':
    command => 'pkill -9 killmenow',
    path    => '/usr/bin',
}
