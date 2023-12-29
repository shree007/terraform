resource "aws_instance" "server" {
	ami = "ami-0a24e6e101933d294"
	instance_type = "t3a.nano"
	tags = {
	Name = "Server"
	}
	provisioner "local-exec" {
		command = "echo The server's IP address is  ${self.private_ip}"
	}
}


