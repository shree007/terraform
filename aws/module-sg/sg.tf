resource "aws_security_group" "learning_security_group" {
  name = "learning-security-group"
  vpc_id = data.aws_vpcs.query_vpcs.ids[0]
  tags = merge(var.tags, local.additional_tags)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["49.207.200.62/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
