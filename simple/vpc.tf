resource "aws_vpc" "main" {
  
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"

    tags = {
      Name  = "VPC TerraformCloud"
    }
}   

resource "aws_subnet" "private" {
    
    availability_zone = "us-east-1a"
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.1.0/24"

    tags = {
      Name = "Terraform Cloud Subnet"
    }

    
}