case $operatingsystem {
  centos, redhat: { $apache = "httpd" }
  debian, ubuntu: { $apache = "apache2" }
  default: { fail("Unknown operating system.")
}

package { 'apache':
  name => $apache,
  ensure => installed,
}

service { 'apache':
  name => $apache,
  ensure => running,
}
