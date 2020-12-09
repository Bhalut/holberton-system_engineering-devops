# client SSH configuration file so that you can connect to a server without typing a password.
file_line { 'private key':
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/holberton',
  ensure => 'absent',
}

file_line { 'efuse to authenticate':
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
  ensure => 'absent',
}
