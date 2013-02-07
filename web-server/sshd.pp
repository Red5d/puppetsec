package { 'openssh-server':
  ensure => installed,
}

service { 'sshd':
  ensure => running,
  enable => true,
  subscribe => File['/etc/ssh/sshd_config'],
}
