# create a manifest that kills a process named killmenow.
exec { 'killmenow':
    path     => '/usr/bin/env',
    command  => 'pkill killmenow',
    provider => 'shell',
}
