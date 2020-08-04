# create a manifest that kills a process named killmenow.
exec { 'killmenow':
    path     => '/usr/bin/env',
    command  => 'pkill -9 killmenow',
    provider => 'shell',
}
