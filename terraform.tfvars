# terraform.tfvars

region               = "us-east-1"
vpc_cidr             = "10.0.0.0/16"
public_subnet_cidr   = "10.0.1.0/24"
private_subnet_cidr  = "10.0.2.0/24"
availability_zone    = "us-east-1a"
vpc_name             = "my-custom-vpc"
public_subnet_name   = "my-public-subnet"
private_subnet_name  = "my-private-subnet"
public_route_table   = "my-public-rt"
private_route_table  = "my-private-rt"
internet_gateway     = "my-igw"
aws_eip_name         = "my_eip"
aws_nat_gateway_name  ="my-nat-gtw"