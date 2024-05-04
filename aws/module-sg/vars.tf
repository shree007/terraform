variable "ingress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default =[
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["49.207.200.62/32"]
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["49.207.200.62/32"]
    }
  ]
}


variable "tags" {
  type = map(string)
  default = {
    environment = "development"
    owner       = "shreeprakash"
    project     = "projectone"
  }
}
