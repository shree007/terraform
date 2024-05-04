resource "aws_security_group" "learning_security_group" {
  name = "learning-security-group"
  vpc_id = data.aws_vpcs.query_vpcs.ids[0]
  tags = merge(var.tags, local.additional_tags)
  dynamic "ingress" {
    for_each = var.ingress_rules 
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
