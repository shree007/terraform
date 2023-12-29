locals {
  subnet_ids = toset([
    "subnet-0120134abb50f0661",
    "subnet-0acd00461505127fd",
    "subnet-003a471408e2d5230",
    "subnet-005967632ae909c69",
  ])
}

resource "aws_instance" "server" {
  for_each      = local.subnet_ids
  ami           = "ami-0a24e6e101933d294"
  instance_type = "t3a.nano"
  subnet_id     = each.value

  tags = {
    Name = "Server-${each.value}"
  }
}
