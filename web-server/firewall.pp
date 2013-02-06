firewall { "000 accept all icmp requests":
  proto => "icmp",
  action => "accept",
}

firewall { "100 accept ssh":
  proto => "tcp",
  dport => "22",
  action => "accept",
}

firewall { "100 accept http":
  proto => "tcp",
  dport => "80",
  action => "accept",
}

firewall { "100 accept https":
  proto => "tcp",
  dport => "443",
  action => "accept",
}

firewall { "999 drop all other requests":
  action => "drop",
}
