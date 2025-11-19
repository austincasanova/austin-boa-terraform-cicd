# security group definition. do not add rules in the same file
resource "aws_security_group" "austin-security-groups" {
  name        = "allow_rules"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = data.aws_vpc.austin-vpc.id

  tags = {
    Name = "austin_firewall_rules"
  }
}

# allow all outgoing ports for ipv4
resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.austin-security-groups.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

# allow port 22 from everywhere

resource "aws_vpc_security_group_ingress_rule" "allow_inbound_22_ipv4" {
  security_group_id = aws_security_group.austin-security-groups.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}


# allow port 80 from everywhere

resource "aws_vpc_security_group_ingress_rule" "allow_inbound_80_ipv4" {
  security_group_id = aws_security_group.austin-security-groups.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}