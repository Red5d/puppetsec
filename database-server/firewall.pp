firewall { "000 accept all icmp requests":
  proto => "icmp",
  action => "accept",
}

firewall { "100 accept ssh":
  proto => "tcp",
  dport => "22",
  action => "accept",
}

firewall { "100 accept db connection":
  proto => "tcp",
  dport => "3306",
  action => "accept",
}

firewall { "999 drop all other requests":
  action => "drop",
}
