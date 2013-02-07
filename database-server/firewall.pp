firewall { "000 accept all icmp requests":
  proto => "icmp",
  action => "accept",
}

firewall { "100 allow ssh out":
  proto => "tcp",
  dport => "22",
  action => "accept",
}

firewall { "100 accept ssh in:
  proto => "tcp",
  sport => "22",
  action => "accept",
}

firewall { "100 allow db connection out":
  proto => "tcp",
  dport => "3306",
  action => "accept",
}

firewall { "100 accept db connection in":
  proto => "tcp",
  sport => "3306",
  action => "accept",
}

firewall { "999 drop all other requests":
  action => "drop",
}
