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

firewall { "100 allow http out":
  proto => "tcp",
  dport => "80",
  action => "accept",
}

firewall { "100 accept http in":
  proto => "tcp",
  sport => "80",
  action => "accept",
}

firewall { "100 allow https out":
  proto => "tcp",
  dport => "443",
  action => "accept",
}

firewall { "100 allow https in":
  proto => "tcp",
  sport => "443",
  action => "accept",
}

firewall { "999 drop all other requests":
  action => "drop",
}
