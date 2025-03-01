<<<<<<< HEAD


# variable "aws_access_key_id" {
#   description = "AWS Access Key ID"
#   type        = string
#   sensitive   = true
# }

# variable "aws_secret_access_key" {
#   description = "AWS Secret Access Key"
#   type        = string
#   sensitive   = true
# }

# variables.tf

# Define the region for the VPC

variable "region" {
  description = "The AWS region where the resources will be created"
  default     = ""
}

# VPC CIDR block
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = ""
}

# Public subnet CIDR block
variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = ""
}

# Private subnet CIDR block
variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  default     = ""
}

# Availability Zone for the subnets
variable "availability_zone" {
  description = "The availability zone where resources will be created"
  default     = ""
}

# VPC name
variable "vpc_name" {
  description = "The name of the VPC"
  default     = ""
}

# Public subnet name
variable "public_subnet_name" {
  description = "The name of the public subnet"
  default     = "my-public-subnet"
}

# Private subnet name
variable "private_subnet_name" {
  description = "The name of the private subnet"
  default     = ""
}


variable "public_route_table" {
  description = "The name of public_route_table"
  default     = ""
}

variable "internet_gateway" {
  description = "The name of internet_gatewaye"
  default     = ""
}

variable "private_route_table" {
  description = "The name of private_route_table"
  default     = ""
}
variable "aws_eip_name"{
  default =""
}
variable "aws_nat_gateway_name"{
 default=""
}
=======


# variable "aws_access_key_id" {
#   description = "AWS Access Key ID"
#   type        = string
#   sensitive   = true
# }

# variable "aws_secret_access_key" {
#   description = "AWS Secret Access Key"
#   type        = string
#   sensitive   = true
# }

# variables.tf

# Define the region for the VPC

variable "region" {
  description = "The AWS region where the resources will be created"
  default     = ""
}

# VPC CIDR block
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = ""
}

# Public subnet CIDR block
variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = ""
}

# Private subnet CIDR block
variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  default     = ""
}

# Availability Zone for the subnets
variable "availability_zone" {
  description = "The availability zone where resources will be created"
  default     = ""
}

# VPC name
variable "vpc_name" {
  description = "The name of the VPC"
  default     = ""
}

# Public subnet name
variable "public_subnet_name" {
  description = "The name of the public subnet"
  default     = "my-public-subnet"
}

# Private subnet name
variable "private_subnet_name" {
  description = "The name of the private subnet"
  default     = ""
}


variable "public_route_table" {
  description = "The name of public_route_table"
  default     = ""
}

variable "internet_gateway" {
  description = "The name of internet_gatewaye"
  default     = ""
}

variable "private_route_table" {
  description = "The name of private_route_table"
  default     = ""
}
variable "aws_eip_name"{
  default =""
}
variable "aws_nat_gateway_name"{
 default=""
}
>>>>>>> fd0bbb365307938f72d1c01f3bff50506609aa7a
