# ix it and then automate it using Puppet (instead of using Bash as you were previously doing).
exec {'fix wordpress.':
  command => 'sed -i "s/phpp/php/" /var/www/html/wp-settings.php',
  path    => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
}
