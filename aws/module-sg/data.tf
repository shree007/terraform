data "aws_vpcs" "query_vpcs" {
  filter {
    name   = "tag:Name"
    values = ["aws-us-west-2-d01-vpc"]
  }

}