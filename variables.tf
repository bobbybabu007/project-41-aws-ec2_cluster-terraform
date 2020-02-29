# main creds for AWS connection
variable "aws_access_key_id" {
  description = "AWS access key"
  default     = ""
}

variable "aws_secret_access_key" {
  description = "AWS secret access key"
  default     = ""
}

variable "vpc_region" {
  description = "AWS region"
  default     = "us-east-2"
}

# VPC Config
variable "vpc_name" {
  description = "VPC with NAT, 1 Public Subnet, 2 Private Subnets"
  default     = "bluefire-VPC"
}

variable "vpc_cidr_block" {
  description = "IP addressing for Bluefire Network"
  default     = "10.0.0.0/16"
}

# Public Subnet Config
variable "subnet_public" {
  description = "Public subnet for bluefire-VPC"
  default     = "bluefire-sn-public"
}

variable "subnet_public_cidr" {
  description = "CIDR for bluefire-sn-public"
  default     = "10.0.1.0/24"
}

variable "subnet_public_az" {
  description = "Availability zone for bluefire-sn-public"
  default     = "us-east-2a"
}

# Private Subnet 1 Config
variable "subnet_private_01" {
  description = "Private subnet for bluefire-VPC"
  default     = "bluefire-sn-private-1"
}

variable "subnet_private_01_cidr" {
  description = "CIDR for optional internal subnet bluefire-sn-private-1"
  default     = "10.0.128.0/24"
}

variable "subnet_private_01_az" {
  description = "Region/AZ for bluefire-sn-private-1"
  default     = "us-east-2b"
}

# Private Subnet 2 Config
variable "subnet_private_02" {
  description = "Private subnet for bluefire-VPC"
  default     = "bluefire-sn-private-2"
}

variable "subnet_private_02_cidr" {
  description = "CIDR for internal subnet bluefire-sn-private-2"
  default     = "10.0.129.0/24"
}

variable "subnet_private_02_az" {
  description = "Region/AZ for bluefire-sn-private-2"
  default     = "us-east-2c"
}

# Nat Config
variable "ami_id_nat" {
  description = "AMI ID for nat instance (different for each region)"

  # This is the NAT AMI for default region: us-east-2
  default = "ami-0f9c61b5a562a16af"
}

variable "instance_type_nat" {
  description = "Instance size for NAT gateway"
  default     = "t2.micro"
}

# Security Groups
variable "sg_internal" {
  description = "Security group for private traffic"
  default     = "internal"
}

variable "sg_public" {
  description = "Security group for public traffic"
  default     = "public"
}
