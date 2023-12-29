resource "aws_instance" "server" {
	count = 4 
	ami = "ami-0a24e6e101933d294"
	instance_type = "t3a.nano"
	tags = {
	Name = "Server-${count.index}"
	}
}


