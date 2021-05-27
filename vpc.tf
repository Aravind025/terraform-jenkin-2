resource "aws_vpc" "demo" {
  tags = {
    Name = "demo-vpc"
  }
}
