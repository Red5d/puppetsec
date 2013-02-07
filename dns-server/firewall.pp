firewall { "000 accept all icmp requests":
  proto => "icmp",
  action => "accept",
}

firewall { "100 allow ssh out":
  proto => "tcp",
  dport => "22",
  action => "accept",
}

firewall { "100 accept ssh in":
  proto => "tcp",
  sport => "22",
  action => "accept",
}

firewall { "100 accept dns out":
  proto => "all",
  dport => "53",
  action => "accept",
}

firewall { "100 accept dns in":
  proto => "all",
  sport => "53",
  action => "accept",
}

firewall { "999 drop all other requests":
  action => "drop",
}
