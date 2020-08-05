# To make changes to our configuration file
package { 'openssh-server':
    ensure => 'present'
}

service { 'ssh':
    ensure  => running,
    require => [ Package['openssh-server'] ]
}

augeas { 'change-sshd':
    context => '/etc/ssh/ssh_config',
    changes => ['set Port 22', 'set PasswordAuthentication no', 'set IdentityFile ~/.ssh/holberton'],
    notify  => Service['ssh'],
    require => [ Package['openssh-server'] ]
}