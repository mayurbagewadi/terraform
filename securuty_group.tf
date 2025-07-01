resource "aws_security_group" "securitygroup" {
  name = "demo-security-group"
  description = "Allow SSH and HTTP traffic"
  vpc_id = module.vpc.vpc_id
  tags = {
    Name = "demo-security-group"
  }

  ingress  {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # allow SSH from anywhere
  }
  
  ingress  {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # allow SSH from anywhere
  }
  
  ingress  {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # allow HTTPS from anywhere
  }
  
  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # allow HTTP from anywhere
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1" # -1 means all protocols
    cidr_blocks = ["0.0.0.0/0"] # allow all outbound traffic
  }
}