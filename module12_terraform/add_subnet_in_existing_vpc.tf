provider "aws" {
  region = "us-east-2"
  access_key = "AKIAYQNJSXUEC77OTSNJ"
  secret_key = "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"
}

resource "aws_vpc" "development-vpc"{
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "dev-subnet-1"{
  vpc_id = aws_vpc.development-vpc.id
  cidr_block = "10.0.10.0/24"
  availability_zone = "us-east-2a"
} 

# Fetch default VPC in us-east-2 (matches the provider region)
data "aws_vpc" "existing_vpc" {
  default = true 
}

resource "aws_subnet" "dev-subnet-2" {
  vpc_id = data.aws_vpc.existing_vpc.id
  cidr_block = "172.31.48.0/20"
  availability_zone = "use-east-2a"
}
