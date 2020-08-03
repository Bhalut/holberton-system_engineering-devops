file { '/tmp/holberton':
    path    => '/tmp/holberton',
    owner   => 'www-data',
    group   => 'www-data',
    content => 'I love Puppet',
    mode    => '0744',
}
