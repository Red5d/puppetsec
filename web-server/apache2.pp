package { 'apache2':
  ensure => installed,
}

service { 'apache2':
  name      => httpd,
  ensure    => running,
  enable    => true,
}

