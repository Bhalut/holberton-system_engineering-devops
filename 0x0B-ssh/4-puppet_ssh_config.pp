# To make changes to our configuration file
augeas { 'change-sshd':
    context => '/etc/ssh/ssh_config',
    changes => [
        'set PasswordAuthentication no',
        'set IdentityFile ~/.ssh/holberton',
        'set Port 22',
        'set SendEnv LANG LC_*',
        'set HashKnownHosts yes',
        'set GSSAPIAuthentication yes',
    ],
}