firewall { "000 accept all icmp requests":
  proto => "icmp",
  action => "accept",
}

firewall { "100 accept ssh":
  proto => "tcp",
  dport => "22",
  action => "accept",
}

firewall { "100 accept dns tcp":
  proto => "tcp",
  dport => "53",
  action => "accept",
}

firewall { "100 accept dns udp":
  proto => "udp",
  dport => "53",
  action => "accept",
}

firewall { "999 drop all other requests":
  action => "drop",
}
